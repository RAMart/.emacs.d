(provide 'my-clojure)
(require-packages '(cider
                    clojure-mode
                    ;;cider-eval-sexp-fu
                    ;;clojure-cheatsheet
		    ;;clojure-quick-repls
		    ;;nrepl-eval-sexp-fu
		    ;;paredit
		    ;;popup
                    ;;typed-clojure-mode
                    ))

(add-to-list 'exec-path "~/bin")

(custom-set-variables
 '(cider-repl-result-prefix ";=> ")
 '(cider-repl-use-clojure-font-lock t)
 '(cider-ovelays-use-font-lock t)
 '(cider-mode-line-show-connection nil)
 '(cider-repl-use-pretty-printing t)
 '(cider-prompt-for-project-on-connect t))

;;(setq cider-show-error-buffer nil)
;;(setq cider-auto-select-error-buffer nil)
;;(setq cider-prompt-for-symbol nil)

;;(setq cider-prompt-save-file-on-load nil)
;;(setq cider-test-show-report-on-success nil)


;;(setq cider-font-lock-dynamically '(macro core function var))
;;(setq cider-repl-display-help-banner nil)
;;(setq cider-repl-pop-to-buffer-on-connect t)

;;(setq cider-popup-stacktraces nil)
;;(setq nrepl-hide-special-buffers nil)


;;(setq cider-repl-history-file "~/.emacs.d/cider-history")
;;(setq nrepl-eval-sexp-fu-flash-duration 0.2)
;;(setq cider-eval-sexp-fu-flash-duration 0.2)
;;(setq cider-cljs-lein-repl "(user/cljs-repl)")
