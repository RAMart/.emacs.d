(provide 'my-modeline)

(require-package 'spaceline)
(require 'spaceline-segments)
(require 'all-the-icons)
(require 'all-the-icons-faces)

(setq spaceline-separator-dir-left '(right . right))
(setq spaceline-separator-dir-right '(left . left))

(custom-set-variables
 '(powerline-default-separator (quote slant))
 '(powerline-height 24))

(defface spaceline-inactive-highlight-face
  '((t (:foreground "#989890"
        :background "#6C3333"
        :weight normal)))
  "Default inactive buffer highlight face for spaceline."
  :group 'spaceline)

(defface ik/all-the-icons
  '((((background dark)))
    (((background light))))
  "Default face for icons with alternating background"
  :group 'all-the-icons-faces)

(defun ik/modeline--highlight ()
  "Return a `mouse-face' to highlight an element when focussed."
  `((foreground-color . "#63B2FF")))

(defun ik/icon (icon-name)
  "Search ICON-NAME successively in different icon sources and return the first hit."
  (condition-case nil
      (all-the-icons-faicon icon-name :v-adjust -0.1)
    (error (all-the-icons-octicon icon-name :v-adjust -0.1))))

(defun ik/modeline--icon (icon-name icon-face)
  "Return a propertized icon for ICON-NAME, with a fixed height and v-adjust, using the ICON-FACE."
  (let ((icon (ik/icon icon-name)))
    (propertize
     icon
     'face (list icon-face
                 `(:family ,(all-the-icons-icon-family icon)
                   :height 1.5
                   :inherit)))))

(defun ik/modeline--icon-with-label (icon-name icon-label icon-label-face)
  "Return a propertized string for the ICON-NAME followed by the ICON-LABEL, both using the ICON-LABEL-FACE."
  (concat
   (ik/modeline--icon icon-name icon-label-face)
   " "
   (propertize (format "%s" icon-label)
               'face icon-label-face
               'display '(raise -0.12))))

;;
;; Flycheck
;;
(declare-function flycheck-count-errors  "ext:flycheck.el")
(defvar flycheck-current-errors)
(defvar flycheck-last-status-change)

(defun ik/modeline--flycheck-status ()
  "Flycheck issues with icons and colors.  No issue, no icon.  Return a single checkmark icon if there are no issues at all."
  (let-alist (flycheck-count-errors flycheck-current-errors)
    (let* ((errors   (or .error   0))
           (warnings (or .warning 0))
           (infos    (or .info    0)))
      (mapconcat
       'identity
       (cl-remove-if
        'null

        `(,(unless (zerop errors)
             (ik/modeline--icon-with-label "bomb" errors 'spaceline-flycheck-error))

          ,(unless (zerop warnings)
             (ik/modeline--icon-with-label "bell" warnings 'spaceline-flycheck-warning))

          ,(unless (zerop infos)
             (ik/modeline--icon-with-label "info" infos 'spaceline-flycheck-info))

          ,(when (zerop (+ errors warnings infos))
             (ik/modeline--icon "check" 'ik/all-the-icons))))

       "   "))))

(defun ik/modeline--flycheck-disabled ()
  "Flycheck disabled state string."
  (propertize (ik/modeline--icon "ban" 'ik/all-the-icons)
              'help-echo (concat "Flycheck disabled"
                                 "\nmouse-1: Enable Flycheck mode")
              'mouse-face (ik/modeline--highlight)
              'local-map (make-mode-line-mouse-map 'mouse-1 'flycheck-mode)))

(defun ik/modeline--flycheck-running ()
  "Flycheck running state string."
  (propertize (ik/modeline--icon "refresh" 'ik/all-the-icons)
              'help-echo "Flycheck running"))

(defun ik/modeline--flycheck-result ()
  "Flycheck result string."
  (propertize (ik/modeline--flycheck-status)
              'help-echo "mouse-1: Show results"
              'mouse-face (ik/modeline--highlight)
              'local-map (make-mode-line-mouse-map 'mouse-1 'flycheck-list-errors)))

(defun ik/modeline--flycheck-no-checker ()
  "Flycheck enabled, but no checker available state string."
  (propertize (ik/modeline--icon "question" 'spaceline-flycheck-warning)
              'help-echo "No checker associated"))

(defun ik/modeline--flycheck-errored ()
  "Flycheck error state string."
  (propertize (ik/modeline--icon "exclamation-triangle" 'spaceline-flycheck-error)
              'help-echo "Flycheck failed"))

(defun ik/modeline--flycheck-interrupted ()
  "Flycheck interrupted state string."
  (propertize (ik/modeline--icon "bolt" 'spaceline-flycheck-error)
              'help-echo "Flycheck interrupted"))

(defun ik/modeline--flycheck-suspicious ()
  "Flycheck suspicious state string."
  (propertize (ik/modeline--icon "random" 'spaceline-flycheck-error)
              'help-echo "Flycheck suspicious/unknown"))

(spaceline-define-segment ik-flycheck
  "Flycheck results or state mode line string."
  (cl-case flycheck-last-status-change
    (not-checked (ik/modeline--flycheck-disabled))
    (running     (ik/modeline--flycheck-running))
    (finished    (ik/modeline--flycheck-result))
    (no-checker  (ik/modeline--flycheck-no-checker))
    (errored     (ik/modeline--flycheck-errored))
    (interrupted (ik/modeline--flycheck-interrupted))
    (t           (ik/modeline--flycheck-suspicious)))
  :when (and active (bound-and-true-p flycheck-last-status-change)))

;;
;; Narrowing
;;
(spaceline-define-segment ik-narrowed
  "Mode line string to indicate a narrowed buffer."
  (propertize (ik/modeline--icon "filter" 'all-the-icons-purple)
              'help-echo "mouse-1: Widen the current file"
              'mouse-face (ik/modeline--highlight)
              'local-map (make-mode-line-mouse-map 'mouse-1 'widen))
  :when (buffer-narrowed-p))

;;
;; Multiple cursors
;;
(declare-function mc/num-cursors "ext:multiple-cursors.el")

(spaceline-define-segment ik-multiple-cursors
  "Mode line string to display the number of multiple cursors, if any."
  (propertize (ik/modeline--icon-with-label "i-cursor" (mc/num-cursors) 'all-the-icons-blue)
              'help-echo "mouse-1: End multiple cursor mode"
              'mouse-face (ik/modeline--highlight)
              'local-map (make-mode-line-mouse-map 'mouse-1 'multiple-cursors-mode))
  :when (bound-and-true-p multiple-cursors-mode))

;;
;; Git
;;
(defun ik/modeline--git-branch ()
  "Git branch name with icon."
  (let* ((branch (cadr (split-string vc-mode "Git[:-]")))
         (local-map (get-text-property 1 'local-map branch)))
    (propertize (ik/modeline--icon-with-label
                 (if (string= branch "master") "git-merge" "git-branch")
                 branch
                'ik/all-the-icons)
                'mouse-face (ik/modeline--highlight)
                'local-map local-map)))

(spaceline-define-segment ik-git-branch
  "Mode line string for git."
  (cond ((string-match "Git[:-]" vc-mode) (ik/modeline--git-branch))
        (t "not git"))
  :when (and active vc-mode))

;;
;; The mode line
;;
(spaceline-compile
  '((line-column
     :priority 70
     :when active)

    (buffer-id
     :priority 100
     :when (not (and buffer-file-name (buffer-modified-p))))
    (buffer-id
     :priority 100
     :when (and buffer-file-name (buffer-modified-p))
     :face (if active highlight-face 'spaceline-inactive-highlight-face))

    (ik-git-branch
     :priority 90)

    (ik-flycheck
     :priority 80)

    ((ik-narrowed ik-multiple-cursors)
     :priority 60))

  '((buffer-encoding
     :priority 90
     :when active)

    (major-mode
     :priority 80
     :when active)

    (minor-modes
     :priority 70
     :separator " "
     :when active)))

(setq-default
 mode-line-format
 '("%e" (:eval (spaceline-ml-main))))
