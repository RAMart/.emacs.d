(provide 'my-magit)
(require-packages '(magit
                    fullframe))

(fullframe magit-status magit-mode-quit-window)
(fullframe magit-log-all magit-mode-quit-window)
(fullframe magit-log-current magit-mode-quit-window)

(custom-set-variables
 '(magit-completing-read-function 'ivy-completing-read))

(custom-theme-set-faces
 'zenburn
 '(magit-diff-added ((t (:background "#3F5F3F"))))          ;; zenburn-green-4
 '(magit-diff-added-highlight ((t (:background "#4F6F4F")))) ;; zenburn-green-3
)
