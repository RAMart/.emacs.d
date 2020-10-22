(provide 'my-theme)
(require-package 'zenburn-theme)

(load-theme 'zenburn t)

(zenburn-with-color-variables
  (custom-theme-set-faces
   'zenburn
   ;;
   ;; Built-In
   ;;
   `(default ((t (:foreground ,zenburn-fg :background ,zenburn-bg-1))))
   '(cursor ((t (:background "orange"))))
   `(region ((t (:background ,zenburn-bg+05 :extend t))))
   '(vertical-border ((t (:foreground "grey50"))))
   `(font-lock-warning-face ((t (:foreground ,zenburn-orange :weight bold))))

   ;;
   ;; eterm
   ;;
   '(eterm-256color-default ((t (:family "Noto Mono for Powerline"))))

   ;;
   ;; org
   ;;
   '(org-ellipsis ((t (:weight bold :underline nil :foreground "grey60"))))

   ;;
   ;; undo-tree
   ;;
   `(undo-tree-visualizer-current-face ((t (:foreground ,zenburn-green))))
   `(undo-tree-visualizer-active-branch-face ((t (:foreground ,zenburn-fg+2))))

   ;;
   ;; ace-window
   ;;
   `(aw-background-face ((t (:foreground ,zenburn-fg-1 :background ,zenburn-bg-1 :inverse-video nil))))
   `(aw-leading-char-face ((t (:foreground ,zenburn-orange :height 1.5 :weight bold :inherit aw-mode-line-face))))

   ;;
   ;; rainbow delimiters
   ;;
   '(rainbow-delimiters-unmatched-face ((t (:background "red" :foreground "white"))))

   ;;
   ;; magit
   ;;
   `(magit-diff-added ((t (:background ,zenburn-green-4))))
   `(magit-diff-added-highlight ((t (:background ,zenburn-green-3))))

   ;;
   ;; mode line
   ;;
   `(mode-line ((t (:foreground ,zenburn-green+2 :background ,zenburn-bg :box nil))))
   `(mode-line-inactive ((t (:foreground ,zenburn-green :background ,zenburn-bg-05 :box nil))))
   `(mode-line-buffer-id ((t (:foreground ,zenburn-yellow))))

   `(powerline-active1 ((t (:background ,zenburn-bg+1 :inherit mode-line))))
   `(powerline-active2 ((t (:background ,zenburn-bg+2 :inherit mode-line))))
   `(powerline-inactive1 ((t (:background ,zenburn-bg-1 :inherit mode-line-inactive))))
   `(powerline-inactive2 ((t (:background ,zenburn-bg :inherit mode-line-inactive))))

   `(spaceline-highlight-face ((t (:foreground ,zenburn-fg+1 :background ,zenburn-red-5 :weight normal))))
   '(spaceline-flycheck-error ((t (:foreground "#FF8080"))))
   '(spaceline-flycheck-warning ((t (:foreground "#FFC180"))))
   '(spaceline-flycheck-info ((t (:foreground "#FCFF80"))))
))

(enable-theme 'zenburn)
