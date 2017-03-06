(provide 'my-osx)

(when (eq system-type 'darwin)
  (set-default-font "Menlo 12")
  (setq default-input-method "MacOSX"
        ns-right-alternate-modifier nil
        ;; mac-command-modifier 'meta
        ;; mac-option-modifier 'none
        ;; mac-pass-command-to-system nil
        ;; mac-pass-control-to-system nil
        )
  )
