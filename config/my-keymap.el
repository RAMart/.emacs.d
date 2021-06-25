(provide 'my-keymap)
(require-packages '(buffer-move))

(defun ingos-keymap-cleanup ()
  (setq which-key-show-transient-maps nil))

;; TODO: Brauchen wir nicht mehr, gelle?
(defun set-ingos-transient-map (map)
  (setq which-key-show-transient-maps t)
  (set-transient-map map nil 'ingos-keymap-cleanup))

(defun ingos-buffer-keymap ()
  (interactive)
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "<up>") 'buf-move-up)
    (define-key map (kbd "<down>") 'buf-move-down)
    (define-key map (kbd "<left>") 'buf-move-left)
    (define-key map (kbd "<right>") 'buf-move-right)
    (define-key map (kbd "-") 'shrink-window-horizontally)
    (define-key map (kbd "+") 'enlarge-window-horizontally)
    (define-key map (kbd "_") 'shrink-window)
    (define-key map (kbd "*") 'enlarge-window)
    (set-ingos-transient-map map)))

(defun ingos-keymap ()
  (interactive)
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "b") 'ingos-buffer-keymap)
    (set-ingos-transient-map map)))

(global-set-key (kbd "s-!") '(lambda ()  (interactive) (ansi-term "/bin/zsh")))
(global-set-key (kbd "C-M-y") 'browse)
(global-set-key (kbd "C-<return>") 'find-file-at-point)
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "C-M-s") 'counsel-git-grep)
;; (global-set-key (kbd "C-S-s") 'counsel-git-grep) ;; Should work in Emacs 27

(global-set-key (kbd "C-ä") 'ingos-keymap)
