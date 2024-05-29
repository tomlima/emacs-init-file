;; Stops startup message
(setq inhibit-splash-screen t)

;; Tree view
(global-set-key (kbd "<f9>") 'dir-treeview)

;; Highlight current line
(global-hl-line-mode 1)

;; Font size
(set-face-attribute 'default nil :height 115)


;; Maximize screen on startup
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Set default folder
(cd "C:\\Users\\TomLima\\repos" )

;; Set Margins
(set-window-margins (selected-window) 8 8)

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
(load-theme 'granger t)

;; Display line numbers
(global-display-line-numbers-mode)


;; Inihibit cl warning
(setq byte-compile-warnings '(cl-functions))

;; Packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(dir-treeview-default-root "C:\\Users\\TomLima\\repos")
 '(package-selected-packages
   '(sublime-themes dir-treeview-themes forest-blue-theme dir-treeview boron-theme prettier web-mode markdown-mode emmet-mode js2-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil))))
 '(dir-treeview-archive-face ((t (:inherit dir-treeview-default-filename-face :foreground "dark slate gray"))))
 '(dir-treeview-directory-face ((t (:inherit dir-treeview-default-filename-face :foreground "green"))))
 '(hl-line ((t (:extend t :background "dark slate gray" :distant-foreground "snow" :foreground "snow"))))
 '(isearch ((t (:background "blue" :foreground "green" :weight bold)))))

;; Allow use of emmet mode in an html or css buffer
(require 'emmet-mode)

;; web mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.ts\\'" . web-mode))

(defun my-web-mode-hook()
  "Hooks for web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  )

(add-hook 'web-mode-hook 'my-web-mode-hook)

;; Change spacing at top of buffer
(add-to-list 'default-frame-alist '(internal-border-width . 7))
