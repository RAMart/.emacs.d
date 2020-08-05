(provide 'my-ivy)
(require-packages '(recentf
                    smex
                    ivy
                    swiper
                    counsel))

(set-default 'imenu-auto-rescan t)

(custom-set-variables
 `(smex-save-file ,(concat my-emacs-etc-dir "smex-items"))

 `(recentf-save-file ,(concat my-emacs-etc-dir "recent-files"))
 '(recentf-max-saved-items 200)

 '(ivy-height 13)
 '(ivy-use-virtual-buffers t))

(smex-initialize)
(recentf-mode t)
(ivy-mode 1)
(counsel-mode 1)

(global-set-key (kbd "C-x f") 'counsel-recentf)
(global-set-key (kbd "C-M-s") 'swiper)
