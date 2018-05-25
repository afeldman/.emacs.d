;; add the configuration setting path

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/setup")

;; start emacs in server mode.
;; This might minimize the time if you are using a lot of packages.
(server-start)

;; turn on the setups
(require 'sanity)
(require 'paths)
(require 'elget)
(require 'packages)
(require 'compatibility)
(require 'keys)

(require 'smexs)

;;(require 'setup-scratch-message)
;;(require 'setup-backup)
;;(require 'setup-helpers)
;;(require 'setup-hippie-expand)
;;(require 'setup-mode-line)
;;(require 'setup-auto-revert)
;;(require 'setup-agda)
;; (require 'sublimify)
;; (require 'emacsify)
;; (require 'movelines)
;;(require 'setup-mail)

;; provide the init module to load this module in other emacs lisp modules
(provide 'init)
