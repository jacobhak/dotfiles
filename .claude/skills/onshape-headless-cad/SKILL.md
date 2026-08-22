---
name: onshape-headless-cad
description: Drive Onshape's Part Studio directly via its REST API (curl/Python, HTTP Basic auth) to build or edit parametric CAD from an agent, with no FeatureScript custom feature and no local CAD kernel. Use when a project wants a 3D-printed enclosure, bracket, or other mechanical part designed in Onshape and the work should be scriptable/reproducible rather than done by hand in the GUI. Covers auth, the raw feature-JSON schema, default-plane resolution, render-based verification, and known geometry gotchas.
---

# Driving Onshape headlessly from an agent

Onshape has no local kernel to install — everything goes through
`https://cad.onshape.com/api/v6/...` over HTTP Basic auth with an API
key/secret pair (generate at dev-portal.onshape.com; confirm with the user
before they hand one over, and never commit it — source it from an
untracked env file). This is real, persisted, parametric geometry landing in
the actual feature tree, not an imported dumb blob — verified by posting a
feature and immediately reading back mass properties / a render.

Core loop: `POST` a JSON feature definition to
`partstudios/d/{did}/w/{wid}/e/{eid}/features`, one feature per sketch/
extrude/etc., in the order they should appear in the tree. No FeatureScript
authoring is required — Onshape's own internal feature representation
(`btType` values like `BTMSketch-151`, `BTMFeature-134` for extrude, and so
on — informally "BT types") is accepted directly by the API. The easiest way
to learn the shape of a feature you haven't built via the API before: create
one manually in the Onshape UI, then `GET .../features` and read back what
it produced.

## Gotchas actually hit

- **Default planes aren't referenceable by name.** `deterministicIds:
  ["Top"]` silently resolves to nothing — it doesn't error, it just doesn't
  select the plane. Resolve the real internal ID first by hitting the
  `featurescript` eval endpoint with a query like
  `qCreatedBy(makeId("Top"), EntityType.FACE)`; the result gives you the
  actual deterministic ID (e.g. `JDC`) to use in subsequent feature JSON.
- **Coincident faces between two bodies can silently fuse them into one
  part**, even with zero volume overlap — e.g. a boss's bottom face sitting
  exactly flush with a post's top face at the same Z. If two features are
  meant to stay separate (removable) parts, leave a deliberate small air gap
  (~1mm) between their mating faces rather than making them touch exactly.
- **A degenerate all-zero bounding box from the API is not proof something
  broke.** It can come back that way transiently after an in-place parameter
  edit; re-query mass properties / a fresh bounding box before concluding the
  geometry is gone.
- **Features can be edited in place**, not just deleted and recreated: `POST
  .../features/featureid/{id}` with an updated parameter set. Prefer this
  over delete-and-rebuild when only a dimension changed — it's cleaner and
  doesn't risk breaking downstream features that reference the edited one by
  ID.
- **Always re-fetch the authoritative feature list (`GET .../features`)
  before reasoning about a design that's been edited over many turns** —
  don't trust an in-context mental model of the tree once more than a few
  edits have happened; pull ground truth.

## Never guess a real-world dimension

Every dimension that describes a physical part the agent doesn't have in
hand — a bought component's outline, a mounting-hole position, a connector's
keep-out, a display's viewable area — is a fact, not a design choice. Get it
from an authoritative source before it goes into a named constant:

- The user's own direct measurement (calipers on the physical part) beats
  everything else, including the part's own web listing — generic/marketing
  copy and independent search results for "the same" component regularly
  disagree with each other and with the actual unit on the bench.
- A manufacturer datasheet or dimensioned drawing is the next best source.
  Confirm it's for the *exact* SKU in hand, not a same-looking part from a
  different vendor — clone modules sold under one nominal spec (e.g. "0.96in
  SSD1306 OLED") vary in PCB outline, glass size, and mounting-hole layout
  between sellers.
- If neither is available in the conversation or the repo, **stop and ask
  the user for a measurement or a link to the exact product/datasheet**
  rather than filling the gap with a plausible-sounding number, a value
  scraped from a similar-but-not-confirmed-identical part, or an inference
  from an unrelated file in the repo. This applies even under time pressure
  or mid-task momentum — a wrong physical dimension fails silently (the
  model looks fine, renders fine, passes every check) and only surfaces once
  printed.
- Web search / fetch results are a starting point for *finding* a source
  (a datasheet PDF, a product page), never a substitute for reading the
  actual number off it and citing where it came from. If a search summary
  and a user measurement disagree, the measurement wins — say so explicitly
  rather than quietly picking one.
- This is different from *design* choices the agent can make and state
  plainly (wall thickness, air gaps, chamfer size, derived-constant
  refactors) — those are fair game to decide and explain. The line is
  whether the number describes something that already physically exists
  outside the model.

## Verification discipline: render it, don't just measure it

Mass properties (volume) and bounding boxes only catch "did roughly the
right amount of material end up somewhere" — they cannot catch a boss built
in the wrong place, a missing hole, or a counterbore that's secretly tapered
instead of flat-bottomed. A volume or extent matching hand-calculated math
is necessary but not sufficient.

Before declaring a geometry change correct, pull real renders via the
`shadedviews` API (per-part isometric + a straight top-down orthographic)
and actually look:

- Isometric alone can hide features behind tall walls (perspective
  occlusion) — cross-check with a top-down view before concluding something
  is missing.
- For anything with rotational symmetry expected (a hole/window meant to be
  concentric, a set of screws meant to be symmetric), eyeballing a render is
  error-prone in either direction — measure pixel offsets or query the
  actual entity geometry via `featurescript` eval rather than trusting a
  glance.
- For a feature meant to be a specific solid-of-revolution shape (flat-bottom
  counterbore vs. a taper/countersink), verify the volume against the exact
  formula for the *intended* shape (cylinder vs. cone frustum) — a taper and
  a straight bore can produce suspiciously close volumes at small sizes, so
  volume-only checks can pass on the wrong shape.

## Source-controlling the result

Treat the Onshape cloud document as a build target, not the source of
truth, the same way a compiled binary isn't the source of truth for code:
commit the script that replays the feature-creation calls (parameterized by
named real-world dimensions, not opaque literals) as the actual source, and
commit an exported interchange file (STEP) as the generated build artifact.
Re-running the script against a fresh Part Studio should reproduce the
design; the STEP file is what downstream tools (slicers, other CAD) consume
without needing Onshape API access at all.
