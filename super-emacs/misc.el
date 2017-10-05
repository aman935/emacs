(defun super-emacs-reload-current-file ()
  "Reload the file loaded in current buffer from the disk"
  (interactive)
  (cond (buffer-file-name (progn (find-alternate-file buffer-file-name)
                                 (message "File reloaded")))
        (t (message "You're not editing a file!"))))

;Disable splash message, start *scratch* buffer by default
(setq initial-buffer-choice 
      t)
(setq initial-scratch-message 
      "")

;Enforce spaces for indentation, instead of tabs
(setq-default indent-tabs-mode 
              nil)

;Enable show-paren-mode
(show-paren-mode)

;Enable winner-mode
(winner-mode t)

;Enable windmove
(windmove-default-keybindings)

(defun my:ac-c-header-func()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers))
(add-hook 'c++-mode-hook
          'aggressive-indent-mode)
(add-hook 'c++-mode-hook
          'my:ac-c-header-func)
(add-hook 'c++-mode-hook
          'electric-operator-mode)
(add-hook 'c++-mode-hook
          'electric-spacing-mode)
(add-hook 'c++-mode-hook
          'electric-pair-mode)
(add-hook 'c-mode-hook
          'my:ac-c-header-func)
(add-hook 'c++-mode-hook
          'aggressive-indent-mode)
