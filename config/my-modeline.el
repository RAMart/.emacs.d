(provide 'my-modeline)
(require-package 'smart-mode-line)

(custom-set-variables
 '(sml/mode-width (quote full))
 '(sml/theme (quote dark)))

(sml/setup)

(custom-set-faces
 '(mode-line ((t :background "DarkSlateBlue" :box nil)))
 '(mode-line-inactive ((t :background "black" :italic t :box nil))))
