;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(setq inhibit-splash-screen t)
;; Larger fonts
(set-face-attribute 'default nil :height 150)
;; TAB width
(setq tab-width 4)
;; no tabs use whitespaces
(setq-default indent-tabs-mode nil)
;; Bug fix
(setq stack-trace-on-error t)
(setq imenu-auto-rescan t)
(ido-mode t)
(setq ido-enable-flex-matching t)

;; little blinking cursor
(setq blink-cursor nil)

;; display current row in mode-line
(setq column-number-mode t) 

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(require 'saveplace)
(setq-default save-place t)

(show-paren-mode 1)
(setq-default indent-tabs-mode nil)

;; Fix scrolling
(setq auto-window-vscroll nil)
;; Diable ring bell
(setq ring-bell-function 'ignore)
;; On error do not beep
(setq visible-bell t)
;; Remove trailing whitespaces
(remove-hook 'before-save-hook 'delete-trailing-whitespace)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
;; disable helbscreen on startup
(custom-set-variables '(inhibit-startup-screen t))
(custom-set-faces)

(defalias 'yes-or-no-p 'y-or-n-p)

(require 'cl)
(require 'ffap)
(require 'ansi-color)
(require 'recentf)

(provide 'sanity)
