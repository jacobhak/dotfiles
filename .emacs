(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 4)
 '(company-idle-delay 0)
 '(company-minimum-prefix-length 1)
 '(company-selection-wrap-around t)
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(debug-on-error nil)
 '(display-battery-mode t)
 '(display-buffer-reuse-frames t)
 '(eclim-auto-save nil)
 '(eclim-eclipse-dirs
   (quote
    ("/Applications/Eclipse.app/Contents/Eclipse" "/usr/lib/eclipse" "/usr/local/lib/eclipse" "/usr/share/eclipse")))
 '(eclim-executable "/Applications/Eclipse.app/Contents/Eclipse/eclim")
 '(eclim-problems-refresh-delay 0.1)
 '(electric-indent-mode t)
 '(electric-pair-mode t)
 '(exec-path
   (quote
    ("/usr/bin" "/bin" "/usr/sbin" "/sbin" "/usr/local/Cellar/emacs/24.4/libexec/emacs/24.4/x86_64-apple-darwin13.4.0" "/usr/local/bin")))
 '(global-company-mode t)
 '(ido-enable-flex-matching t)
 '(ido-everywhere t)
 '(ido-mode (quote both) nil (ido))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(jabber-alert-presence-hooks nil)
 '(js-curly-indent-offset 0)
 '(js2-basic-offset 4)
 '(js2-highlight-level 3)
 '(magit-use-overlays nil)
 '(nxml-child-indent 4)
 '(org-adapt-indentation nil)
 '(org-agenda-clockreport-parameter-plist
   (quote
    (:link t :maxlevel 3 :step day :compact t :fileskip0 t :emphasize nil :formatter my-org-clocktable-notodo)))
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
 '(org-todo-keywords (quote ((sequence "TODO" "|" "WAITING" "|" "DONE"))))
 '(scroll-bar-mode nil)
 '(send-mail-function (quote mailclient-send-it))
 '(sgml-basic-offset 2)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(sml/shorten-modes t)
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

(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(global-set-key (kbd "C-c p") 'compile)

(global-set-key [(meta x)] (lambda ()
                             (interactive)
                             (or (boundp 'smex-cache)
                                 (smex-initialize))
                             (global-set-key [(meta x)] 'smex)
                             (smex)))
(load-theme 'solarized-dark)
(toggle-frame-maximized)

(sml/setup)
(require 'company)
;;(add-to-list 'company-backends 'company-tern)
(eval-after-load 'company
  '(progn
	 (add-to-list 'company-backends 'company-robe)
	 (add-to-list 'company-backends 'company-tern)
	 (global-company-mode t)))

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))
(require 'yasnippet) ;; not yasnippet-bundle
(yas-global-mode 1)
;; Remove Yasnippet's default tab key binding
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
;; Set Yasnippet's key binding to shift+tab
(define-key yas-minor-mode-map (kbd "<C-return>") 'yas-expand)

;; Company
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
 
;;(add-to-list 'load-path "~/.emacs.d/jdee-2.4.1/lisp")
;;(autoload 'jde-mode "jde" "JDE mode" nil)
;(setq jde-help-remote-file-exists-function '("beanshell"))
;;  (setq auto-mode-alist
;;  (append '(("\\.java\\'" . jde-mode)) auto-mode-alist))

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


(require 'js2-mode) 
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

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

(add-hook 'js2-mode-hook (lambda ()
						   (tern-mode t)))
(defun delete-tern-process ()
  (interactive)
  (delete-process "Tern"))

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
                       do (setq headline (replace-regexp-in-string "TODO \\|DONE " "" headline))
                       do (setcar (nthcdr 1 entry) headline)))
  (org-clocktable-write-default ipos tables params))

(fset 'org-insert-current-task-id
	  [?\C-c ?\C-x ?g ?\M-f ?\C-f ?\C-  ?\C-f ?\M-f ?\M-f ?\M-w ?\C-x ?b return ?\C-y ?> backspace ?:])

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
