(provide 'all-configs)

(require 'my-emacs)
(require 'my-osx) ;; TODO: <fn> kann als Hyper-Key konfiguriert werden?
                  ;;       Und wollen wir das noch, nachdem wir ihn reichlich für Karabiner nutzen?
(require 'my-diminish)
(require 'my-modeline)
(require 'my-rainbow-delimiters)
(require 'my-whitespace)
(require 'my-which-key)
(require 'my-treemacs) ;; STOPPEDF RIGHT HERE – Weitere Keybindings
(require 'my-undo-tree)
(require 'my-multiple-cursors) ;; TODO: Check Bindings
(require 'my-ivy) ;; TODO: Was ist nochmal ivy vs. smex vs counsel?


;; ;; TODO: Wollen wir git-gutter? Wenn, dann magit und git-gutter in my-git konfigurieren.


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
(require 'my-flycheck) ;; TODO: Flycheck lernen/konfigurieren/für Modes aktivieren

(require 'my-magit) ;; TODO: magit-log-buffer-file noch an ein Shortcut binden?
                    ;;       Festlegen, welche Kommandos die Fensteraufteilung sprengen

(require 'my-keymap) ;; TODO: Nochmal die einzelnen Modes durchgehen und ggf. was umheben.
                     ;;       - CMD-k ist auf "Kill current buffer" gebunden. Wollen wir das behalten?
                     ;;       - Highlight Keybindings fände ich noch nett
                     ;;       - den mark-ring durchgehen / nutzen
                     ;;       Kürzel für
                     ;;       - cider-repl-clear-buffer
                     ;;       - delete-char (falls die Klammern mal falsch sind)
                     ;;       - ganze SExp löschen (paxedit, gelle? Oder msartparens?)
                     ;;       C-: ist im Clojure(script)-mode bereits an clojure-toggle-keyword-string gebunden
                     ;;       - multiple-cursors?

(require 'my-theme)

;; - simple-bookmarks
;; - dired+ -> dired mit konfigurierbarer Wiederverwendung der Buffer
;; - Hide Show (built-in minor mode)
;;   https://www.emacswiki.org/emacs/HideShow
;; highlight-symbol, highlight-symbol-at-point -> Automatische Hervorhebung, farbliche Hervorhebung
;; unhighlight-regexp
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
;; Tramp - eine Art... SSH Client?
;;
;; SQL Mode konfigurieren
;;   https://truongtx.me/2014/08/23/setup-emacs-as-an-sql-database-client
;;
;; impatient-mode (edit HTML files with live browser connection)
;;   https://github.com/skeeto/impatient-mode
;;
;; restclient -> http://emacsrocks.com/e15.html
;;
