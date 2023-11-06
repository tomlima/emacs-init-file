;; Stops startup message
(setq inhibit-splash-screen t)

;; Maximize screen on startup
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Disable menu on startup
(menu-bar-mode -1)

;; Disable tools on startup
(tool-bar-mode -1)

;; Disable scrollbar on startup
(scroll-bar-mode -1)

;; Set "gnu" style identing for c
(setq c-default-style "linux"
      c-basic-offset 4)

;; Turn on electric pair mode
(electric-pair-mode 1)

;; Add custom load path for themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; Load custom theme
(load-theme 'dracula t)

;; Display line numbers
(global-display-line-numbers-mode)
