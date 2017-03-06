(provide 'my-structural-editing)
(require-packages '(paredit))

(dolist (mode '(emacs-lisp-mode-hook
                eval-expression-minibuffer-setup-hook
                lisp-mode-hook
                lisp-interaction-mode-hook
                clojure-mode-hook
                cider-mode-hook
                cider-repl-mode-hook))
  (add-hook mode 'paredit-mode))
