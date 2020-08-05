(provide 'my-which-key)
(require-package 'which-key)

(custom-set-variables
 '(which-key-idle-delay 0.1)
 '(which-key-show-transient-maps t))

(which-key-setup-side-window-bottom)
(which-key-mode)
