(provide 'all-configs)

(require 'my-emacs)
(require 'my-osx)
(require 'my-ido)
(require 'my-modeline)
(require 'my-rainbow-delimiters)
(require 'my-whitespace)

;; TODO: Adding paxedit and company? Change keybindings! http://mumble.net/~campbell/emacs/paredit.html
;; see emacs-old/.emacs.d/pack/stable/bindings-pack/config/default-bindings.el
(require 'my-structural-editing)

(require 'my-org)
(require 'my-save-places)
(require 'my-avy)
(require 'my-ace-window)
(require 'my-expand-region)
(require 'my-move-text) ;; TODO: Kooperiert nicht gut mit paredit/paxedit. Fott? Andere Keybinding?
(require 'my-clojure) ;; TODO: STOPPED RIGHT HERE AND NOT DONE YET!

;; TODO: Installieren?
;; counsel
;; which-key
;; restclient
;; impatient-mode (edit HTML files with live browser connection)
;; projectile?

;; multiple-cursors
;; (global-set-key (kbd "C-.") 'mc/mark-all-dwim)
;; (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
