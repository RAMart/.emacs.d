(require 'org-faces)
(provide 'my-org)

(custom-set-variables
 '(org-ellipsis " ►")
 '(org-cycle-include-plain-lists 'integrate))

(custom-set-faces
 '(org-todo ((t (:box nil))))
 '(org-done ((t (:box nil))))
 '(org-ellipsis ((t (:weight bold :underline nil :foreground "grey55"))))
 '(org-checkbox ((t (:box nil :foreground nil :background nil))))
 '(org-level-1 ((t (:weight normal :height 1.0))))
 '(org-level-2 ((t (:weight normal :height 1.0))))
 '(org-level-3 ((t (:weight normal :height 1.0))))
 '(org-level-4 ((t (:weight normal :height 1.0))))
 '(org-level-5 ((t (:weight normal :height 1.0))))
 '(org-level-6 ((t (:weight normal :height 1.0))))
 '(org-level-7 ((t (:weight normal :height 1.0))))
 '(org-level-8 ((t (:weight normal :height 1.0)))))
