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
 '(cider-use-overlays nil)
 '(company-idle-delay 0.2)
 '(company-minimum-prefix-length 1)
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(company-quickhelp-delay nil)
 '(company-quickhelp-mode 1)
 '(compilation-ask-about-save nil)
 '(confirm-nonexistent-file-or-buffer nil)
 '(custom-safe-themes (quote (default)))
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
 '(markdown-command "/usr/local/bin/multimarkdown")
 '(neo-smart-open t)
 '(next-error-highlight t)
 '(next-error-highlight-no-select t)
 '(nsm-settings-file "~/.emacs.d/etc/network-security.data")
 '(org-cycle-include-plain-lists (quote integrate))
 '(org-ellipsis " ►")
 '(package-selected-packages
   (quote
    (buffer-move spaceline treemacs-all-the-icons zenburn zenburn-theme exwm markdown-mode move-text expand-region ace-window counsel swiper ivy smex clj-refactor undo-tree company-quickhelp multiple-cursors which-key company magit fullframe cider paredit rainbow-delimiters avy)))
 '(powerline-default-separator (quote contour))
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
 '(show-paren-delay 0)
 '(smex-save-file "~/.emacs.d/etc/smex-items")
 '(sml/mode-width (quote full))
 '(sml/theme (quote dark))
 '(transient-mark-mode t)
 '(truncate-partial-width-windows nil)
 '(uniquify-after-kill-buffer-p t)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(uniquify-ignore-buffers-re "^\\*")
 '(uniquify-separator "/")
 '(which-key-idle-delay 0.1)
 '(which-key-show-transient-maps t)
 '(winner-mode 1))

(defun require-package (pkg)
  "Installs package if it is not already installed"
  (when (not (package-installed-p pkg))
    (package-install pkg))
  (require pkg))

(defun require-packages (pkgs)
  (mapc 'require-package pkgs))

(dolist (source '(("melpa" . "http://melpa.org/packages/")
                  ("marmalade" . "http://marmalade-repo.org/packages/")
                  ("gnu" . "http://elpa.gnu.org/packages/")))
  (add-to-list 'package-archives source t))
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3") ;; WORKAROUND bis Emacs 26.3+ erschienen ist

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(add-to-list 'load-path (concat user-emacs-directory "config"))

(require 'all-configs)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
