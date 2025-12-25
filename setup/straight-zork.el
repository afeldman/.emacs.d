;;; straight-zork.el --- straight.el configuration for Zork games -*- lexical-binding: t -*-

;; Copyright (C) 2025 Anton Feldmann

;; Author: Anton Feldmann
;; URL: https://github.com/afeldman/zork-emacs
;; Version: 0.1.0
;; Package-Requires: ((emacs "27.1"))

;; This file is NOT part of GNU Emacs.

;;; Commentary:

;; Complete straight.el configuration for installing and running
;; the Zork trilogy in Emacs. This setup includes:
;;
;; - straight.el bootstrap
;; - emacs-zmachine (ZIL engine)
;; - zork-emacs (Zork I, II, III games)
;; - macOS Homebrew path configuration
;; - use-package integration (optional)
;;
;; Usage:
;;   Add to ~/.emacs.d/init.el:
;;     (load "~/.emacs.d/setup/straight-zork.el")
;;
;; Then restart Emacs or evaluate the buffer.
;; Start games with: M-x zork-play-game

;;; Code:

;; Bootstrap straight.el package manager
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; macOS Homebrew paths (ARM64 + Intel compatibility)
(when (eq system-type 'darwin)
  (add-to-list 'exec-path "/opt/homebrew/bin")      ;; Apple Silicon
  (add-to-list 'exec-path "/usr/local/bin")         ;; Intel
  (setenv "PATH" (concat (getenv "PATH") ":/opt/homebrew/bin:/usr/local/bin")))

;; Install use-package and enable straight.el integration
(straight-use-package 'use-package)
;; CRITICAL: Enable :straight keyword in use-package
(setq straight-use-package-by-default nil)  ;; Explicit :straight required
(eval-when-compile
  (require 'use-package))

;;; ZIL Engine Installation

(use-package emacs-zmachine
  :straight (:type git
             :host github
             :repo "afeldman/emacs-zmachine"
             :branch "master"
             :files ("elisp/*.el" "emacs-zmachine-pkg.el" "README.md"))
  :config
  (message "emacs-zmachine (ZIL engine) loaded successfully."))

;;; Zork Games Installation

(use-package zork-emacs
  :straight (:type git
             :host github
             :repo "afeldman/zork-emacs"
             :branch "master"
             :files ("elisp/*.el" "zork-emacs-pkg.el" "README.md"))
  :commands (zork-play-game zork-i zork-ii zork-iii)
  :config
  (message "Zork trilogy loaded! Use M-x zork-play-game to start."))

;;; Keybindings (optional)

;; NOTE: Using C-c C-z as prefix to avoid conflicts
;; C-c z conflicts with single key + prefix requirement

;; Quick launcher for Zork games
(global-set-key (kbd "C-c C-z") 'zork-play-game)

;; Individual game shortcuts (use prefix C-c C-z then number)
;; For direct shortcuts, use longer sequences:
(global-set-key (kbd "C-c M-z 1") 'zork-i)
(global-set-key (kbd "C-c M-z 2") 'zork-ii)
(global-set-key (kbd "C-c M-z 3") 'zork-iii)

;;; Customization (optional)

;; Automatically save Zork game state on exit
;; (add-hook 'kill-emacs-hook
;;           (lambda ()
;;             (when (get-buffer "*Zork*")
;;               (with-current-buffer "*Zork*"
;;                 ;; Save game state logic here
;;                 (message "Zork session saved.")))))

;;; Package Update Commands

;; Update ZIL engine:   M-: (straight-pull-package 'emacs-zmachine)
;; Update Zork games:   M-: (straight-pull-package 'zork-emacs)
;; Rebuild packages:    M-: (straight-rebuild-package 'zork-emacs)

(provide 'straight-zork)

;;; straight-zork.el ends here
