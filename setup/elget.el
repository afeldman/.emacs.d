(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil t)
  (url-retrieve
   "https://github.com/dimitri/el-get/raw/master/el-get-install.el"
   (lambda (s)
     (end-of-buffer)
     (eval-print-last-sexp))))

;;(unless (require 'el-get nil 'noerror)
;;  (require 'package)
;;  (add-to-list 'package-archives
;;               '("melpa" . "http://melpa.org/packages/"))
;;  (package-refresh-contents)
;;  (package-initialize)
;;  (package-install 'el-get)
;;  (require 'el-get))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
;;(el-get 'sync)

(provide 'elget)
