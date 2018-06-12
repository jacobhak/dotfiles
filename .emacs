(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-directory-alist (\` ((".*" . "~/.emacs_backups"))))
 '(c-basic-offset 4)
 '(company-backends
   (quote
    (company-emacs-eclim company-flow company-tern company-robe company-bbdb company-css company-semantic company-clang company-xcode company-cmake company-capf
                         (company-dabbrev-code company-gtags company-etags company-keywords)
                         company-oddmuse company-files company-dabbrev)))
 '(company-eclim-auto-save nil)
 '(company-idle-delay 0.1)
 '(company-minimum-prefix-length 1)
 '(company-selection-wrap-around t)
 '(compilation-scroll-output (quote first-error))
 '(counsel-find-file-at-point t)
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "4f5bb895d88b6fe6a983e63429f154b8d939b4a8c581956493783b2515e22d6d" "12b4427ae6e0eef8b870b450e59e75122d5080016a9061c9696959e50d578057" "ad950f1b1bf65682e390f3547d479fd35d8c66cafa2b8aa28179d78122faa947" "3b24f986084001ae46aa29ca791d2bc7f005c5c939646d2b800143526ab4d323" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(debug-on-error nil)
 '(deft-use-filter-string-for-filename t)
 '(dired-dwim-target t)
 '(display-buffer-reuse-frames t)
 '(eclim-auto-save nil)
 '(eclim-eclipse-dirs
   (quote
    ("/Applications/Eclipse.app/Contents/Eclipse" "/usr/lib/eclipse" "/usr/local/lib/eclipse" "/usr/share/eclipse")))
 '(eclim-executable "/Applications/Eclipse.app/Contents/Eclipse/eclim")
 '(eclim-problems-refresh-delay 0.1)
 '(ediff-merge-split-window-function (quote split-window-vertically))
 '(editorconfig-mode t)
 '(electric-indent-mode t)
 '(electric-pair-mode t)
 '(exec-path
   (quote
    ("/usr/local/bin/" "/usr/bin/" "/bin/" "/usr/sbin/" "/sbin/" "/Users/jacobhakansson/Developer/DevTools/apache-maven-3.2.3/bin/" "/Users/jacobhakansson/.scripts/" "/Library/TeX/texbin/" "/Users/jacobhakansson/.rvm/bin/" "/Users/jacobhakansson/.nvm/versions/node/v6.0.0/bin" "/usr/local/Cellar/emacs/24.4/libexec/emacs/24.4/x86_64-apple-darwin13.4.0/")))
 '(flycheck-checkers
   (quote
    (ada-gnat asciidoc c/c++-clang c/c++-gcc c/c++-cppcheck cfengine chef-foodcritic coffee coffee-coffeelint coq css-csslint d-dmd emacs-lisp emacs-lisp-checkdoc erlang eruby-erubis fortran-gfortran go-gofmt go-golint go-vet go-build go-test go-errcheck go-unconvert groovy haml handlebars haskell-stack-ghc haskell-ghc haskell-hlint html-tidy jade javascript-eslint javascript-jshint javascript-gjslint javascript-jscs javascript-standard json-jsonlint json-python-json less lua-luacheck lua perl perl-perlcritic php php-phpmd php-phpcs processing puppet-parser puppet-lint python-flake8 python-pylint python-pycompile r-lintr racket rpm-rpmlint markdown-mdl rst-sphinx rst ruby-rubocop ruby-rubylint ruby ruby-jruby rust-cargo rust sass scala scala-scalastyle scss-lint scss sh-bash sh-posix-dash sh-posix-bash sh-zsh sh-shellcheck slim sql-sqlint tex-chktex tex-lacheck texinfo typescript-tslint verilog-verilator xml-xmlstarlet xml-xmllint yaml-jsyaml yaml-ruby flow)))
 '(flycheck-javascript-flow-args nil)
 '(global-auto-revert-mode t)
 '(global-company-mode t)
 '(global-eclim-mode t)
 '(global-whitespace-mode t)
 '(grep-find-ignored-files
   (quote
    ("*.min.js" ".#*" "*.hi" "*.o" "*~" "*.bin" "*.lbin" "*.so" "*.a" "*.ln" "*.blg" "*.bbl" "*.elc" "*.lof" "*.glo" "*.idx" "*.lot" "*.fmt" "*.tfm" "*.class" "*.fas" "*.lib" "*.mem" "*.x86f" "*.sparcf" "*.dfsl" "*.pfsl" "*.d64fsl" "*.p64fsl" "*.lx64fsl" "*.lx32fsl" "*.dx64fsl" "*.dx32fsl" "*.fx64fsl" "*.fx32fsl" "*.sx64fsl" "*.sx32fsl" "*.wx64fsl" "*.wx32fsl" "*.fasl" "*.ufsl" "*.fsl" "*.dxl" "*.lo" "*.la" "*.gmo" "*.mo" "*.toc" "*.aux" "*.cp" "*.fn" "*.ky" "*.pg" "*.tp" "*.vr" "*.cps" "*.fns" "*.kys" "*.pgs" "*.tps" "*.vrs" "*.pyc" "*.pyo")))
 '(helm-buffer-max-length 20)
 '(helm-full-frame nil)
 '(helm-reuse-last-window-split-state t)
 '(helm-split-window-in-side-p t)
 '(ido-enable-flex-matching t)
 '(ido-everywhere t)
 '(ido-mode (quote both) nil (ido))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(ivy-extra-directories nil)
 '(jabber-alert-presence-hooks nil)
 '(jiralib-url "http://mediasmithsnordics.atlassian.net:80/")
 '(js-curly-indent-offset 0)
 '(js-indent-level 2)
 '(js2-basic-offset 2)
 '(js2-highlight-level 3)
 '(js2-include-node-externs t)
 '(js2-mode-show-parse-errors nil)
 '(js2-mode-show-strict-warnings nil)
 '(magit-diff-use-overlays nil)
 '(magit-use-overlays nil)
 '(markdown-header-scaling t)
 '(markdown-header-scaling-values (quote (2.1 1.7 1.4 1.1 1.0 1.0)))
 '(mocha-command "npm test")
 '(mocha-options "")
 '(mocha-which-node "")
 '(ns-right-command-modifier (quote super))
 '(ns-use-native-fullscreen t)
 '(nxml-child-indent 4)
 '(org-adapt-indentation nil)
 '(org-agenda-clockreport-parameter-plist
   (quote
    (:link t :maxlevel 5 :step day :compact t :fileskip0 t :emphasize nil :formatter my-org-clocktable-notodo)))
 '(org-agenda-prefix-format
   (quote
    ((agenda . " %i %-12:c%?-12t% s")
     (timeline . "  % s")
     (todo . " %b")
     (tags . " %i %-12:c")
     (search . " %i %-12:c"))))
 '(org-agenda-sticky t)
 '(org-babel-load-languages (quote ((emacs-lisp . t) (shell . t) (js . t))))
 '(org-capture-templates
   (quote
    (("x" "Next" entry
      (file+headline "~/Dropbox/Mediasmiths/org/gtd.org" "Next")
      "* TODO %?")
     ("j" "Copy jira issue" entry
      (file+headline "~/Dropbox/Mediasmiths/org/gtd.org" "Inbox")
      "* TODO %i 
%a")
     ("i" "Idea" entry
      (file+headline "~/Dropbox/Mediasmiths/org/gtd.org" "Ideas")
      "* %?
%U")
     ("t" "Todo" entry
      (file+headline "~/Dropbox/Mediasmiths/org/gtd.org" "Tasks")
      "* TODO %?
  %i
")
     ("m" "Time tracking")
     ("mi" "Internal")
     ("mii" "Internal IT" entry
      (file+olp "~/Dropbox/Mediasmiths/org/gtd.org" "Time" "Internal" "Internal IT")
      "* %?" :clock-in t :clock-keep t))))
 '(org-clock-history-length 10)
 '(org-clock-into-drawer t)
 '(org-completion-use-ido t)
 '(org-default-notes-file "~/Documents/org/new_mobile.org")
 '(org-directory "~/Dropbox/Mediasmiths/org")
 '(org-export-html-postamble t)
 '(org-export-html-postamble-format
   (quote
    (("en" "<p class=\"author\">Author: %a (%e)</p><p class=\"date\">Date: %d</p>"))))
 '(org-export-html-style
   "<link rel=\"stylesheet\" type=\"text/css\" href=\"//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css\" /><meta name=\"viewport\" content=\"initial-scale = 1.0,maximum-scale = 1.0\" />")
 '(org-hide-leading-stars t)
 '(org-mobile-directory "~/Dropbox/Apps/MobileOrg" t)
 '(org-mobile-files
   (quote
    (org-agenda-files "gtd.org" "gtd.org_archive" "journal.org")))
 '(org-mobile-inbox-for-pull "~/Dropbox/Mediasmiths/org/inbox.org" t)
 '(org-refile-targets
   (quote
    ((org-agenda-files :tag . "")
     ("~/Dropbox/Mediasmiths/org/gtd.org" :maxlevel . 3))))
 '(org-time-clocksum-use-effort-durations t)
 '(package-selected-packages
   (quote
    (counsel ivy json-mode deft dired-quick-sort magithub key-chord pandoc-mode company tern lsp-javascript-typescript company-lsp lsp-mode magit yasnippet yaml-mode whole-line-or-region web-mode w3m use-package treemacs-projectile terraform-mode tao-theme solarized-theme smooth-scrolling smex smart-mode-line skewer-mode robe rjsx-mode restclient paredit ox-reveal outshine org-jira nvm neotree navi-mode mocha markdown-mode js2-closure jabber inf-clojure import-js iedit ido-ubiquitous helm-projectile helm-google haskell-mode groovy-mode go-mode git-rebase-mode git-commit-mode flycheck-flow flatui-theme exec-path-from-shell emmet-mode emacs-eclim editorconfig dumb-jump dash-at-point company-tern company-flow auto-indent-mode ample-theme)))
 '(projectile-enable-caching t)
 '(projectile-mode-line " Proj")
 '(rm-blacklist (quote (" MRev" " ,")))
 '(safe-local-variable-values
   (quote
    ((cursor-type quote bar)
     (js2-basic-offset . 4)
     (js2-basic-offset . 2)
     (company-mode))))
 '(scroll-bar-mode nil)
 '(send-mail-function (quote mailclient-send-it))
 '(sgml-basic-offset 2)
 '(show-paren-mode t)
 '(sml/mode-width (quote full))
 '(sml/no-confirm-load-theme t)
 '(sml/shorten-modes t)
 '(sml/theme (quote respectful))
 '(split-height-threshold 1000)
 '(split-width-threshold 1000)
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(user-mail-address "jacobhakansson@gmail.com")
 '(wdired-allow-to-change-permissions (quote advanced))
 '(whitespace-style
   (quote
    (face tabs space-after-tab space-before-tab tab-mark)))
 '(whole-line-or-region-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(sml/client ((t nil)))
 '(sml/git ((t (:foreground "#d62f0f"))))
 '(variable-pitch ((t (:height 140 :family "Helvetica Neue")))))

(setenv "DOCKER_HOST" "tcp://192.168.99.100:2376")
(setenv "DOCKER_MACHINE_NAME" "default")
(setenv "DOCKER_TLS_VERIFY" "1")
(setenv "DOCKER_CERT_PATH" "/Users/jacobhakansson/.docker/machine/machines/default")
(setenv "JAVA_HOME" "/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home")
(setenv "MULE_HOME" "/Users/jacobhakansson/Developer/DevTools/mmc-distribution-mule-console-bundle-3.5.2-HF1/mule-enterprise-3.5.2")
;;(setenv "PATH" "/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/jacobhakansson/Developer/DevTools/apache-maven-3.2.3/bin:/Users/jacobhakansson/.scripts:/Library/TeX/texbin:/Users/jacobhakansson/.nvm/versions/node/v6.0.0/bin:")
(setenv "NODE_PATH" "/usr/local/lib/node_modules/")

(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package smart-mode-line
  :ensure t
  :init
  (setq sml/no-confirm-load-theme t)
  (sml/setup))

(load-file "./.emacs.d/simple-red-theme-dark.el")

;; (use-package tao-theme
;;              :ensure t
;;              :init
;;              (load-theme 'tao-yang t)
;;              (set-face-italic 'font-lock-string-face nil)
;;              (set-face-underline 'font-lock-type-face nil)
;;              :config
;;              (set-face-attribute 'fringe nil
;;                                  :foreground (face-foreground 'default)
;;                                  :background (face-background 'default)))


(global-set-key (kbd "C-c p") 'compile)
(defalias 'yes-or-no-p 'y-or-n-p)

;; CamelCase!!
(add-hook 'prog-mode-hook 'subword-mode)


;; Check if stable in a while
;;(use-package lsp-mode :ensure t)
;;(use-package company-lsp :ensure t :init (push 'company-lsp company-backends))
;; (use-package lsp-javascript-typescript
;;   :ensure t
;;   :init
;;   (add-hook 'rjsx-mode-hook #'lsp-javascript-typescript-enable))

(use-package paredit :ensure t)
(use-package tern :ensure t)
(autoload 'tern-mode "tern.el" nil t)
(use-package smooth-scrolling :ensure t)
(use-package magit :ensure t)
(use-package magithub
  :after magit
  :ensure t
  :config
  (magithub-feature-autoinject t))
(use-package flycheck-flow :ensure t)
(global-set-key (kbd "s-m") 'magit-status)
(use-package s :ensure t) ;; dependency of dumb-jump
(use-package dumb-jump
  :bind (("M-g o" . dumb-jump-go-other-window)
         ("s-." . dumb-jump-go)
         ("s->" . dumb-jump-back)
         ("M-g x" . dumb-jump-go-prefer-external)
         ("M-g z" . dumb-jump-go-prefer-external-other-window))
  :config (setq dumb-jump-selector 'helm)
  :ensure t)
(dumb-jump-mode)
;; helm
(use-package helm :ensure t)
;; (helm-mode 1)
;; (global-set-key (kbd "M-x") 'helm-M-x)
;; (setq helm-M-x-fuzzy-match t)
;; (global-set-key (kbd "M-y") 'helm-show-kill-ring)
;; (global-set-key (kbd "s-g") 'helm-google-suggest)
;; (global-set-key (kbd "C-x b") 'helm-mini)
;; (global-set-key (kbd "C-x C-f") 'helm-find-files)
;; (global-set-key (kbd "s-p") 'helm-projectile)
;; (global-set-key (kbd "s-P") 'helm-projectile-switch-project)
;; (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to do persistent action
;; (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
;; (define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(advice-add 'helm-ff-filter-candidate-one-by-one
            :around (lambda (fcn file)
                      (unless (or (string-match
                                   "\\(?:/\\|\\`\\)\\.\\{1,2\\}\\'" file)
                                  (string-match "\\.DS_Store" file))
                        (funcall fcn file))))

