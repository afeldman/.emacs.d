;; Turn off mouse interface early in startup
;; to avoid momentary display
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; close the splash screen this is just irretating
(setq inhibit-splash-screen t)

;; Larger fonts
(set-face-attribute 'default nil :height 150)

;; TAB width. I like to set the tab width to a
;; standard length.
(setq tab-width 3)

;; no tabs use whitespaces
;; some problems like make might have a problem with this,
;; be shure about the affacts you can runinto using this
;; function
(setq-default indent-tabs-mode nil)

;; Bug fix
(setq stack-trace-on-error t)
(setq imenu-auto-rescan t)

;; interactive do things
;; https://www.emacswiki.org/emacs/InteractivelyDoThings
(ido-mode t)
(setq ido-enable-flex-matching t)

;; avoid the little blinking cursor
;;(setq blink-cursor nil)
(blink-cursor-mode 0)

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
