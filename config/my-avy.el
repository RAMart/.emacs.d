(provide 'my-avy)
(require-package 'avy)

(global-set-key (kbd "s-SPC") 'avy-goto-word-or-subword-1)
(global-set-key (kbd "M-g g") 'avy-goto-line)
