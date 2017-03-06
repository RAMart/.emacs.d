(provide 'my-ido)
(require-packages '(flx-ido
		    ido
                    ido-ubiquitous
                    ido-vertical-mode
                    crm-custom
                    recentf
                    smex))

(custom-set-variables
 '(flx-ido-threshold 10000)

 '(ido-ignore-buffers (quote ("\\` " "\\`*")))
 '(ido-max-window-height 10)
 '(ido-enable-flex-matching t)
 '(ido-use-faces t)
 `(ido-save-directory-list-file ,(concat my-emacs-etc-dir "ido-last"))

 `(recentf-save-file ,(concat my-emacs-etc-dir "recent-files"))
 '(recentf-max-saved-items 200)

 `(smex-save-file ,(concat my-emacs-etc-dir "smex-items")))

(set-default 'imenu-auto-rescan t)

(smex-initialize)
(ido-mode t)
(ido-everywhere t)
(ido-ubiquitous-mode 1)
(ido-vertical-mode t)
(flx-ido-mode t)
(crm-custom-mode t)
(recentf-mode t)

(defun my-ido-find-file ()
  "Find a recent file using Ido."
  (interactive)
  (let ((file (ido-completing-read "Recent file: " recentf-list nil t)))
    (when file
      (find-file file))))

(global-set-key (kbd "C-x f") 'my-ido-find-file)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

(custom-set-faces
 '(ido-subdir ((t (:foreground "grey40"))))
 '(ido-first-match ((t (:foreground "green")))))
