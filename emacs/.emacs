(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; Setup timing...
(add-hook 'emacs-startup-hook
          (lambda ()
            (message "Emacs ready in %s with %d garbage collections."
                     (format "%.2f seconds"
                             (float-time
                              (time-subtract after-init-time before-init-time)))
                     gcs-done)))

(setq gc-cons-threshold (* 8 1024 1024))

(setenv "SSH_AUTH_SOCK" (concat (getenv "XDG_RUNTIME_DIR") "/ssh-agent.socket"))
(setenv "PSQL_EDITOR" "emacsclient")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(awesome-tray-mode-line-active-color "#2fafff")
 '(awesome-tray-mode-line-inactive-color "#323232")
 '(backup-directory-alist '((".*" . "~/.backups")))
 '(bidi-paragraph-direction 'left-to-right)
 '(browse-url-browser-function 'eww-browse-url)
 '(c-default-style
   '((c-mode . "k&r")
     (c++-mode . "java")
     (java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu")))
 '(c-hanging-braces-alist
   '((block-open after)
     (block-close . c-snug-do-while)
     (statement-cont)
     (substatement-open after)
     (brace-list-open)
     (brace-entry-open)
     (extern-lang-open after)
     (namespace-open after)
     (module-open after)
     (composition-open after)
     (inexpr-class-open after)
     (inexpr-class-close before)
     (arglist-cont-nonempty)))
 '(c-offsets-alist
   '((substatement-open . +)
     (substatement-open . 0)
     (access-label . -)
     (statement-case-open . +)))
 '(column-number-mode t)
 '(compilation-ask-about-save t)
 '(compilation-context-lines nil)
 '(compilation-scroll-output t)
 '(custom-enabled-themes '(adwaita))
 '(custom-safe-themes
   '("14c79ed9d3b68f1320df62de2eadd77eb1253658338a42e0743bbce0e9fae8fe" "c414f69a02b719fb9867b41915cb49c853489930be280ce81385ff7b327b4bf6" "02fff7eedb18d38b8fd09a419c579570673840672da45b77fde401d8708dc6b5" "4d2a81f1bf4991302fce83f618d12fcbdceb9263c6d8b7c2d6c897600646d968" "e8825f26af32403c5ad8bc983f8610a4a4786eb55e3a363fa9acb48e0677fe7e" "c1126be58e0064385f8855eef3121df368d79ca001a748e9df8fe2fb6257d353" "d8dc153c58354d612b2576fea87fe676a3a5d43bcc71170c62ddde4a1ad9e1fb" "cdd26fa6a8c6706c9009db659d2dffd7f4b0350f9cc94e5df657fa295fffec71" default))
 '(describe-char-unidata-list
   '(name old-name general-category canonical-combining-class bidi-class decomposition decimal-digit-value digit-value numeric-value mirrored iso-10646-comment uppercase lowercase titlecase))
 '(diary-file "~/src/gtd/diary")
 '(dired-listing-switches "-lFaGh1v --group-directories-first")
 '(doc-view-image-width 1080)
 '(doc-view-pdf->png-converter-function 'doc-view-pdf->png-converter-mupdf)
 '(docker-image-columns
   '(("Repository" 60 "{{ json .Repository }}" nil nil)
     ("Tag" 20 "{{ json .Tag }}" nil nil)
     ("Id" 16 "{{ json .ID }}" nil nil)
     ("Created" 24 "{{ json .CreatedAt }}" nil
      (lambda
        (x)
        (format-time-string "%F %T"
                            (date-to-time x))))
     ("Size" 10 "{{ json .Size }}" docker-utils-human-size-predicate nil)))
 '(elpher-default-url-type "gemini")
 '(erc-fill-column 132)
 '(erc-hide-list '("JOIN" "PART" "QUIT"))
 '(erc-nick "jlarocco")
 '(eww-search-prefix "https://kagi.com/html/search?q=")
 '(exwm-floating-border-color "#646464")
 '(fill-column 80)
 '(flymake-error-bitmap '(flymake-double-exclamation-mark modus-theme-fringe-red))
 '(flymake-note-bitmap '(exclamation-mark modus-theme-fringe-cyan))
 '(flymake-warning-bitmap '(exclamation-mark modus-theme-fringe-yellow))
 '(font-lock-maximum-size nil)
 '(frame-inhibit-implied-resize nil)
 '(geiser-active-implementations '(gauche guile racket chicken chez mit chibi))
 '(geiser-gauche-binary "/usr/local/bin/gosh")
 '(global-undo-tree-mode t)
 '(grep-command "grep -i -n -e ")
 '(grep-find-use-xargs 'exec-plus)
 '(grep-highlight-matches t)
 '(grep-use-null-device t)
 '(grep-use-null-filename-separator t)
 '(highlight-tail-colors '(("#2f4a00" . 0) ("#00415e" . 20)))
 '(hippie-expand-try-functions-list
   '(try-expand-dabbrev try-expand-dabbrev-all-buffers try-expand-dabbrev-from-kill try-complete-lisp-symbol-partially try-complete-lisp-symbol try-complete-file-name-partially try-complete-file-name try-expand-all-abbrevs try-expand-list try-expand-line))
 '(hl-todo-keyword-faces
   '(("HOLD" . "#cfdf30")
     ("TODO" . "#feacd0")
     ("NEXT" . "#b6a0ff")
     ("THEM" . "#f78fe7")
     ("PROG" . "#00d3d0")
     ("OKAY" . "#4ae8fc")
     ("DONT" . "#80d200")
     ("FAIL" . "#ff8059")
     ("BUG" . "#ff8059")
     ("DONE" . "#44bc44")
     ("NOTE" . "#f0ce43")
     ("KLUDGE" . "#eecc00")
     ("HACK" . "#eecc00")
     ("TEMP" . "#ffcccc")
     ("FIXME" . "#ff9977")
     ("XXX+" . "#f4923b")
     ("REVIEW" . "#6ae4b9")
     ("DEPRECATED" . "#bfd9ff")))
 '(ibuffer-deletion-face 'modus-theme-mark-del)
 '(ibuffer-filter-group-name-face 'modus-theme-mark-symbol)
 '(ibuffer-formats
   '((mark modified read-only locked " "
           (name 32 32 :left :elide)
           " "
           (size 16 -1 :right)
           " "
           (mode 32 32 :left :elide)
           " " filename-and-process)
     (mark " "
           (name 16 -1)
           " " filename)))
 '(ibuffer-marked-face 'modus-theme-mark-sel)
 '(ibuffer-title-face 'modus-theme-pseudo-header)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(large-file-warning-threshold 200000000)
 '(lisp-mode-hook '(slime-editing-mode))
 '(ls-lisp-dirs-first t)
 '(org-babel-C++-compiler "clang++")
 '(org-babel-load-languages
   '((emacs-lisp . t)
     (shell . t)
     (lisp . t)
     (python . t)
     (C . t)
     (clojure . t)
     (ruby . t)))
 '(org-confirm-babel-evaluate nil)
 '(org-export-use-babel t)
 '(org-modules
   '(ol-bbdb ol-bibtex ol-docview ol-doi ol-eww ol-gnus ol-info ol-irc ol-mhe ol-rmail org-tempo ol-w3m))
 '(org-src-block-faces 'nil)
 '(org-src-tab-acts-natively t)
 '(org-startup-indented nil)
 '(org-startup-with-inline-images t)
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/")))
 '(package-native-compile t)
 '(package-selected-packages
   '(highlight-context-line docker docker-api docker-cli docker-compose-mode dockerfile-mode mastodon whitespace-cleanup-mode paredit-everywhere inferior-islisp inf-ruby enh-ruby-mode ruby-electric modus-themes geiser-gauche dired-rainbow elisp-slime-nav slime-repl-ansi-color tree-sitter tree-sitter-indent tree-sitter-langs ac-slime elpher csv-mode cmake-mode cmake-project yaml-mode grep-a-lot paredit git-walktree magit glsl-mode ace-window diredfl ada-mode ada-ref-man ag dired-quick-sort git-timemachine farmhouse-theme erlang flycheck-pycheckers flycheck-pyflakes elpy htmlize lua-mode abyss-theme slime-docker dylan-mode julia-shell geiser gopher markdown-mode haskell-mode))
 '(pdf-view-midnight-colors '("#ffffff" . "#100f10"))
 '(pop-up-windows t)
 '(pos-tip-tab-width 4)
 '(proced-format 'long)
 '(rustic-cargo-bin "/home/jeremiah/.cargo/bin/cargo")
 '(rustic-lsp-client nil)
 '(rustic-lsp-setup-p nil)
 '(safe-local-variable-values
   '((Package . DRAKMA)
     (Package . FLEXI-STREAMS)
     (diff-add-log-use-relative-names . t)
     (vc-git-annotate-switches . "-w")
     (eval cl-flet
           ((enhance-imenu-lisp
             (&rest keywords)
             (dolist
                 (keyword keywords)
               (add-to-list 'lisp-imenu-generic-expression
                            (list
                             (purecopy
                              (concat
                               (capitalize keyword)
                               (if
                                   (string=
                                    (substring-no-properties keyword -1)
                                    "s")
                                   "es" "s")))
                             (purecopy
                              (concat "^\\s-*("
                                      (regexp-opt
                                       (list
                                        (concat "define-" keyword))
                                       t)
                                      "\\s-+\\(" lisp-mode-symbol-regexp "\\)"))
                             2)))))
           (enhance-imenu-lisp "bookmarklet-command" "class" "command" "ffi-method" "function" "mode" "parenscript" "user-class"))
     (Package . CCL)
     (Package . CL-USER)
     (Syntax . COMMON-LISP)
     (Syntax . Common-lisp)
     (package . CL-GDAL)
     (Package . CLIM-GUI)
     (Package . URL)
     (Readtable . GLISP)
     (Encoding . utf-8)
     (Package . RENDERER)
     (Package . CLOSURE/CLIM-DEVICE)
     (Package . CLIM-INTERNALS)
     (Syntax . Common-Lisp)
     (Lowercase . Yes)
     (Base . 10)
     (Package . CLIM-DEMO)
     (Syntax . ANSI-Common-Lisp)))
 '(savehist-additional-variables '(search-ring regexp-search-ring))
 '(savehist-mode t)
 '(scroll-bar-mode nil)
 '(shell-file-name "zsh")
 '(slime-auto-start 'ask)
 '(slime-completion-at-point-functions
   '(slime-c-p-c-completion-at-point slime-filename-completion slime-simple-completion-at-point))
 '(slime-enable-evaluate-in-emacs t)
 '(slime-net-coding-system 'utf-8-unix)
 '(slime-port 4567)
 '(split-width-threshold 120)
 '(sql-connection-alist
   '(("map-viz Docker PostGIS"
      (sql-product 'postgres)
      (sql-user "postgres")
      (sql-password "postgres")
      (sql-server "localhost")
      (sql-database "postgis")
      (sql-port 54320))))
 '(tab-width 4)
 '(text-scale-mode-step 1.125)
 '(truncate-lines t)
 '(undo-tree-auto-save-history nil)
 '(undo-tree-history-directory-alist nil)
 '(use-file-dialog nil)
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   '((20 . "#ff8059")
     (40 . "#feacd0")
     (60 . "#f78fe7")
     (80 . "#f4923b")
     (100 . "#eecc00")
     (120 . "#cfdf30")
     (140 . "#f8dec0")
     (160 . "#bfebe0")
     (180 . "#44bc44")
     (200 . "#80d200")
     (220 . "#6ae4b9")
     (240 . "#4ae8fc")
     (260 . "#00d3d0")
     (280 . "#c6eaff")
     (300 . "#2fafff")
     (320 . "#79a8ff")
     (340 . "#00bcff")
     (360 . "#b6a0ff"))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "gray14" :foreground "bisque2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight regular :height 140 :width normal :foundry "UKWN" :family "JuliaMono"))))
 '(compilation-error ((t (:inherit error :inverse-video nil))))
 '(compilation-mode-line-exit ((t (:inherit compilation-info :background "black" :foreground "ForestGreen" :weight bold))))
 '(compilation-mode-line-fail ((t (:inherit compilation-error :foreground "spring green" :weight bold))))
 '(cursor ((t (:background "#00BBFF" :distant-foreground "green"))))
 '(diff-added ((t (:extend t :foreground "dark olive green" :weight bold))))
 '(error ((t (:foreground "chartreuse"))))
 '(font-lock-comment-face ((t (:foreground "deep sky blue"))))
 '(font-lock-keyword-face ((t (:foreground "olive drab" :weight bold))))
 '(highlight-indentation-current-column-face ((t (:background "gray17"))))
 '(region ((t (:extend t :background "pale green" :foreground "black"))))
 '(shadow ((t (:foreground "dim gray"))))
 '(show-paren-match ((t (:background "green" :foreground "#ffffff"))))
 '(slime-error-face ((t (:underline "red" :height 2.0))))
 '(slime-note-face ((t (:underline (:color "pale green" :style wave :position nil) :height 1.2))))
 '(slime-repl-output-face ((t (:inherit font-lock-string-face :height 0.9))))
 '(slime-warning-face ((t (:underline "orange1" :height 1.4))))
 '(whitespace-indentation ((t (:background "black" :foreground "gray20"))))
 '(whitespace-space ((t nil)))
 '(widget-field ((t (:extend t :box (:line-width (2 . 2) :color "gray" :style pressed-button))))))



