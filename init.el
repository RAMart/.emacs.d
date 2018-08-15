(require 'package)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-inhibited t t)
 '(blink-cursor-blinks 0)
 '(cider-mode-line-show-connection nil)
 '(cider-ovelays-use-font-lock t)
 '(cider-prompt-for-project-on-connect t)
 '(cider-repl-result-prefix ";=> ")
 '(cider-repl-use-clojure-font-lock t)
 '(cider-repl-use-pretty-printing t)
 '(company-idle-delay 0.2)
 '(company-minimum-prefix-length 1)
 '(company-quickhelp-delay nil)
 '(compilation-ask-about-save nil)
 '(confirm-nonexistent-file-or-buffer nil)
 '(custom-safe-themes
   (quote
    ("38e64ea9b3a5e512ae9547063ee491c20bd717fe59d9c12219a0b1050b439cdd" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(delete-by-moving-to-trash nil)
 '(echo-keystrokes 0.02)
 '(ediff-split-window-function (quote split-window-horizontally))
 '(ediff-window-setup-function (quote ediff-setup-windows-plain))
 '(inhibit-startup-echo-area-message t)
 '(inhibit-startup-screen t)
 '(initial-major-mode (quote lisp-interaction-mode))
 '(ivy-height 13)
 '(ivy-use-virtual-buffers t)
 '(magit-completing-read-function (quote ivy-completing-read))
 '(neo-smart-open t)
 '(next-error-highlight t)
 '(next-error-highlight-no-select t)
 '(nsm-settings-file "~/.emacs.d/etc/network-security.data")
 '(org-cycle-include-plain-lists (quote integrate))
 '(org-ellipsis " ►")
 '(package-selected-packages
   (quote
    (vlf move-text expand-region ace-window counsel swiper ivy smex clj-refactor undo-tree neotree company-quickhelp multiple-cursors which-key company magit fullframe cider paredit rainbow-delimiters avy)))
 '(query-replace-highlight t)
 '(recentf-max-saved-items 200)
 '(recentf-save-file "~/.emacs.d/etc/recent-files")
 '(require-final-newline t)
 '(ring-bell-function (quote ignore))
 '(safe-local-variable-values
   (quote
    ((cider-default-cljs-repl . "Figwheel")
     (org-todo-keyword-faces
      ("TODO" . "OrangeRed")
      ("STARTED" . "DarkOrange")
      ("DONE" . "green"))
     (org-todo-keyword-faces
      ("TODO" . "red")
      ("STARTED" . "orange")
      ("DONE" . "green")))))
 '(save-place-file "~/.emacs.d/etc/places")
 '(save-place-forget-unreadable-files nil)
 '(select-enable-clipboard t)
 '(shift-select-mode nil)
 '(smex-save-file "~/.emacs.d/etc/smex-items")
 '(sml/mode-width (quote full))
 '(sml/theme (quote dark))
 '(transient-mark-mode t)
 '(truncate-partial-width-windows nil)
 '(uniquify-after-kill-buffer-p t)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(uniquify-ignore-buffers-re "^\\*")
 '(uniquify-separator "/")
 '(which-key-idle-delay 0.1))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "orange"))))
 '(font-lock-comment-face ((t (:foreground "grey55"))))
 '(fringe ((t (:background "#2E3436"))))
 '(hl-line ((t (:background "#3E4446"))))
 '(ivy-subdir ((t (:foreground "grey60"))))
 '(ivy-virtual ((t (:foreground "grey60"))))
 '(mode-line ((t :background "MidnightBlue" :box nil)))
 '(mode-line-inactive ((t :background "grey20" :italic t :box nil)))
 '(neo-dir-link-face ((t (:height 100))))
 '(neo-file-link-face ((t (:height 100))))
 '(neo-header-face ((t (:height 110))))
 '(neo-root-dir-face ((t (:background "DarkSlateBlue" :foreground "White" :height 110))))
 '(org-checkbox ((t (:box nil :foreground nil :background nil))))
 '(org-done ((t (:box nil))))
 '(org-ellipsis ((t (:underline nil :foreground "grey55"))))
 '(org-level-1 ((t (:weight normal :height 1.0))))
 '(org-level-2 ((t (:weight normal :height 1.0))))
 '(org-level-3 ((t (:weight normal :height 1.0))))
 '(org-level-4 ((t (:weight normal :height 1.0))))
 '(org-level-5 ((t (:weight normal :height 1.0))))
 '(org-level-6 ((t (:weight normal :height 1.0))))
 '(org-level-7 ((t (:weight normal :height 1.0))))
 '(org-level-8 ((t (:weight normal :height 1.0))))
 '(org-todo ((t (:box nil))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "dark orange"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "deep pink"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "chartreuse"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "deep sky blue"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "yellow"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "orchid"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "spring green"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "sienna1"))))
 '(rainbow-delimiters-unmatched-face ((t (:background "red" :foreground "white"))))
 '(term ((t (:inherit default :foreground "gray70"))))
 '(undo-tree-visualizer-active-branch-face ((t (:foreground "green3" :background "#2E3436"))))
 '(undo-tree-visualizer-current-face ((t (:foreground "Black" :background "Green"))))
 '(undo-tree-visualizer-default-face ((t (:foreground "grey55" :background "#2E3436"))))
 '(undo-tree-visualizer-register-face ((t (:foreground "HotPink1"))))
 '(undo-tree-visualizer-unmodified-face ((t (:foreground "HotPink1"))))
 '(vertical-border ((t (:foreground "grey30")))))


(defun require-package (pkg)
  "Installs package if it is not already installed"
  (when (not (package-installed-p pkg))
    (package-install pkg))
  (require pkg))

(defun require-packages (pkgs)
  (mapc 'require-package pkgs))

(dolist (source '(("melpa" . "http://melpa.milkbox.net/packages/")
                  ("marmalade" . "http://marmalade-repo.org/packages/")))
  (add-to-list 'package-archives source t))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(add-to-list 'load-path (concat user-emacs-directory "config"))

(require 'all-configs)

(server-start)
