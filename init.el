;;; init.el --- Emacs configuration with straight.el -*- lexical-binding: t -*-

;; Copyright (C) 2025 Anton Feldmann

;;; Commentary:

;; Main Emacs configuration using straight.el for package management.
;; package.el is disabled in early-init.el.

;;; Code:

;;; macOS Configuration
;; Homebrew paths (ARM64 Apple Silicon + Intel compatibility)
(when (eq system-type 'darwin)
  (add-to-list 'exec-path "/opt/homebrew/bin")      ;; Apple Silicon
  (add-to-list 'exec-path "/usr/local/bin")         ;; Intel
  (setenv "PATH" (concat (getenv "PATH") ":/opt/homebrew/bin:/usr/local/bin")))

;;; straight.el Bootstrap
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

;; Install use-package via straight.el
(straight-use-package 'use-package)
;; Make straight.el the default package manager for use-package
(setq straight-use-package-by-default t)

;; add the configuration setting path
(add-to-list 'load-path "~/.emacs.d/setup")

;; turn on the setups
(require 'sanity)
(require 'compatibility)
(require 'keys)
(require 'paths)
;; NOTE: elget.el disabled - uses package.el which conflicts with straight.el
;; (require 'elget)
;; NOTE: packages.el disabled - conflicts with straight.el
;; Use straight.el or use-package instead for package management
;; (require 'packages)

(require 'smexs)

;; Load Zork trilogy via straight.el
(load "~/.emacs.d/setup/straight-zork.el")

;; start emacs in server mode.
;; This might minimize the time if you are using a lot of packages.
(server-start)

;; provide the init module to load this module in other emacs lisp modules
(provide 'init)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(org-trello-current-prefix-keybinding "C-c o"))
 ;; NOTE: package-selected-packages removed - using straight.el instead
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
