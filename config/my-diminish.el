(provide 'my-diminish)
(require-package 'diminish)

(eval-after-load "flycheck"     '(diminish 'flycheck-mode))
(eval-after-load "company"      '(diminish 'company-mode))
(eval-after-load "counsel"      '(diminish 'counsel-mode))
(eval-after-load "ivy"          '(diminish 'ivy-mode))
(eval-after-load "paredit"      '(diminish 'paredit-mode))
(eval-after-load "rainbow-mode" '(diminish 'rainbow-mode))
(eval-after-load "undo-tree"    '(diminish 'undo-tree-mode))
(eval-after-load "which-key"    '(diminish 'which-key-mode))


;; TODO: (eval-after-load "highlight-symbol"  '(diminish 'highlight-symbol-mode))
;; TODO: (eval-after-load "paxedit"           '(diminish 'paxedit-mode))
