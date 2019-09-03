(provide 'my-company)
(require-packages '(company
                    company-quickhelp))

(custom-set-variables
 '(company-idle-delay 0.20)
 '(company-minimum-prefix-length 1)
 '(company-quickhelp-delay nil)
 '(company-quickhelp-mode 1))

(global-company-mode 1)

(eval-after-load 'company
  '(define-key company-active-map (kbd "C-h") #'company-quickhelp-manual-begin))
