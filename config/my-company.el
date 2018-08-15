(provide 'my-company)
(require-packages '(company
                    company-quickhelp))

(custom-set-variables
 '(company-idle-delay 0.20)
 '(company-minimum-prefix-length 1)
 '(company-quickhelp-delay nil))

(global-company-mode 1)
;; (company-quickhelp-mode 1) ;; TODO: Derzeit nicht aktiv: BUG bei Position des Pop-Ups

(eval-after-load 'company
  '(define-key company-active-map (kbd "C-h") #'company-show-doc-buffer))
