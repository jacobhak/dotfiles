(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-directory-alist (\` ((".*" . "~/.emacs_backups"))))
 '(c-basic-offset 4)
 '(company-eclim-auto-save nil)
 '(company-idle-delay 0.1)
 '(company-minimum-prefix-length 1)
 '(company-selection-wrap-around t)
 '(compilation-scroll-output (quote first-error))
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "4f5bb895d88b6fe6a983e63429f154b8d939b4a8c581956493783b2515e22d6d" "12b4427ae6e0eef8b870b450e59e75122d5080016a9061c9696959e50d578057" "ad950f1b1bf65682e390f3547d479fd35d8c66cafa2b8aa28179d78122faa947" "3b24f986084001ae46aa29ca791d2bc7f005c5c939646d2b800143526ab4d323" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(debug-on-error nil)
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
 '(global-auto-revert-mode t)
 '(global-company-mode t)
 '(global-eclim-mode t)
 '(helm-full-frame nil)
 '(helm-reuse-last-window-split-state t)
 '(helm-split-window-in-side-p t)
 '(ido-enable-flex-matching t)
 '(ido-everywhere t)
 '(ido-mode (quote both) nil (ido))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(jabber-alert-presence-hooks nil)
 '(jiralib-url "http://mediasmithsnordics.atlassian.net:80/")
 '(js-curly-indent-offset 0)
 '(js-indent-level 2)
 '(js2-basic-offset 2)
 '(js2-highlight-level 3)
 '(js2-include-node-externs t)
 '(magit-diff-use-overlays nil)
 '(magit-use-overlays nil)
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
 '(org-agenda-custom-commands
   (quote
    (("o" "Non TV4"
      ((alltodo ""
                ((org-agenda-tag-filter-preset
                  (quote
                   ("-TV4" "-later"))))))
      nil)
     ("4" "TV4"
      ((alltodo ""
                ((org-agenda-overriding-header "")
                 (org-agenda-prefix-format "")
                 (org-agenda-tag-filter-preset
                  (quote
                   ("TV4" "@all"))))))
      nil))))
 '(org-agenda-files (quote ("~/Dropbox/Mediasmiths/org/gtd.org")))
 '(org-agenda-prefix-format
   (quote
    ((agenda . " %i %-12:c%?-12t% s")
     (timeline . "  % s")
     (todo . " %b")
     (tags . " %i %-12:c")
     (search . " %i %-12:c"))))
 '(org-agenda-sticky t)
 '(org-capture-templates
   (quote
    (("j" "Copy jira issue" entry
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
"))))
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
 '(org-todo-keywords (quote ((sequence "TODO" "|" "WAITING" "|" "DONE"))))
 '(projectile-enable-caching t)
 '(projectile-mode-line " Proj")
 '(rm-blacklist (quote (" MRev" " ,")))
 '(safe-local-variable-values (quote ((company-mode))))
 '(scroll-bar-mode nil)
 '(send-mail-function (quote mailclient-send-it))
 '(sgml-basic-offset 2)
 '(show-paren-mode t)
 '(sml/mode-width (quote full))
 '(sml/shorten-modes t)
 '(split-height-threshold 1000)
 '(split-width-threshold 1000)
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(user-mail-address "jacobhakansson@gmail.com")
 '(whole-line-or-region-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setenv "DOCKER_HOST" "tcp://192.168.99.100:2376")
(setenv "DOCKER_MACHINE_NAME" "default")
(setenv "DOCKER_TLS_VERIFY" "1")
(setenv "DOCKER_CERT_PATH" "/Users/jacobhakansson/.docker/machine/machines/default")
(setenv "JAVA_HOME" "/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home")
(setenv "MULE_HOME" "/Users/jacobhakansson/Developer/DevTools/mmc-distribution-mule-console-bundle-3.5.2-HF1/mule-enterprise-3.5.2")
(setenv "PATH" "/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/jacobhakansson/Developer/DevTools/apache-maven-3.2.3/bin:/Users/jacobhakansson/.scripts:/Library/TeX/texbin:/Users/jacobhakansson/.nvm/versions/node/v6.0.0/bin")
(setenv "NODE_PATH" "/usr/local/lib/node_modules/")

(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(use-package tao-theme
             :ensure t
             :init
             (load-theme 'tao-yang t)
             (set-face-italic 'font-lock-string-face nil)
             (set-face-underline 'font-lock-type-face nil)
             :config
             (set-face-attribute 'fringe nil
                                 :foreground (face-foreground 'default)
                                 :background (face-background 'default)))

(global-set-key (kbd "C-c p") 'compile)
(defalias 'yes-or-no-p 'y-or-n-p)

(use-package paredit :ensure t)
(use-package smooth-scrolling :ensure t)
(use-package magit :ensure t)
(global-set-key (kbd "s-m") 'magit-status)

;; helm
(use-package helm :ensure t)
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)
(setq helm-M-x-fuzzy-match t)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "s-g") 'helm-google-suggest)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "s-p") 'helm-projectile)
(global-set-key (kbd "s-P") 'helm-projectile-switch-project)
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to do persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

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
(global-set-key (kbd "s-r") 'rgrep)

(setq kill-whole-line t)
(defadvice yank (after indent-region activate)
  (indent-region (region-beginning) (region-end) nil))

(sml/setup)

(defun bind-ido-keys ()
  "Keybindings for ido mode."
  (define-key ido-completion-map (kbd "C-n") 'ido-next-match)
  (define-key ido-completion-map (kbd "C-p")   'ido-prev-match))

(add-hook 'ido-setup-hook #'bind-ido-keys)


(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(use-package yasnippet :ensure t)
(yas-global-mode 1)
;; Remove Yasnippet's default tab key binding
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
;; Set Yasnippet's key binding to shift+tab
(define-key yas-minor-mode-map (kbd "<C-return>") 'yas-expand)

;; Company
(use-package company :ensure t)
;;(add-to-list 'company-backends 'company-tern)
(eval-after-load 'company
  '(progn
	 (add-to-list 'company-backends 'company-robe)
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
 
;; ECLIM
(require 'eclim)
(global-eclim-mode)
(setq help-at-pt-display-when-idle t)
(setq help-at-pt-timer-delay 0.1)
(help-at-pt-set-timer)
(require 'company-emacs-eclim)
(company-emacs-eclim-setup)

(add-hook 'java-mode-hook (lambda ()
							(setq c-basic-offset 4
								  tab-width 4
								  indent-tabs-mode nil)))


;; Move more quickly
(global-set-key (kbd "C-S-n")
                (lambda ()
                  (interactive)
                  (ignore-errors (next-line 5))))

(global-set-key (kbd "C-S-p")
                (lambda ()
                  (interactive)
                  (ignore-errors (previous-line 5))))

(defun copy-line (arg)
  "Copy lines (as many as prefix argument) in the kill ring"
  (interactive "p")
  (kill-ring-save (line-beginning-position)
		  (line-beginning-position (+ 1 arg)))
  (message "%d line%s copied" arg (if (= 1 arg) "" "s")))

(defun delete-tern-process ()
  (interactive)
  (delete-process "Tern"))

(defun js-hook ()
  (tern-mode t)
  (flycheck-mode t))

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
 
;; --------ORG MODE------------------
(defun org-select-clock-in ()
  (interactive)
  (org-clock-in '(4)))
(global-set-key (kbd "C-c C-x C-o") 'org-clock-out)
(global-set-key (kbd "C-c C-x C-x") 'org-clock-in-last)
(global-set-key (kbd "C-c C-x C-i") 'org-clock-in)
(global-set-key (kbd "C-c C-x g") 'org-clock-goto)
(global-set-key (kbd "C-c C-x t") 'org-insert-current-task-id)
(global-set-key (kbd "C-c C-j") 'capture-jira-copy-command)
(global-set-key (kbd "s-j") 'capture-jira-copy-command)
(global-set-key (kbd "s-l") 'show-todo-list)
(global-set-key (kbd "s-i") 'org-select-clock-in)
(global-set-key (kbd "s-k") 'org-capture)
;;(global-set-key (kbd "s-g") 'org-clock-goto)

;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "~/Documents/org/inbox.org")
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")
 
(setq org-default-notes-file "~/Documents/org/inbox.org")
(define-key global-map "\C-cc" 'org-capture)
 
;; CamelCase!!
(add-hook 'prog-mode-hook 'subword-mode)

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

;; (defun org-hook ()
;;   (truncate-lines t)
;;   (word-wrap t)
;;   (company-mode nil))
;; doesn't work

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

(setq exec-path (append exec-path '("/Users/jacobhakansson/.nvm/versions/node/v6.0.0/bin")))

(defun indent-sexp-or-region ()
  (interactive)
  (if (not (use-region-p))
      (indent-sexp)
    (indent-for-tab-command)))

(global-set-key (kbd "C-S-i") 'indent-sexp-or-region)

(defun indent-sexp ()
  (interactive)
  (save-excursion
    (paredit-backward-up)
    (set-mark (point))
    (forward-list)
    (indent-region (region-beginning) (region-end))))

(defun capitalize-without-move ()
  (interactive)
  (save-excursion
    (capitalize-word 1)))

(global-set-key (kbd "M-c") 'capitalize-without-move)

(defun lowercase-without-move ()
  (interactive)
  (save-excursion
    (downcase-word 1)))

(global-set-key (kbd "M-l") 'lowercase-without-move)
