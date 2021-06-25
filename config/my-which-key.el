(provide 'my-which-key)
(require-package 'which-key)

(custom-set-variables
 '(which-key-show-early-on-C-h t)
 '(which-key-idle-delay 3)
 '(which-key-idle-secondary-delay 0.05)
)

(which-key-setup-side-window-bottom)
(which-key-mode)
