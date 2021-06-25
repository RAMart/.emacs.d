(provide 'my-osx)

;; C - Control -> Control
;; M - Meta    -> Left Alt
;; S - Shift   -> Shift
;; s - super   -> (Left) Command(?)
;; H - Hyper   ->
;; A - Alt     ->

(when (eq system-type 'darwin)
  (set-frame-font "Menlo 12")
  (setq default-input-method "MacOSX"
        ns-right-alternate-modifier nil))
