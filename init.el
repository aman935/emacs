                                        ;Record startup timestamp
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(defvar super-emacs/invokation-time
  (current-time))
(add-to-list 'auto-mode-alist '("\\.pl\\'" . prolog-mode))
					;Load configuration files
(load-file "~/.emacs.d/super-emacs/yasnippet.el")
(load-file "~/.emacs.d/super-emacs/terminal.el")
(load-file "~/.emacs.d/super-emacs/proxy.el")
(load-file "~/.emacs.d/super-emacs/repositories.el")
(load-file "~/.emacs.d/super-emacs/packages.el")
(load-file "~/.emacs.d/super-emacs/interface.el")
(load-file "~/.emacs.d/super-emacs/misc.el")
(load-file "~/.emacs.d/super-emacs/key-bindings.el")

                                        ;Print welcome message
(princ (cl-concatenate 'string
                       "Startup completed in "
                       (number-to-string (cadr (time-subtract (current-time)
                                                              super-emacs/invokation-time)))
                       " seconds\n\n"
                       "Welcome to super-emacs!\n\n"
                       "Today's date: "
                       (format-time-string "%B %d %Y"))
       (get-buffer-create (current-buffer)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(doc-view-continuous t)
 '(package-selected-packages
   (quote
    (gh-md org-journal restart-emacs smartparens auto-complete-c-headers ac-c-headers aggressive-fill-paragraph aggressive-indent electric-operator electric-case electric-spacing iedit yasnippet theme-looper myterminal-controls meta-presenter which-key material-theme auto-complete buffer-move powerline ace-window multiple-cursors helm))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 120)))))
(put 'dired-find-alternate-file 'disabled nil)
(setq org-latex-create-formula-image-program 'dvisvgm)
(autoload 'prolog-mode "prolog" "Major mode for editing Prolog programs." t)

