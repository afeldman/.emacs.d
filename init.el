;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; add the configuration setting path
(add-to-list 'load-path "~/.emacs.d/setup")

;; turn on the setups
(require 'elget)
(require 'sanity)
(require 'compatibility)
(require 'keys)
(require 'paths)
(require 'packages)

(require 'smexs)

;; start emacs in server mode.
;; This might minimize the time if you are using a lot of packages.
(server-start)

;; provide the init module to load this module in other emacs lisp modules
(provide 'init)
