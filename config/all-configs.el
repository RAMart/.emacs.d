(provide 'all-configs)

(require 'my-emacs)

(require 'my-osx)
(require 'my-diminish) ;; TODO: Nochmal reinschauen. Zusätzlich noch rich-minority-mode?
(require 'my-modeline)
(require 'my-rainbow-delimiters)
(require 'my-whitespace)
(require 'my-which-key) ;; TODO: Darf für transient-maps nicht die Eingabezeile blockieren
(require 'my-treemacs) ;; TODO: Einrückung kaputt?
(require 'my-undo-tree)
(require 'my-multiple-cursors)
(require 'my-ivy)

;; ;; TODO: flycheck mit clj-kondo

;; ;; (defface error-face
;; ;;   '((t (:foreground "#CC5353"))) "Red Highlight")

;; ;; (defface success-face
;; ;;   '((t (:foreground "yellow" :background "#555577"))) "Green Highlight")

;; ;;  TODO: TRAMP - eine Art... SSH Client?


;; ;; TODO: Search And Replace Facility
;; ;;   counsel-git-grep (benötig – natürlich – git)
;; ;;   find-grep-dired
;; ;;   http://ergoemacs.org/emacs/find_replace_inter.html

;; ;;   Add Paxedit + ParEdit
;; ;;   ODER smartparens? https://github.com/Fuco1/smartparens
;; ;;   Change keybindings? http://mumble.net/~campbell/emacs/paredit.html
;; ;;   see emacs-old/.emacs.d/pack/stable/bindings-pack/config/default-bindings.el
(require 'my-structural-editing)

(require 'my-org)
(require 'my-markdown)
(require 'my-save-places)
(require 'my-ediff) ;; TODO: Diffs und Merges üben. Sind die Farben i.O.?
(require 'my-avy) ;; TODO: Die Shortcuts finde ich nicht so eingänglich.
(require 'my-ace-window)
(require 'my-expand-region)
(require 'my-company)
(require 'my-move-text) ;; TODO: Kooperiert nicht gut mit paredit/paxedit. Fott? Andere, Mode-spezifische Keybindings?
(require 'my-clojure) ;; TODO: STOPPED RIGHT HERE AND NOT DONE YET!

(require 'my-magit) ;; TODO: magit-log-buffer-file noch an ein Shortcut binden?
                    ;;       Festlegen, welche Kommandos die Fensteraufteilung sprengen

(require 'my-keymap) ;; TODO: Nochmal die einzelnen Modes durchgehen und ggf. was umheben.
                     ;;       Kürzel für
                     ;;       - cider-repl-clear-buffer
                     ;;       - delete-char (falls die Klammern mal falsch sind)
                     ;;       - ganze SExp löschen (paxedit, gelle? Oder msartparens?)
                     ;;       C-: ist im Clojure(script)-mode bereits an clojure-toggle-keyword-string gebunden
                     ;;       - multiple-cursors?

;; TODO: Inspirationsquellen:
;; https://github.com/hemmvm/dotemacs/blob/master/init.el
;; https://github.com/hemmvm/dotemacs/blob/master/site-lisp/setup--sane-defaults.el

;; - simple-bookmarks
;; - dired+ -> dired mit konfigurierbarer Wiederverwendung der Buffer
;; - Hide Show (built-in minor mode)
;;   https://www.emacswiki.org/emacs/HideShow
;; highlight-symbol -> Automatische Hervorhebung, farbliche Hervorhebung
;; smartrep -> In einen Kontext gehen und dort Befehle wiederholen, bis C-g
;; - flycheck -> Lint as you type, zusammen mit clj-kondo vielleicht?






;;
;; POSTPONED
;; ---------
;;
;; projectile
;;   NOTE: Projectile requires this setting for ivy completion:
;;   (setq projectile-completion-system 'ivy)
;;
;; SQL Mode konfigurieren
;;   https://truongtx.me/2014/08/23/setup-emacs-as-an-sql-database-client
;;
;; impatient-mode (edit HTML files with live browser connection)
;;   https://github.com/skeeto/impatient-mode
;;
;; restclient -> http://emacsrocks.com/e15.html
;;
