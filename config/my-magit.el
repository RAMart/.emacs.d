(provide 'my-magit)
(require-packages '(magit
                    fullframe))

(fullframe magit-status magit-mode-quit-window)
(fullframe magit-log-all magit-mode-quit-window)
(fullframe magit-log-current magit-mode-quit-window)

(custom-set-variables
 '(magit-completing-read-function 'ivy-completing-read))

(custom-set-faces
 '(magit-hash ((t (:foreground "grey50"))))
 '(magit-diff-added ((t (:background "#228822" :foreground "#FFFFFF"))))
 '(magit-diff-added-highlight ((t (:background "#228822" :foreground "#FFFFFF"))))
 '(magit-diff-removed ((t (:background "#902222" :foreground "#FFFFFF"))))
 '(magit-diff-removed-highlight ((t (:background "#902222" :foreground "#FFFFFF")))))
