(provide 'my-modeline)
(require-package 'smart-mode-line)

(setq sml/mode-width 'full)
(setq sml/theme 'dark)
(sml/setup)

(custom-set-faces
 '(mode-line ((t :background "MidnightBlue" :box nil)))
 '(mode-line-inactive ((t :background "grey20" :italic t :box nil))))