;; The rest of the init file.

;; Replace "yes" or "no" prompt with 'y' or 'n'
(fset 'yes-or-no-p 'y-or-n-p)

;; This is supposed to speed up files with long lines.
(setq bidi-inhibit-bpa t)

;; Source: http://www.emacswiki.org/emacs-en/download/misc-cmds.el
(defun revert-buffer-no-confirm ()
  "Revert buffer without confirmation."
  (interactive)
  (revert-buffer :ignore-auto :noconfirm))


(defun toggle-window-dedicated ()
  "Toggle whether the current active window is dedicated (shows only the current
   buffer) or not"
  (interactive)
  (message
   (if (let (window (get-buffer-window (current-buffer)))
         (set-window-dedicated-p window (not (window-dedicated-p window))))
       "Window '%s' is dedicated"
     "Window '%s' is normal")
   (current-buffer)))


;; Keyboard shortcuts
(global-set-key (kbd "C-s-<down>") 'enlarge-window)
(global-set-key (kbd "C-s-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "C-s-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-s-<up>") 'shrink-window)

(global-set-key (kbd "s-<f8>") 'slime-disassemble-definition)
(global-set-key (kbd "s-<f7>") 'slime-macroexpand-1)
(global-set-key (kbd "s-<f6>") 'slime-macroexpand-all)

(global-set-key (kbd "s-q") 'eshell)
(global-set-key (kbd "C-x C-/") 'slime-hyperspec-lookup)
(global-set-key (kbd "C-x k") 'kill-current-buffer)
(global-set-key (kbd "C-x k") 'kill-current-buffer)
(global-set-key (kbd "M-l") (lambda () (interactive) (insert-char ?\λ)))

(global-set-key (kbd "s-,") 'xref-pop-marker-stack)
(global-set-key (kbd "s-.") 'xref-find-definitions)
(global-set-key (kbd "s-/") 'xref-find-references)
(global-set-key (kbd "s-5") 'query-replace-regexp)

(global-set-key (kbd "s-b") 'eww)
(global-set-key (kbd "s-c") 'comment-region)
(global-set-key (kbd "s-d") 'toggle-window-dedicated)
(global-set-key (kbd "s-e") 'eval-region)
(global-set-key (kbd "s-f") 'find-name-dired)
(global-set-key (kbd "s-g") 'rgrep)

(global-set-key (kbd "s-i") 'ibuffer)
(global-set-key (kbd "s-j") 'journal)

(global-set-key (kbd "C-x C-g") 'magit-file-dispatch)
(global-set-key (kbd "<f6>") 'magit-status-here)
(global-set-key (kbd "<f7>") 'magit-log-all)
(global-set-key (kbd "<f9>") 'undo-tree-visualize)
(global-set-key (kbd "<f12>") 'ibuffer)
(global-set-key (kbd "s-s") 'slime-selector)
(global-set-key (kbd "s-t") 'slime-toggle-fancy-trace)
(global-set-key (kbd "s-3") 'slime-inspect-definition)
(global-set-key (kbd "s-4") 'slime-inspect-presentation-at-point)

(global-set-key (kbd "s-u") 'uncomment-region)
(global-set-key (kbd "s-=") 'recompile)
(global-set-key (kbd "s-x") 'execute-extended-command)
(global-set-key (kbd "s-y") 'clipboard-kill-ring-save)
(global-set-key (kbd "<home>") 'back-to-indentation)
(global-set-key (kbd "<f5>") 'revert-buffer-no-confirm)
(global-set-key (kbd "<insert>") 'ielm)
(global-set-key (kbd "M-<space>") 'hippie-expand)

(add-to-list 'load-path "~/src/lisp/slime/")
(load "slime-autoloads")

(setf slime-lisp-implementations
      '((sbcl ;; Normal SBCL
         ("/usr/local/bin/sbcl" "--noinform --control-stack-size 4 --merge-core-pages")
         :coding-system utf-8-unix)

        (bench-sbcl ;; Benchmarking SBCL
         ("/home/jeremiah/oss_src/sbcl/src/runtime/sbcl" "--core /home/jeremiah/oss_src/sbcl/output/sbcl.core --noinform --control-stack-size 4 --merge-core-pages")
         :coding-system utf-8-unix)

        (strace-sbcl ;; Benchmarking SBCL
         ("strace" "/usr/local/bin/sbcl" "--noinform --control-stack-size 4 --merge-core-pages")
         :coding-system utf-8-unix)

        (nvprof-sbcl ;; Benchmarking SBCL
         ("nvprof" "/usr/local/bin/sbcl" "--noinform --control-stack-size 4 --merge-core-pages")
         :coding-system utf-8-unix)

        (sbcl-debug ;; SBCL with cons profiling and other debug features turned on
         ("/usr/local/bin/sbcl-debug" "--noinform --control-stack-size 4 --merge-core-pages")
         :coding-system utf-8-unix)

        (ccl
         ("/home/jeremiah/oss_src/ccl/ccl/lx86cl64")
         :coding-system utf-8-unix)

        (clisp
         ("/usr/local/bin/clisp")
         :coding-system utf-8-unix)

        (abcl
         ("/home/jeremiah/oss_src/abcl/abcl")
         :coding-system utf-8-unix)))


(slime-setup '(slime-fancy
               slime-mrepl
               slime-tramp
               slime-sprof
               slime-c-p-c
               slime-fancy-inspector
               slime-mdot-fu
               slime-trace-dialog))

(setq slime-default-lisp 'sbcl)
(setq slime-description-autofocus t)
(setq slime-net-coding-system 'utf-8-unix)
(setf slime-scratch-file (expand-file-name "~/.slime-scratch.lisp"))

(global-set-key (kbd "s-s") 'slime-selector)

;; (add-to-list 'load-path "~/src/lisp/sly/")
;; (require 'sly-autoloads)

;; (eval-after-load 'sly
;;   `(define-key sly-prefix-map (kbd "M-h") 'sly-documentation-lookup))

;; (setq inferior-lisp-program "/usr/local/bin/sbcl --noinform --control-stack-size 4 --merge-core-pages")


(load "/home/jeremiah/quicklisp/clhs-use-local" t)

(add-hook 'prog-mode-hook 'flyspell-prog-mode)

(setq disabled-command-function nil)

;; Taken from
;; https://writequit.org/denver-emacs/presentations/2016-05-24-elpy-and-dired.html
(require 'dired-x)
(require 'dired-aux)
;; (require 'dired-async)


(defun xah-dired-sort ()
  "Sort dired dir listing in different ways.
Prompt for a choice.
URL `http://ergoemacs.org/emacs/dired_sort.html'
Version 2018-12-23"
  (interactive)
  (let ($sort-by $arg)
    (setq $sort-by (ido-completing-read "Sort by:" '( "date" "size" "name" )))
    (cond
     ((equal $sort-by "name") (setq $arg "-Al "))
     ((equal $sort-by "date") (setq $arg "-Al -t"))
     ((equal $sort-by "size") (setq $arg "-Al -S"))
     ;; ((equal $sort-by "dir") (setq $arg "-Al --group-directories-first"))
     (t (error "logic error 09535" )))
    (dired-sort-other $arg )))

(require 'dired )
(define-key dired-mode-map (kbd "s") 'xah-dired-sort)


(require 'grep-a-lot)

(defun reset-sbcl ()
  (interactive)
  (mapcar (lambda (dirname)
            (delete-directory dirname t))
          (directory-files "~/.cache/common-lisp/" t "sbcl.*")))

(defun reset-ccl ()
  (interactive)
  (mapcar (lambda (dirname)
            (delete-directory dirname t))
          (directory-files "~/.cache/common-lisp/" t "ccl.*")))

(defun reset-all-lisps ()
  (interactive)
  (mapcar (lambda (dirname)
            (delete-directory dirname t))
          (directory-files "~/.cache/common-lisp/" t)))

(defun xfe ()
  (interactive)
  (async-shell-command "xfe"))


(setenv "PATH"
        (concat "/home/jeremiah/bin"
                ":" "/home/jeremiah/.cargo/bin"
                ":" "/usr/local/bin"
                ":" "/usr/bin"
                ":" "/bin:/home/jeremiah/.opam/default/bin"))

(defun insert-flag-emoji (country-code)
  (interactive "sCountry code? ")
  (let ((risl-char-name "REGIONAL INDICATOR SYMBOL LETTER ")
        (first-char (substring country-code 0 1))
        (second-char (substring country-code 1 2)))
    (insert-char (char-from-name (concat risl-char-name first-char)
                                 t))
    (insert-char (char-from-name (concat risl-char-name second-char)
                                 t))))

;; Stop SLIME's REPL from grabbing DEL,
;; which is annoying when backspacing over a '('
;; From https://wikemacs.org/wiki/Paredit-mode#SLIME_REPL
(defun override-slime-repl-bindings-with-paredit ()
  (define-key slime-repl-mode-map
              (read-kbd-macro paredit-backward-delete-key) nil))

(add-hook 'slime-repl-mode-hook 'override-slime-repl-bindings-with-paredit)

(autoload 'enable-paredit-mode "paredit"
  "Turn on pseudo-structural editing of Lisp code."
  t)

(add-hook 'emacs-lisp-mode-hook       'enable-paredit-mode)
(add-hook 'lisp-mode-hook             'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
(add-hook 'scheme-mode-hook           'enable-paredit-mode)
(add-hook 'clojure-mode-hook          'enable-paredit-mode)
(add-hook 'slime-repl-mode-hook       'enable-paredit-mode)

(add-hook 'prog-mode-hook 'paredit-everywhere-mode)

(add-hook 'prog-mode-hook 'highlight-indentation-current-column-mode)

(defun my/turn-on-hl-line-mode ()
  (hl-line-mode 1))
(add-hook 'compilation-mode-hook #'my/turn-on-hl-line-mode)
(defun my/update-compilation-hl-line ()
  (with-current-buffer next-error-last-buffer
    (when hl-line-mode (hl-line-highlight))))
(add-hook 'next-error-hook 'my/update-compilation-hl-line)

