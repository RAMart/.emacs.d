(provide 'my-rainbow-delimiters)
(require-package 'rainbow-delimiters)

(custom-theme-set-faces
 'zenburn
 '(rainbow-delimiters-unmatched-face ((t (:background "red" :foreground "white")))))

(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)
