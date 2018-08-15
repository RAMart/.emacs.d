(provide 'my-neotree)
(require-package 'neotree)

(custom-set-variables
 '(neo-smart-open t))

(custom-set-faces
 '(neo-header-face ((t (:height 110))))
 '(neo-root-dir-face ((t (:background "DarkSlateBlue" :foreground "White" :height 110))))
 '(neo-file-link-face ((t (:height 100))))
 '(neo-dir-link-face ((t (:height 100)))))

(global-set-key (kbd "C-x M-f") 'neotree-toggle)
