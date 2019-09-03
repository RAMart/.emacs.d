(provide 'my-keymap)
(require-packages '(buffer-move cl))

(defun transient-keymap-with-message-setter (msg keymap)
  (let ((keymap-message (gensym))
        (keymap-binding (gensym)))
    (set keymap-message msg)
    (set keymap-binding keymap)
    `(lambda ()
       (interactive)
       (message ,keymap-message)
       (set-transient-map ,keymap-binding t))))

(defvar ingos-buffer-keymap
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "<up>") 'buf-move-up)
    (define-key map (kbd "<down>") 'buf-move-down)
    (define-key map (kbd "<left>") 'buf-move-left)
    (define-key map (kbd "<right>") 'buf-move-right)
    (define-key map (kbd "-") 'shrink-window-horizontally)
    (define-key map (kbd "+") 'enlarge-window-horizontally)
    (define-key map (kbd "_") 'shrink-window)
    (define-key map (kbd "*") 'enlarge-window)
    map))

(defvar ingos-keymap
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "b")
      (transient-keymap-with-message-setter
       "Buffer mode: [SHIFT] +/- resize, CURSOR change layout"
       ingos-buffer-keymap))
    map))

(global-set-key (kbd "s-!") '(lambda ()  (interactive) (ansi-term "/bin/zsh")))
(global-set-key (kbd "C-<return>") 'find-file-at-point)
(global-set-key (kbd "C-s-s") 'counsel-git-grep) ;; Should work in Emacs 27

(global-set-key (kbd "C-ä")
                (transient-keymap-with-message-setter
                 "[B]uffer"
                 ingos-keymap))
