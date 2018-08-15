(provide 'my-which-key)
(require-package 'which-key)

(custom-set-variables
 '(which-key-idle-delay 0.1))

(which-key-setup-side-window-bottom)
(which-key-show-major-mode)
(which-key-show-top-level)
(which-key-mode)
