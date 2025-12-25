;;; early-init.el --- Early initialization -*- lexical-binding: t -*-

;; Copyright (C) 2025 Anton Feldmann

;; This file is loaded before package.el and init.el

;;; Commentary:

;; Disable package.el completely in favor of straight.el
;; This must be done in early-init.el to prevent package.el from loading.

;;; Code:

;; Disable package.el completely - we use straight.el instead
(setq package-enable-at-startup nil)

;; Prevent Emacs from loading outdated bytecode
(setq load-prefer-newer t)

;; Increase garbage collection threshold for faster startup
(setq gc-cons-threshold most-positive-fixnum
      gc-cons-percentage 0.6)

;; Restore normal GC behavior after startup
(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold 16777216  ;; 16MB
                  gc-cons-percentage 0.1)))

;;; early-init.el ends here
