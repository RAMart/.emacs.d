(provide 'my-emacs)
(require 'uniquify)
(require-packages '(smooth-scrolling
                    browse-kill-ring
                    eterm-256color))

(setq my-emacs-etc-dir
      (file-name-as-directory (concat user-emacs-directory "etc")))

(custom-set-variables `(nsm-settings-file ,(concat my-emacs-etc-dir "network-security.data")))

(custom-set-variables
 '(inhibit-startup-screen t)
 '(inhibit-startup-message t)
 '(inhibit-startup-echo-area-message t)
 '(ring-bell-function (quote ignore))
 '(blink-cursor-blinks 0)
 '(show-paren-delay 0)
 '(uniquify-buffer-name-style (quote forward))
 '(uniquify-separator "/")
 '(uniquify-ignore-buffers-re "^\\*")
 '(uniquify-after-kill-buffer-p t)
 '(backup-inhibited t)
 '(delete-by-moving-to-trash nil)
 '(compilation-ask-about-save nil)
 '(confirm-nonexistent-file-or-buffer nil)
 '(truncate-partial-width-windows nil)
 '(echo-keystrokes 0.02)
 '(require-final-newline t)
 '(transient-mark-mode t)
 '(shift-select-mode nil)
 '(x-select-enable-clipboard t)
 '(query-replace-highlight t)
 '(next-error-highlight t)
 '(next-error-highlight-no-select t)
 '(initial-major-mode (quote lisp-interaction-mode)))

(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

(setq-default left-fringe-width 6)
(setq-default right-fringe-width 6)

(show-paren-mode 1)
(column-number-mode 1)
(set-default 'indent-tabs-mode nil)
(delete-selection-mode)
(auto-compression-mode t)
(smooth-scrolling-mode t)

(global-hl-line-mode t)
(add-hook 'eshell-mode-hook (lambda () (setq-local global-hl-line-mode  nil)))
;; TODO: Auslagern nach my-term? (Zusammen mit unten definiertem face...)
(add-hook 'term-mode-hook (lambda ()
                            (setq-local global-hl-line-mode nil)
                            (eterm-256color-mode)
                            (buffer-face-set 'eterm-256color-default)))

(defalias 'yes-or-no-p 'y-or-n-p)

;; UTF-8
(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
;;disable CJK coding/encoding (Chinese/Japanese/Korean characters)
(setq utf-translate-cjk-mode nil)

;; TODO: ggf. auch nett: https://www.reddit.com/r/emacs/comments/jc4uou/tags_everywhere/
(add-hook
 'prog-mode-hook
 (lambda ()
   (font-lock-add-keywords
    nil
    '(("\\<\\(HACK\\|NOTE\\|FIXME\\|TODO\\|BUG\\|INFO\\|WATCHOUT\\)"
       1 font-lock-waning-face t)))))

(toggle-frame-maximized)
;; (toggle-frame-fullscreen)
