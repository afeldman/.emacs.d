(add-to-list 'load-path "~/.emacs.d/module")

;; Extra bin folders
(add-to-list 'exec-path "/usr/local/bin")
(add-to-list 'exec-path "~/local/bin")

;; Path to binary files
(setq-default ispell-program-name "/usr/bin/aspell")

(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell
         (substring
          (shell-command-to-string "$SHELL -i -c 'echo $PATH'")
          0 -1)))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))

(if window-system (set-exec-path-from-shell-PATH))

(provide 'paths)
