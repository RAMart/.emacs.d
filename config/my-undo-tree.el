(provide 'my-undo-tree)
(require-package 'undo-tree)

(custom-theme-set-faces
 'zenburn
 '(undo-tree-visualizer-current-face ((t (:foreground "#7F9F7F"))))       ;; zenburn-green
 '(undo-tree-visualizer-active-branch-face ((t (:foreground "#FFFFFD")))) ;; zenburn-fg+2
)

(global-undo-tree-mode t)
