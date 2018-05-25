;;(require 'el-get)
(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

(setq
 my-packages
 '(el-get
   ace-jump-mode
   ag
   auto-complete
   bundler
   bbdb
   cider
   clj-refactor
   cl-lib
   coffee-mode
   company-mode
   enh-ruby-mode
   escreen
   expand-region
   evil
   evil-surround
   evil-leader
   evil-exchange
   find-file-in-project
   go-mode
   rainbow-delimiters
   paredit
   smex
   ido-ubiquitous
   undo-tree
   scss-mode
   yaml-mode
   markdown-mode
   rspec-mode
   nyan-mode
   multiple-cursors
   magit
   git-timemachine
   web-mode
   dash
   s
   smartparens
   guide-key
   typed-clojure-mode
   twittering-mode
   gist
   wgrep
   restclient
   feature-mode
   jinja2-mode
   flymake-easy
   org-present
   tuareg-mode
   org-trello
   sass-mode
   magit))

;;(when (el-get-executable-find "cvs")
;;  (loop for p in '(smooth-scroll
;;                   emacs-w3m
;;                   emacs-goodies-el
;;                   )
;;  do (add-to-list 'my:el-get-packages p)))

;;(when (el-get-executable-find "svn")
;;  (loop for p in '(psvn    		; M-x svn-status
;;		   yasnippet		; powerful snippet mode
;;		   )
;;	do (add-to-list 'my:el-get-packages p)))

;;(setq my:el-get-packages
;;      (append my:el-get-packages
;;              (mapcar #'el-get-source-name el-get-sources)))

;;(el-get-bundle golint
;;               :type http
;;               :url "https://raw.githubusercontent.com/golang/lint/master/misc/emacs/golint.el")
;;(el-get-bundle go-guru
;;               :type http
;;               :url "https://raw.githubusercontent.com/dominikh/go-mode.el/master/go-guru.el")
;;(el-get-bundle nsf/gocode
;;               :name go-autocomplete)

;; Python
;;(el-get-bundle
;;               :name company-jedi
;;               :depends-on (jedi-core company-mode))

;; Perl
;; (el-get-bundle perlmode)

;; Ruby
;;(el-get-bundle ruby-block)
;;(el-get-bundle ruby-end)
;;(el-get-bundle inf-ruby)
;;(el-get-bundle dgutov/robe
;;               :name robe
;;               :depends (inf-ruby))

;; Emacs Lisp
;;(el-get-bundle purcell/elisp-slime-nav
;;               :name elisp-slime-nav)

;; Javascript
;;(el-get-bundle tern)
;;(el-get-bundle company-tern)
;;(el-get-bundle json-mode)

;; Markup language
;;(el-get-bundle markdown-mode)
;;(el-get-bundle markdown-toc)
;;(el-get-bundle yoshiki/yaml-mode)

;; HTML
;;(el-get-bundle fxbois/web-mode)
;;(el-get-bundle smihica/emmet)

;; shell
;;(el-get-bundle syohex/emacs-quickrun
;;               :name quickrun)
;;(el-get-bundle syohex/emacs-eshellutil
;;               :name eshellutil)

(el-get 'sync my-packages)

(provide 'packages)
