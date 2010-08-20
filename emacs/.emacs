(setq default-frame-alist
      '((top . 0) (left . 0)
        (width . 120) (height . 36)
        (cursor-color . "red")
        (cursor-type . box)
        (foreground-color . "gray70")
        (background-color . "gray5")))

(load "~/.emacs_stuff/my_functions.el")

(global-set-key "\C-\M-j" 'goto-line)
(global-set-key "\C-\M-c" 'comment-region)
(global-set-key "\C-\M-u" 'uncomment-region)
(global-set-key [f5] 'revert-buffer)
(global-set-key "\C-\M-p" 'replace-python-exp)
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

(global-set-key [f7] 'toggle-kbd-macro-recording-on)
(global-set-key [f8] 'call-last-kbd-macro)

(global-set-key [( control \) )] 'find-char)
(global-set-key [( control \( )] 'find-char-backward)

(global-set-key [( control meta \) )] 'find-char-before)
(global-set-key [( control meta \( )] 'find-char-backward-after)

(global-set-key [(control f9)]  'af-bookmark-toggle )
(global-set-key [f9]  'af-bookmark-cycle-forward )
(global-set-key [(shift f9)]  'af-bookmark-cycle-reverse )
(global-set-key [(control shift f9)]  'af-bookmark-clear-all )


(setq confirm-kill-emacs
      (lambda (e)
        (y-or-n-p-with-timeout
         "Really exit Emacs (automatically exits in 15 secs)? " 15 t)))

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

;; ;; Added to use tabs instead of spaces
;; ;; Turn on tabs
(setq indent-tabs-mode nil)
(setq-default indent-tabs-mode nil)

;; Set the tab width
(setq tab-width 4)
(setq c-basic-offset 4)

(put 'downcase-region 'disabled nil)
(fset 'yes-or-no-p 'y-or-n-p)

(setq compile-command "make -k")

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(backup-directory-alist (quote ((".*" . "~/.backups"))))
 '(c-default-style (quote ((c-mode . "k&r") (c++-mode . "java") (java-mode . "java") (awk-mode . "awk") (other . "gnu"))))
 '(c-hanging-braces-alist (quote ((block-open after) (block-close . c-snug-do-while) (statement-cont) (substatement-open after) (brace-list-open) (brace-entry-open) (extern-lang-open after) (namespace-open after) (module-open after) (composition-open after) (inexpr-class-open after) (inexpr-class-close before) (arglist-cont-nonempty))))
 '(c-offsets-alist (quote ((substatement-open . 0) (substatement-open . 0) (access-label . -) (statement-case-open . 0))))
 '(compilation-scroll-output t)
 '(compilation-window-height 15)
 '(describe-char-unidata-list (quote (name old-name general-category canonical-combining-class bidi-class decomposition decimal-digit-value digit-value numeric-value mirrored iso-10646-comment uppercase lowercase titlecase)))
 '(column-number-mode t)
 '(grep-command "grep -i -n -e ")
 '(grep-window-height 15)
 '(indent-tabs-mode nil)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tab-stop-list (quote (4 8 12 16 20 24 28 32 36 40 44 48 52 56 60)))
 '(tab-width 4)
 '(font-lock-maximum-size nil)
 '(tool-bar-mode nil)
 '(menu-bar-mode nil)
 '(fill-column 100)
 '(transient-mark-mode nil)
 '(temp-buffer-max-height 15)
 '(visible-cursor t)
 '(which-func-modes t)
 '(which-function-mode t)
 '(shell-file-name "zsh"))

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
 '(font-lock-variable-name-face ((((class color) (min-colors 88) (background dark)) (:foreground "orange")))))

(setq frame-title-format
  '("" (buffer-file-name "%f" (dired-directory dired-directory "%b"))))
