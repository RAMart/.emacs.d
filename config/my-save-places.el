(provide 'my-save-places)

(setq save-place-file (concat my-emacs-etc-dir "places")
      save-place-forget-unreadable-files nil)
(save-place-mode 1)
