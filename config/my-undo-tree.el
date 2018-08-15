(provide 'my-undo-tree)
(require-package 'undo-tree)

(custom-set-faces
 '(undo-tree-visualizer-active-branch-face ((t (:foreground "green3" :background "#2E3436"))))
 '(undo-tree-visualizer-current-face ((t (:foreground "Black" :background "Green"))))
 '(undo-tree-visualizer-default-face ((t (:foreground "grey55" :background "#2E3436"))))
 '(undo-tree-visualizer-unmodified-face ((t (:foreground "HotPink1"))))
 '(undo-tree-visualizer-register-face ((t (:foreground "HotPink1")))))

(global-undo-tree-mode t)
