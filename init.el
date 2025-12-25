;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; NOTE: Commented out - using straight.el instead
;; (package-initialize)

;;; macOS Configuration
;; Homebrew paths (ARM64 Apple Silicon + Intel compatibility)
(when (eq system-type 'darwin)
  (add-to-list 'exec-path "/opt/homebrew/bin")      ;; Apple Silicon
  (add-to-list 'exec-path "/usr/local/bin")         ;; Intel
  (setenv "PATH" (concat (getenv "PATH") ":/opt/homebrew/bin:/usr/local/bin")))

;;; straight.el Bootstrap
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; add the configuration setting path
(add-to-list 'load-path "~/.emacs.d/setup")

;; turn on the setups
(require 'sanity)
(require 'compatibility)
(require 'keys)
(require 'paths)
(require 'elget)
;; NOTE: packages.el disabled - conflicts with straight.el
;; Use straight.el or use-package instead for package management
;; (require 'packages)

(require 'smexs)

;; Load Zork trilogy via straight.el
(load "~/.emacs.d/setup/straight-zork.el")

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
