(provide 'my-treemacs)
(require-packages '(treemacs
                    treemacs-all-the-icons))

;; (treemacs-load-theme "all-the-icons") BUG: Einrückung kaputt

(global-set-key (kbd "C-x M-f") 'treemacs)
(global-set-key (kbd "s-<left>") 'treemacs-select-window)
