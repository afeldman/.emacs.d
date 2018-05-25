(setq my-packages
      '(rainbow-delimiters
        coffee-mode
        paredit
        cider
        find-file-in-project
        smex
        ido-ubiquitous
        undo-tree
        evil
        evil-surround
        evil-leader
        evil-exchange
        company-mode
        auto-complete
        enh-ruby-mode
        scss-mode
        yaml-mode
        markdown-mode
        rspec-mode
        ag
        bundler
        nyan-mode
        multiple-cursors
        ;;smooth-scroll
        ;;emacs-w3m
        expand-region
        cl-lib
        magit
        git-timemachine
        web-mode
        dash
        s
        smartparens
        clj-refactor
        guide-key
        typed-clojure-mode
        ace-jump-mode
        twittering-mode
        bbdb
        gist
        haskell-mode
        wgrep
        restclient
        feature-mode
        jinja2-mode
        rust-mode
        flymake-easy
        org-present
        tuareg-mode
        org-trello
        sass-mode
        magit))

(el-get 'sync my-packages)

;; Haskell
;;(el-get-bundle haskell/haskell-mode)
;;(el-get-bundle ghc-mod)

;; C/C++
;;(el-get-bundle clang-format
;;  :type http
;;  :url "https://llvm.org/svn/llvm-project/cfe/trunk/tools/clang-format/clang-format.el")

;; Go
;;(el-get-bundle go-mode)
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

(provide 'packages)
