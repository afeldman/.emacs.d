(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (require 'package)
  (add-to-list 'package-archives
               '("melpa" . "http://melpa.milkbox.net/packages/"))
               ;;("gnu" . "http://elpa.gnu.org/packages/")
               ;;("marmalade" . "http://marmalade-repo.org/packages/")
               ;;("melpa" . "http://melpa.milkbox.net/packages/"));;)
  (package-refresh-contents)
  (package-initialize)
  (package-install 'el-get)
  (require 'el-get))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(add-to-list 'el-get-user-package-directory "~/.emacs.d/el-get-user/el-get-init-files")
(el-get 'sync)

(provide 'elget)
