(provide 'my-ace-window)
(require-package 'ace-window)

(global-set-key (kbd "s-<escape>") 'ace-window)

(custom-set-variables
 '(winner-mode 1))
