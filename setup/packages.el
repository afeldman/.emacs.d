(require 'cl)
(require 'package)

(setq package-list  '(ace-jump-mode
                      ag
                      auto-complete
                      bundler
                      bbdb
                      cider
                      cl-lib
                      coffee-mode
                      enh-ruby-mode
                      expand-region
                      find-file-in-project
                      go-mode
                      rainbow-delimiters
                      paredit
                      smex
                      yaml-mode
                      markdown-mode
                      rspec-mode
                      nyan-mode
                      multiple-cursors
                      web-mode
                      rust-mode
                      dash
                      s
                      smartparens
                      guide-key
                      twittering-mode
                      gist
                      wgrep
                      restclient
                      feature-mode
                      jinja2-mode
                      sass-mode
                      magit
                      ))


(package-initialize)

;; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;;(el-get 'sync my-packages)


(provide 'packages)
