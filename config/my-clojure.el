(provide 'my-clojure)
(require-packages '(cider
                    clj-refactor
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
 '(cider-use-overlays nil)
 '(cider-repl-result-prefix ";=> ")
 '(cider-repl-use-clojure-font-lock t)
 '(cider-ovelays-use-font-lock t)
 '(cider-mode-line-show-connection nil)
 '(cider-repl-use-pretty-printing t)
 '(cider-prompt-for-project-on-connect t))

;;(setq cider-result-overlay-position nil)
;;(setq cider-use-overlays nil)

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


(dolist (mode '(clojure-mode clojurescript-mode))
  (dolist (composition '(("λ" "(\\(fn\\)[\[[:space:]]")
                         ("ƒ" "\\(#\\)(" )
                         ("∈" "\\(#\\){")))
    (font-lock-add-keywords mode `((,(nth 1 composition)
                                    (0 (progn (compose-region (match-beginning 1)
                                                              (match-end 1)
                                                              ,(car composition))
                                              nil)))))))

(defun get-file-content (filePath)
  "Return filePath's file content."
  (with-temp-buffer
    (insert-file-contents filePath)
    (buffer-string)))

(defun lein-project-clj-filepath ()
    (thread-first
        (projectile-project-root)
      (concat "project.clj")))

(defun lein-project-clj-content (filepath)
  (let* ((data
          (thread-first
              filepath
            (get-file-content)
            (parseedn-read-str)))

         (name
          (nth 1 data))

         (version
          (nth 2 data))

         (rest-root-level-values
          (seq-drop data 3))

         (result
          (make-hash-table :test 'equal)))

    (puthash :name name result)
    (puthash :version version result)

    (mapc (lambda (pair) (puthash (car pair) (car (cdr pair)) result))
          (seq-partition rest-root-level-values 2))

    result))

(defun lein-project-clj-profiles (filepath)
    (thread-last filepath
      (lein-project-clj-content)
      (gethash :profiles)
      (hash-table-keys)
      (mapcar 'symbol-name)
      (mapcar (lambda (profile) (substring profile 1)))))

(defun cider-jack-in-with-args (args)
  (interactive "sjack-in repl with args: ")
  (let ((cider-lein-parameters
         args))
    (cider-jack-in nil)))

(defun cider-jack-in-with-profile (profile)
  (interactive "sjack-in repl with profile: ")
  (cider-jack-in-with-args (concat "with-profile " profile " repl")))

(defun lein-project-clj-jack-in-profiles ()
  (thread-last
    (lein-project-clj-filepath)
    (lein-project-clj-profiles)
    (seq-filter (lambda (profile) (not (member profile '("dev" "repl" "uberjar")))))
    (seq-map (lambda (profile) (list profile (concat "+" profile))))
    (apply 'append)))

(defun cider-jack-in-with-profile-completion ()
    (interactive)
    (let* ((profiles
            (lein-project-clj-jack-in-profiles))

           (profile
            (completing-read "jack-in repl with profile: "
                             profiles nil nil nil nil "")))

      (cider-jack-in-with-profile profile)))

(defun cider-jack-in-dwim ()
  (interactive)
  (let* ((profiles
          (lein-project-clj-jack-in-profiles))

         (profile
          (completing-read "jack-in repl with profile: "
                           profiles nil nil nil nil "")))

    (if (string-empty-p profile)
        (cider-jack-in)
      (cider-jack-in-with-profile profile))))
