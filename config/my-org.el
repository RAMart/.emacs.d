(require 'org-faces)
(provide 'my-org)

(custom-set-variables
 '(org-ellipsis " ►")
 '(org-cycle-include-plain-lists 'integrate))

(custom-theme-set-faces
 'zenburn
 '(org-ellipsis ((t (:weight bold :underline nil :foreground "grey60")))))
