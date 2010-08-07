(setq default-frame-alist
      '((top . 0) (left . 0)
        (width . 120) (height . 36)
        (cursor-color . "red")
        (cursor-type . box)
        (foreground-color . "gray70")
        (background-color . "gray5")))

(global-set-key "\C-\M-j" 'goto-line)
(global-set-key "\C-\M-c" 'comment-region)
(global-set-key "\C-\M-u" 'uncomment-region)
(global-set-key [f5] 'revert-buffer)
(global-set-key "\C-\M-g" 'web-search)
(global-set-key "\C-\M-t" 'lookup-tri)
(global-set-key "\C-\M-p" 'run-perl-one-liner)
(global-set-key [(control shift tab)] 'decrease-left-margin)
(global-set-key [( control tab)] 'increase-left-margin)
(global-set-key [?\C-.] 'next-error)
(global-set-key [?\C-\,] 'previous-error)
(global-set-key [?\C-\'] 'dabbrev-expand)
(global-set-key [mouse-4] 'scroll-down)
(global-set-key [mouse-5] 'scroll-up)
(global-set-key [?\M-\C-=] 'recompile)
(global-set-key [?\M-\C-+] 'compile)
(global-set-key [?\C-\]] 'match-paren)

(add-to-list 'auto-mode-alist '("\\.\\([pP][Llm]\\|al\\)\\'" . perl-mode))
(add-to-list 'interpreter-mode-alist '("perl" . perl-mode))
(add-to-list 'interpreter-mode-alist '("perl5" . perl-mode))
(add-to-list 'interpreter-mode-alist '("miniperl" . perl-mode))

;; Turn off annoying splitting in Emacs 23.1
(setq split-width-threshold nil)
(setq split-height-threshold 15)

(put 'set-goal-column 'disabled nil)
(setq column-number-mode t)
(setq inhibit-startup-message t)
(setq inhibit-splash-screen t)
(setq compilation-window-height 15)
(setq grep-window-height 15)

(setq compile-command "make -k")

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(backup-directory-alist (quote ((".*" . "~/.backups"))))
 '(c-default-style (quote ((c-mode . "k&r") (c++-mode . "java") (java-mode . "java") (awk-mode . "awk") (other . "gnu"))))
 '(c-offsets-alist (quote ((substatement-open . 0) (substatement-open . 0) (access-label . -) (statement-case-open . 0))))
 '(compilation-scroll-output t)
 '(compilation-window-height 15)
 '(grep-command "grep -i -n -e ")
 '(grep-window-height 15)
 '(indent-tabs-mode nil)
 '(show-paren-mode t)
 '(tab-stop-list (quote (4 8 12 16 20 24 28 32 36 40 44 48 52 56 60)))
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(menu-bar-mode nil)
 '(transient-mark-mode nil)
 '(temp-buffer-max-height 15))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :background "black" :foreground "grey80" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 95 :width normal :family "bitstream vera sans mono"))))
 '(font-lock-builtin-face ((((class color) (min-colors 88) (background dark)) (:foreground "LightSlateBlue"))))
 '(font-lock-comment-delimiter-face ((default (:inherit font-lock-comment-face :foreground "OrangeRed3")) (((class color) (min-colors 16)) nil)))
 '(font-lock-comment-face ((((class color) (min-colors 88) (background dark)) (:foreground "OrangeRed3"))))
 '(font-lock-keyword-face ((((class color) (min-colors 88) (background dark)) (:foreground "SteelBlue"))))
 '(font-lock-string-face ((((class color) (min-colors 88) (background dark)) (:foreground "ForestGreen"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 88) (background dark)) (:foreground "orange"))))
 '(mumamo-background-chunk-major ((((class color) (min-colors 88) (background dark)) (:background "gray30"))))
 '(mumamo-background-chunk-submode ((default nil) (nil (:background "grey20")))))

(setq frame-title-format
  '("" (buffer-file-name "%f" (dired-directory dired-directory "%b"))))

;; ;; Added to use tabs instead of spaces
;; ;; Turn on tabs
(setq indent-tabs-mode nil)
(setq-default indent-tabs-mode nil)

;; Set the tab width
(setq tab-width 4)
(setq c-basic-offset 4)

(fset 'yes-or-no-p 'y-or-n-p)

(load "~/.emacs_stuff/my_functions.el")

(put 'downcase-region 'disabled nil)
