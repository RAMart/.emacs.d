(provide 'my-whitespace)
(require 'whitespace)

(defvar my-whitespace-ignore-modes '(markdown-mode))

(defun my-whitespace-cleanup ()
  "Kill all whitespaces except for certain modes"
  (if (not (member major-mode my-whitespace-ignore-modes))
      (let ((whitespace-style '(trailing empty)))
        (whitespace-cleanup))))

(defun my-kill-whitespaces ()
  "Kill the whitespace between two non-whitespace characters"
  (interactive "*")
  (save-excursion
    (save-restriction
      (save-match-data
        (progn
          (re-search-backward "[^ \t\r\n]" nil t)
          (re-search-forward "[ \t\r\n]+" nil t)
          (replace-match " " nil nil))))))

(global-set-key (kbd "M-SPC") 'my-kill-whitespaces)
(add-hook 'before-save-hook 'my-whitespace-cleanup)
