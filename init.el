;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; add the configuration setting path
(add-to-list 'load-path "~/.emacs.d/setup")

;; turn on the setups
(require 'sanity)
(require 'compatibility)
(require 'keys)
(require 'paths)
(require 'elget)
(require 'packages)

(require 'smexs)

;; start emacs in server mode.
;; This might minimize the time if you are using a lot of packages.
(server-start)

;; provide the init module to load this module in other emacs lisp modules
(provide 'init)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(org-trello-current-prefix-keybinding "C-c o")
 '(package-selected-packages
   (quote
    (el-get magit yaml-mode wgrep web-mode twittering-mode smex smartparens sass-mode rust-mode rspec-mode restclient rainbow-delimiters paredit org-trello org-present nyan-mode multiple-cursors markdown-mode jinja2-mode guide-key go-mode gist flymake-easy find-file-in-project feature-mode expand-region enh-ruby-mode coffee-mode cider bundler bbdb auto-complete ag ace-jump-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
