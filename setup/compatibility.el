;Syntax-Highlighting
(global-font-lock-mode t)

;higlight the marked region (C-SPC) and use commands (like
; latex-environment) on current region.
(transient-mark-mode t)

(when (not (fboundp 'read-only-mode))
  (defalias 'read-only-mode 'toggle-read-only))

(when window-system
  (menu-bar-mode))

;; Extra keybindings for when working in tty
(global-set-key (kbd "M-[ c") (kbd "C-<right>"))
(global-set-key (kbd "M-[ d") (kbd "C-<left>"))
(global-set-key (kbd "M-[ a") (kbd "C-<up>"))
(global-set-key (kbd "M-[ b") (kbd "C-<down>"))
(global-set-key (kbd "C-c M-[ c") (kbd "C-c C-<right>"))
(global-set-key (kbd "C-c M-[ d") (kbd "C-c C-<left>"))
(global-set-key (kbd "C-c M-[ a") (kbd "C-c C-<up>"))
(global-set-key (kbd "C-c M-[ b") (kbd "C-c C-<down>"))
(global-set-key (kbd "ESC <down>") (kbd "M-<down>"))
(global-set-key (kbd "ESC <up>") (kbd "M-<up>"))

;; Add those escape sequences to iterm2.
(define-key input-decode-map "\e[1;4A" [M-up])
(define-key input-decode-map "\e[1;4B" [M-down])
(define-key input-decode-map "\e[1;4C" [M-right])
(define-key input-decode-map "\e[1;4D" [M-left])

(define-key input-decode-map "\e[1;5A" [C-up])
(define-key input-decode-map "\e[1;5B" [C-down])
(define-key input-decode-map "\e[1;5C" [C-right])
(define-key input-decode-map "\e[1;5D" [C-left])

(define-key input-decode-map "\e[1;8A" [C-M-up])
(define-key input-decode-map "\e[1;8B" [C-M-down])
(define-key input-decode-map "\e[1;8C" [C-M-right])
(define-key input-decode-map "\e[1;8D" [C-M-left])

(provide 'compatibility)
