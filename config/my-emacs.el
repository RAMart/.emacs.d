(provide 'my-emacs)
(require 'uniquify)
(require-packages '(smooth-scrolling
                    browse-kill-ring
                    cyberpunk-theme))

(setq my-emacs-etc-dir
      (file-name-as-directory (concat user-emacs-directory "etc")))

(custom-set-variables `(nsm-settings-file ,(concat my-emacs-etc-dir "network-security.data")))

(custom-set-variables
 '(inhibit-startup-screen t)
 '(inhibit-startup-message t)
 '(inhibit-startup-echo-area-message t)
 '(ring-bell-function (quote ignore))
 '(blink-cursor-blinks 0)
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

(column-number-mode 1)
(set-default 'indent-tabs-mode nil)
(show-paren-mode 1)
(delete-selection-mode)
(auto-compression-mode t)
(smooth-scrolling-mode t)

(global-hl-line-mode t)
(add-hook 'eshell-mode-hook (lambda () (setq-local global-hl-line-mode  nil)))
(add-hook 'term-mode-hook (lambda () (setq-local global-hl-line-mode nil)))

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

;; final touch
(load-theme 'tango-dark)
(custom-set-faces
 '(hl-line ((t (:background "#3E4446"))))
 '(font-lock-comment-face ((t (:foreground "grey55"))))
 '(vertical-border ((t (:foreground "grey30"))))
 '(fringe ((t (:background "#2E3436"))))
 '(term ((t (:inherit default :foreground "gray70"))))
 '(term-color-black ((t (:inherit default :background "#2E3436" :foreground "black"))))
 '(term-color-blue ((t (:inherit default :background "DodgerBlue3" :foreground "DodgerBlue3"))))
 '(term-color-cyan ((t (:inherit default :background "turquoise3" :foreground "turquoise3"))))
 '(term-color-green ((t (:inherit default :background "SeaGreen" :foreground "SeaGreen"))))
 '(term-color-magenta ((t (:inherit default :background "DarkOrchid3" :foreground "DarkOrchid3"))))
  '(term-color-red ((t (:inherit default :background "OrangeRed2" :foreground "OrangeRed2"))))
 '(term-color-white ((t (:inherit default :background "gray70" :foreground "gray70"))))
 '(term-color-yellow ((t (:inherit default :background "gold2" :foreground "gold2")))))

(toggle-frame-fullscreen)