(defadvice helm-display-mode-line (after undisplay-header activate)
  (setq header-line-format nil)
  (set-face-attribute 'helm-source-header nil :height 0.1))

;; proj
(use-package projectile :ensure t)
(use-package helm-projectile :ensure t)
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)
(setq projectile-switch-project-action 'helm-projectile)

(defun helm-grep-with-thing-at-point ()
  (interactive)
  (helm-grep-git-1 default-directory t nil (thing-at-point 'symbol)))
(global-set-key (kbd "s-r") 'helm-grep-with-thing-at-point)


(setq kill-whole-line t)
(defadvice yank (after indent-region activate)
  (indent-region (region-beginning) (region-end) nil))


(defun bind-ido-keys ()
  "Keybindings for ido mode."
  (define-key ido-completion-map (kbd "C-n") 'ido-next-match)
  (define-key ido-completion-map (kbd "C-p")   'ido-prev-match))

(add-hook 'ido-setup-hook #'bind-ido-keys)

(use-package exec-path-from-shell :ensure t)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(use-package yasnippet :ensure t)
(yas-global-mode 1)
;; Remove Yasnippet's default tab key binding
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
;; Set Yasnippet's key binding to shift+tab
(define-key yas-minor-mode-map (kbd "<C-return>") 'yas-expand)

(use-package company-flow :ensure t)
;; Company
(use-package company :ensure t)
;;(add-to-list 'company-backends 'company-tern)
(eval-after-load 'company
  '(progn
	 (add-to-list 'company-backends 'company-robe)
	 (add-to-list 'company-backends 'company-flow)
	 (add-to-list 'company-backends 'company-tern)
	 (global-company-mode t)))

(defun company-complete-common-or-cycle ()
  "Insert the common part of all candidates, or select the next one."
  (interactive)
  (when (company-manual-begin)
    (let ((tick (buffer-chars-modified-tick)))
      (call-interactively 'company-complete-common)
      (when (eq tick (buffer-chars-modified-tick))
        (let ((company-selection-wrap-around t))
          (call-interactively 'company-select-next))))))

(eval-after-load 'company
  '(progn
     (define-key company-active-map (kbd "TAB") 'company-complete-common-or-cycle)
     (define-key company-active-map [tab] 'company-complete-common-or-cycle)))
 
(add-hook 'java-mode-hook (lambda ()
							(setq c-basic-offset 4
								  tab-width 4
								  indent-tabs-mode nil)))


;; Move more quickly
(global-set-key (kbd "C-S-n")
                (lambda ()
                  (interactive)
                  (forward-line 5)))

(global-set-key (kbd "C-S-p")
                (lambda ()
                  (interactive)
                  (forward-line -5)))

(defun copy-line (arg)
  "Copy lines (as many as prefix argument) in the kill ring"
  (interactive "p")
  (kill-ring-save (line-beginning-position)
		  (line-beginning-position (+ 1 arg)))
  (message "%d line%s copied" arg (if (= 1 arg) "" "s")))

(use-package key-chord :ensure t :init (key-chord-mode 1))

(defun delete-tern-process ()
  (interactive)
  (delete-process "Tern"))

(use-package flycheck
  :ensure t
  :diminish flycheck-mode
  :config
  (global-flycheck-mode))

(defun js-hook ()
  (tern-mode t)
  (flycheck-mode t)
  (key-chord-define rjsx-mode-map ";;" "\C-e;"))

(add-to-list 'auto-mode-alist '("\\.js\\'" . rjsx-mode))
(add-hook 'rjsx-mode-hook 'js-hook)
(add-hook 'js-mode-hook 'js-hook)

;; AUTO-INDENT
(setq auto-indent-mode-untabify-on-yank-or-paste nil)

 
(global-set-key (kbd "<C-up>") 'shrink-window)
(global-set-key (kbd "<C-down>") 'enlarge-window)
(global-set-key (kbd "<C-left>") 'shrink-window-horizontally)
(global-set-key (kbd "<C-right>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-p") 'paredit-forward-slurp-sexp)

(set-variable 'magit-emacsclient-executable
			  "/usr/local/Cellar/emacs/24.4/bin/emacsclient")
(global-set-key (kbd "C-c m") 'comment-or-uncomment-region)

(defun forward-window () (interactive) (other-window 1))
(defun backward-window () (interactive) (other-window -1))
(global-set-key (kbd "s-{") 'backward-window)
(global-set-key (kbd "s-}") 'forward-window)
(global-set-key (kbd "s-§") 'other-frame)

 
;; --------ORG MODE------------------
(defun org-hook ()
  (setq word-wrap 1)
  (setq cursor-type 'bar)
  (company-mode -1))

(add-hook 'org-mode-hook 'org-hook)

(defun org-archive-done-tasks ()
  (interactive)
  (org-map-entries
   (lambda ()
     (org-archive-subtree)
     (setq org-map-continue-from (outline-previous-heading)))
   "/DONE" 'file))

(defun org-select-clock-in ()
  (interactive)
  (org-clock-in '(4)))
(defun org-show-work-list ()
  (interactive)
  (org-agenda "" "w"))
(setq org-agenda-files (quote ("~/Dropbox/Mediasmiths/org/gtd.org" "~/.jiraorg/TVFOUR.org")))

(defun org-new-today ()
  (interactive)
  (insert "* ")
  (org-date-from-calendar)
  (insert " [/]\n- [ ] "))

(global-set-key (kbd "C-c C-x C-o") 'org-clock-out)
(global-set-key (kbd "C-c C-x C-x") 'org-clock-in-last)
(global-set-key (kbd "C-c C-x C-i") 'org-clock-in)
(global-set-key (kbd "C-c C-x g") 'org-clock-goto)
(global-set-key (kbd "C-c C-x t") 'org-insert-current-task-id)
(global-set-key (kbd "C-c C-j") 'capture-jira-copy-command)
(global-set-key (kbd "s-j") 'capture-jira-copy-command)
(global-set-key (kbd "s-l") 'org-show-work-list)
(global-set-key (kbd "s-i") 'org-select-clock-in)
(global-set-key (kbd "s-k") 'org-capture)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c r") 'org-archive-done-tasks)

;;(global-set-key (kbd "s-g") 'org-clock-goto)

;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "~/Documents/org/inbox.org")
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")
 
(setq org-default-notes-file "~/Documents/org/inbox.org")
(define-key global-map "\C-cc" 'org-capture)
(setq org-agenda-prefix-format "")
(setq org-agenda-window-setup 'current-window)
(setq org-agenda-only-exact-dates t)
(setq org-agenda-custom-commands
      '(("w" "Agenda and Office-related tasks"
         ((agenda "" ((org-agenda-span 1) ))
          (tags-todo "-{.*}-DEADLINE=<\"<today>\"")))
        ("4" "TV4"
         ((tags-todo "+inprogress|+codereview|+qa")))
        ("h" "Home"
         ((tags-todo "+home")))))

;; Preserve top level headings when archiving in org.
(defadvice org-archive-subtree (around my-org-archive-subtree activate)
  (let ((org-archive-location
         (if (save-excursion (org-back-to-heading)
                             (> (org-outline-level) 1))
             (concat (car (split-string org-archive-location "::"))
                     "::* "
                     (car (org-get-outline-path)))
           org-archive-location)))
    ad-do-it))

;; remove emsp in clocktable
(defun my-org-clocktable-indent-string (level)
  (if (= level 1)
      ""
    (let ((str "^"))
      (while (> level 2)
        (setq level (1- level)
              str (concat str "--")))
      (concat str "-> "))))

(advice-add 'org-clocktable-indent-string :override #'my-org-clocktable-indent-string)

(defun my-org-clocktable-notodo (ipos tables params)
  (cl-loop for tbl in tables
           for entries = (nth 2 tbl)
           do (cl-loop for entry in entries
                       for headline = (nth 1 entry)
                       do (setq headline (replace-regexp-in-string "TODO \\|DONE \\|STATIC " "" headline))
                       do (setcar (nthcdr 1 entry) headline)))
  (org-clocktable-write-default ipos tables params))

(fset 'org-insert-current-task-id
	  [?\C-c ?\C-x ?g ?\M-f ?\C-f ?\C-  ?\C-f ?\M-f ?\M-f ?\M-w ?\C-x ?b return ?\C-y ?> backspace ?:])

(defun insert-current-branch-name ()
  (interactive)
  (shell-command "git rev-parse --abbrev-ref HEAD" t)
  (move-end-of-line 1)
  (delete-char 1))

(defun magit-commit-and-insert-task ()
  (interactive)
  (magit-commit)
  (execute-kbd-macro 'org-insert-current-task-id))

(defun capture-jira-copy-command ()
  (interactive)
  (org-capture nil "j")
  (move-end-of-line 1)
  (insert " ")
  (yank)
  (forward-line -1)
  (move-end-of-line 1)
  (delete-char 1)
  (insert " "))

(defun export-agenda-clocktables ()
  (interactive)
  (let ((export-dir "~/Dropbox/Mediasmiths/org/clock-export/")
		(export-file-name "clock.txt")
		export-file-path end date-to-write)
	(setq export-file-path (concat export-dir export-file-name))
	(org-agenda-write export-file-path t nil "*Org Agenda(a)*")
	(condition-case nil
		(while t
		  (find-file export-file-path)
		  (search-forward "Daily report:")
		  (move-end-of-line 1)
		  (subword-backward)
		  (backward-char)
		  (setq end (point))
		  (backward-word 3)
		  (setq date-to-write (buffer-substring end (point)))
		  (print date-to-write)
		  (forward-line 1)
		  (org-table-export (concat export-dir "csv/" date-to-write ".csv") "orgtbl-to-csv"))
	  (error nil))
	(message (concat "Exported clock tables to " export-dir))))

(defun org-custom-document-settings ()
  (interactive)
  (toggle-truncate-lines)
  (toggle-word-wrap))

(defun org-new-document ()
  (interactive)
  (let ((new-buffer-name (generate-new-buffer-name "document.org")))
	(generate-new-buffer new-buffer-name)
	(switch-to-buffer new-buffer-name))
  (org-mode)
  (org-export-insert-default-template 'default)
  (org-custom-document-settings))

(defun show-todo-list ()
  (interactive)
  (switch-to-buffer "*Org Agenda(t)*"))

(defun find-marked-file ()
  (interactive)
  (find-file (buffer-substring (point) (mark))))

(defun slick-cut (beg end)
  (interactive
   (if mark-active
       (list (region-beginning) (region-end))
     (list (line-beginning-position) (line-beginning-position 2)))))

(advice-add 'kill-region :before #'slick-cut)

(defun slick-copy (beg end)
  (interactive
   (if mark-active
       (list (region-beginning) (region-end))
     (message "Copied line")
     (list (line-beginning-position) (line-beginning-position 2)))))

(advice-add 'kill-ring-save :before #'slick-copy)

(defun weekly-report ()
  (org-agenda-list)
  (call-interactively 'org-agenda-clockreport-mode))

(defun fetch-my-jira-issues ()
  (interactive)
  (start-process "fetch-jira" "*fetch-jira-output*" "node" "/Users/jacobhakansson/Developer/jira-org/fetch.js"))
  
(fset 'notToJson
   [?\M-% ?, ?  return ?\" ?, ?  return ?! ?\C-a ?\M-% ?= return ?\" ?: ?  return ?! ?\C-e ?\C-b ?| backspace ?\" ?\C-d ?\C-a ?\C-f ?\" ?\M-% ?\" ?\[ return ?\[ return ?!])

;; Open stuff at start up
(find-file "~/Documents/scratch.org")
(find-file "~/Dropbox/Mediasmiths/org/gtd.org")

(defun indent-sexp-or-region ()
  (interactive)
  (if (not (use-region-p))
      (indent-sexp)
    (indent-for-tab-command)))

(global-set-key (kbd "C-S-i") 'indent-sexp-or-region)

(defun indent-sexp2 ()
  (interactive)
  (save-excursion
    (paredit-backward-up)
    (set-mark (point))
    (forward-list)
    (indent-region (region-beginning) (region-end))))

(defun capitalize-without-move ()
  "Capitalize without moving the cursor."
  (interactive)
  (save-excursion
    (capitalize-word 1)))

(global-set-key (kbd "M-c") 'capitalize-without-move)

(defun lowercase-without-move ()
  "Lowercase without moving the cursor."
  (interactive)
  (save-excursion
    (downcase-word 1)))

(global-set-key (kbd "M-l") 'lowercase-without-move)

(flycheck-add-mode 'javascript-eslint 'rjsx-mode)
;;(nvm-use "v6.2")
;;(exec-path-from-shell-copy-env "PATH")

(use-package paredit :ensure t)

(defun iedit-dwim ()
  (interactive)
  (if (not (use-region-p))
      (iedit-mode)
    (save-excursion
      (if iedit-mode
          (iedit-done)
        (iedit-start (current-word) (region-beginning) (region-end))))))
(global-set-key (kbd "C-;") 'iedit-dwim)

(use-package treemacs
  :ensure t
  :defer t
  :config
  (progn
    (setq treemacs-follow-after-init          t
          treemacs-width                      35
          treemacs-indentation                2
          treemacs-git-integration            t
          treemacs-collapse-dirs              3
          treemacs-silent-refresh             nil
          treemacs-change-root-without-asking nil
          treemacs-show-hidden-files          t
          treemacs-never-persist              nil
          treemacs-is-never-other-window      nil
          treemacs-goto-tag-strategy          'refetch-index)

    (treemacs-filewatch-mode t))
  :bind
  (:map global-map
        ("s-t"       . treemacs-toggle)
        ("M-0"       . treemacs-select-window)
        ("C-c 1"     . treemacs-delete-other-windows)))

(use-package treemacs-projectile
  :defer t
  :ensure t
  :config
  (setq treemacs-header-function #'treemacs-projectile-create-header))

(use-package import-js :ensure t)

(setq kill-buffer-query-functions
      (remq 'process-kill-buffer-query-function
            kill-buffer-query-functions))

(defun markdown-hook ()
  "Set wordwrap in md."
  (setq word-wrap 1)
  (setq cursor-type 'bar)
  (variable-pitch-mode 1)
  (company-mode -1))

(add-hook 'markdown-mode-hook 'markdown-hook)

(use-package pandoc-mode :ensure t)

(use-package dired-quick-sort
  :ensure t
  :config
  (dired-quick-sort-setup))
(setq insert-directory-program "/usr/local/bin/gls")

(use-package deft
  :ensure t
  :bind ("s-d" . deft)
  :commands (deft)
  :config (setq deft-directory "~/Dropbox/notes"
                deft-extensions '("md" "org")
                deft-default-extension "org"))

(put 'narrow-to-region 'disabled nil)
;; mu4e
;;(add-to-list 'load-path (expand-file-name "/usr/local/Cellar/mu/1.0/share/emacs/site-lisp/mu/mu4e"))
;;(require 'mu4e)
;;(setq mu4e-maildir (expand-file-name "~/Maildir"))
;;(setq mu4e-get-mail-command "/usr/local/bin/mbsync -a")

(use-package ivy
  :ensure t
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t))

(use-package counsel
  :ensure t
  :config
  (counsel-mode 1))

(setq exec-path (append exec-path '("/Users/jacobhakansson/.nvm/versions/node/v6.0.0/bin")))
(setenv "PATH" (concat (getenv "PATH") ":/Users/jacobhakansson/.nvm/versions/node/v6.0.0/bin"))
;;; .emacs ends here 
