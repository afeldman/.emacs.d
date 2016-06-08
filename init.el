(add-to-list 'load-path "~/.emacs.d/init")
(server-start)
(require 'paths)
(require 'keys)
;;(require 'sanity)
;;(require 'compatibility)
;;(require 'setup-scratch-message)
;;(require 'setup-backup)
;;(require 'setup-elget)
;;(require 'setup-packages)
;;(require 'setup-helpers)
;;(require 'setup-hippie-expand)
;;(require 'setup-mode-line)
;;(require 'setup-auto-revert)
;;(require 'setup-agda)
;; (require 'sublimify)
;; (require 'emacsify)
;; (require 'movelines)
;;(require 'setup-mail)


;Syntax-Highlighting
(global-font-lock-mode t)

;higlight the marked region (C-SPC) and use commands (like
; latex-environment) on current region.
(transient-mark-mode t)

(setq blink-cursor nil)             ; Keinen blinkenden Cursor
(setq column-number-mode t)         ; Aktuelle Spalte in Mode-Line anzeigen
(setq visible-bell t)               ; Bei Fehlern nicht Piepsen 
(setq tab-width 4)                  ; Ein TAB sind vier Leerzeichen
(setq-default indent-tabs-mode nil) ; Keine TABs einfügen, verwende Leerzeichen

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;;; Anpassungen für AUCTeX
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(require 'tex-site)

;;; Anpassungen für RefTeX
(require 'reftex)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex) 
(add-hook 'latex-mode-hook 'turn-on-reftex) 
(setq reftex-plug-into-AUCTeX t)
(setq reftex-external-file-finders
      '(("tex" . "kpsewhich -format=.tex %f")
        ("bib" . "kpsewhich -format=.bib %f")))

(add-to-list 'auto-mode-alist '("wscript" . python-mode))
(add-to-list 'auto-mode-alist '("SConstruct" . python-mode))
(add-to-list 'auto-mode-alist '("SConscript" . python-mode))
