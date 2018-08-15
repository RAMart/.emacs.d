(provide 'my-multiple-cursors)
(require-packages '(multiple-cursors))

;; NOTE: Additional config for command can be found in ~/.emacs.d/.mc-lists.el

(global-set-key (kbd "C-.") 'mc/mark-all-dwim) ;; Can be pressed multiple times!
(global-set-key (kbd "C-:") 'mc/mark-more-like-this-extended)

;;
;; Sometimes you end up with cursors outside of your view.
;; You can scroll the screen to center on each cursor with
;; C-v and M-v or you can press C-' to hide all lines without
;; a cursor, press C-' again to unhide.
;;
