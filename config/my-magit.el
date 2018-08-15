(provide 'my-magit)
(require-packages '(magit
                    fullframe))

(fullframe magit-status magit-mode-quit-window)
(fullframe magit-log-all magit-mode-quit-window)
(fullframe magit-log-current magit-mode-quit-window)

(custom-set-variables
 '(magit-completing-read-function 'ivy-completing-read))
