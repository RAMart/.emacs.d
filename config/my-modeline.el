(provide 'my-modeline)
(require-package 'spaceline)
(require 'spaceline-segments)

(custom-set-variables
 '(powerline-default-separator (quote contour)))

(defface spaceline-inactive-highlight-face
  `((t (:inherit 'spaceline-highlight-face
        :background "DarkOrange4")))
  "Default inactive buffer highlight face for spaceline."
  :group 'spaceline)

(custom-theme-set-faces
 'zenburn
 '(spaceline-highlight-face ((t (:background "DarkOrange3")))))

(spaceline-compile
  '((line-column
     :priority 80
     :when active)
    (buffer-id
     :priority 90
     :when (and buffer-file-name (buffer-modified-p))
     :face (if active highlight-face 'spaceline-inactive-highlight-face))
    (buffer-id
     :priority 90
     :face default-face
     :when (not (and buffer-file-name (buffer-modified-p))))
    ((flycheck-error flycheck-warning flycheck-info)
     :priority 70
     :when active)
    (version-control
     :priority 60))

    '((buffer-encoding
       :priority 90)
      (major-mode
       :priority 80)
      (minor-modes
       :priority 70
       :separator " ")))

(setq-default
 mode-line-format
 '("%e" (:eval (spaceline-ml-main))))
