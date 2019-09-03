(provide 'my-osx)

(when (eq system-type 'darwin)
  (set-frame-font "Menlo 12")
  (setq default-input-method "MacOSX"
        ns-right-alternate-modifier nil))
