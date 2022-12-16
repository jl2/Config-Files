(deftheme jeremiah-light-theme-2022
  "Created 2022-11-19.")

(custom-theme-set-variables
 'jeremiah-light-theme-2022
 '(awesome-tray-mode-line-active-color "#2fafff")
 '(awesome-tray-mode-line-inactive-color "#323232")
 '(backup-directory-alist '((".*" . "~/.backups")))
 '(bidi-paragraph-direction 'left-to-right)
 '(browse-url-browser-function 'eww-browse-url)
 '(c-default-style '((c-mode . "k&r") (c++-mode . "java") (java-mode . "java") (awk-mode . "awk") (other . "gnu")))
 '(c-hanging-braces-alist '((block-open after) (block-close . c-snug-do-while) (statement-cont) (substatement-open after) (brace-list-open) (brace-entry-open) (extern-lang-open after) (namespace-open after) (module-open after) (composition-open after) (inexpr-class-open after) (inexpr-class-close before) (arglist-cont-nonempty)))
 '(c-offsets-alist '((substatement-open . +) (substatement-open . 0) (access-label . -) (statement-case-open . +)))
 '(compilation-scroll-output t)
 '(custom-safe-themes '("c414f69a02b719fb9867b41915cb49c853489930be280ce81385ff7b327b4bf6" "02fff7eedb18d38b8fd09a419c579570673840672da45b77fde401d8708dc6b5" "4d2a81f1bf4991302fce83f618d12fcbdceb9263c6d8b7c2d6c897600646d968" "e8825f26af32403c5ad8bc983f8610a4a4786eb55e3a363fa9acb48e0677fe7e" "c1126be58e0064385f8855eef3121df368d79ca001a748e9df8fe2fb6257d353" "d8dc153c58354d612b2576fea87fe676a3a5d43bcc71170c62ddde4a1ad9e1fb" "cdd26fa6a8c6706c9009db659d2dffd7f4b0350f9cc94e5df657fa295fffec71" default))
 '(describe-char-unidata-list '(name old-name general-category canonical-combining-class bidi-class decomposition decimal-digit-value digit-value numeric-value mirrored iso-10646-comment uppercase lowercase titlecase))
 '(diary-file "~/src/gtd/diary")
 '(dired-listing-switches "-lFaGh1v --group-directories-first")
 '(doc-view-image-width 1080)
 '(doc-view-pdf->png-converter-function 'doc-view-pdf->png-converter-mupdf)
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
 '(grep-command "grep -i -n -e ")
 '(grep-find-use-xargs 'exec-plus)
 '(grep-highlight-matches t)
 '(grep-use-null-device t)
 '(grep-use-null-filename-separator t)
 '(highlight-tail-colors '(("#2f4a00" . 0) ("#00415e" . 20)))
 '(hippie-expand-try-functions-list '(try-expand-dabbrev try-expand-dabbrev-all-buffers try-expand-dabbrev-from-kill try-complete-lisp-symbol-partially try-complete-lisp-symbol try-complete-file-name-partially try-complete-file-name try-expand-all-abbrevs try-expand-list try-expand-line))
 '(hl-todo-keyword-faces '(("HOLD" . "#cfdf30") ("TODO" . "#feacd0") ("NEXT" . "#b6a0ff") ("THEM" . "#f78fe7") ("PROG" . "#00d3d0") ("OKAY" . "#4ae8fc") ("DONT" . "#80d200") ("FAIL" . "#ff8059") ("BUG" . "#ff8059") ("DONE" . "#44bc44") ("NOTE" . "#f0ce43") ("KLUDGE" . "#eecc00") ("HACK" . "#eecc00") ("TEMP" . "#ffcccc") ("FIXME" . "#ff9977") ("XXX+" . "#f4923b") ("REVIEW" . "#6ae4b9") ("DEPRECATED" . "#bfd9ff")))
 '(ibuffer-deletion-face 'modus-theme-mark-del)
 '(ibuffer-filter-group-name-face 'modus-theme-mark-symbol)
 '(ibuffer-formats '((mark modified read-only locked " " (name 32 32 :left :elide) " " (size 16 -1 :right) " " (mode 32 32 :left :elide) " " filename-and-process) (mark " " (name 16 -1) " " filename)))
 '(ibuffer-marked-face 'modus-theme-mark-sel)
 '(ibuffer-title-face 'modus-theme-pseudo-header)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(lisp-mode-hook '(slime-editing-mode))
 '(ls-lisp-dirs-first t)
 '(org-babel-C++-compiler "clang++")
 '(org-babel-load-languages '((emacs-lisp . t) (shell . t) (lisp . t) (python . t) (C . t) (clojure . t) (ruby . t)))
 '(org-confirm-babel-evaluate nil)
 '(org-export-use-babel t)
 '(org-modules '(ol-bbdb ol-bibtex ol-docview ol-doi ol-eww ol-gnus ol-info ol-irc ol-mhe ol-rmail org-tempo ol-w3m))
 '(org-src-block-faces nil)
 '(org-src-tab-acts-natively t)
 '(org-startup-indented nil)
 '(org-startup-with-inline-images t)
 '(package-archives '(("gnu" . "https://elpa.gnu.org/packages/") ("melpa" . "https://melpa.org/packages/")))
 '(package-native-compile t)
 '(package-selected-packages '(mastodon whitespace-cleanup-mode paredit-everywhere inferior-islisp inf-ruby enh-ruby-mode ruby-electric modus-themes geiser-gauche dired-rainbow elisp-slime-nav slime-repl-ansi-color tree-sitter tree-sitter-indent tree-sitter-langs ac-slime elpher csv-mode cmake-mode cmake-project yaml-mode grep-a-lot paredit git-walktree magit glsl-mode ace-window diredfl ada-mode ada-ref-man ag dired-quick-sort git-timemachine farmhouse-theme erlang flycheck-pycheckers flycheck-pyflakes elpy htmlize lua-mode abyss-theme slime-docker dylan-mode julia-shell geiser gopher markdown-mode haskell-mode))
 '(pdf-view-midnight-colors '("#ffffff" . "#100f10"))
 '(pop-up-windows t)
 '(pos-tip-tab-width 4)
 '(proced-format 'long)
 '(rustic-cargo-bin "/home/jeremiah/.cargo/bin/cargo")
 '(rustic-lsp-client nil)
 '(rustic-lsp-setup-p nil)
 '(safe-local-variable-values '((Package . DRAKMA) (Package . FLEXI-STREAMS) (diff-add-log-use-relative-names . t) (vc-git-annotate-switches . "-w") (eval cl-flet ((enhance-imenu-lisp (&rest keywords) (dolist (keyword keywords) (add-to-list 'lisp-imenu-generic-expression (list (purecopy (concat (capitalize keyword) (if (string= (substring-no-properties keyword -1) "s") "es" "s"))) (purecopy (concat "^\\s-*(" (regexp-opt (list (concat "define-" keyword)) t) "\\s-+\\(" lisp-mode-symbol-regexp "\\)")) 2))))) (enhance-imenu-lisp "bookmarklet-command" "class" "command" "ffi-method" "function" "mode" "parenscript" "user-class")) (Package . CCL) (Package . CL-USER) (Syntax . COMMON-LISP) (Syntax . Common-lisp) (package . CL-GDAL) (Package . CLIM-GUI) (Package . URL) (Readtable . GLISP) (Encoding . utf-8) (Package . RENDERER) (Package . CLOSURE/CLIM-DEVICE) (Package . CLIM-INTERNALS) (Syntax . Common-Lisp) (Lowercase . Yes) (Base . 10) (Package . CLIM-DEMO) (Syntax . ANSI-Common-Lisp)))
 '(scroll-bar-mode nil)
 '(shell-file-name "zsh")
 '(slime-auto-start 'ask)
 '(slime-enable-evaluate-in-emacs t)
 '(slime-net-coding-system 'utf-8-unix)
 '(slime-port 4567)
 '(split-width-threshold 120)
 '(sql-connection-alist '(("map-viz Docker PostGIS" (sql-product 'postgres) (sql-user "postgres") (sql-password "postgres") (sql-server "localhost") (sql-database "postgis") (sql-port 54320))))
 '(tab-width 4)
 '(text-scale-mode-step 1.125)
 '(truncate-lines t)
 '(undo-tree-auto-save-history nil)
 '(undo-tree-history-directory-alist nil)
 '(use-file-dialog nil)
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map '((20 . "#ff8059") (40 . "#feacd0") (60 . "#f78fe7") (80 . "#f4923b") (100 . "#eecc00") (120 . "#cfdf30") (140 . "#f8dec0") (160 . "#bfebe0") (180 . "#44bc44") (200 . "#80d200") (220 . "#6ae4b9") (240 . "#4ae8fc") (260 . "#00d3d0") (280 . "#c6eaff") (300 . "#2fafff") (320 . "#79a8ff") (340 . "#00bcff") (360 . "#b6a0ff")))
 '(vc-annotate-very-old-color nil)
 '(vc-handled-backends '(git))
 '(visible-cursor t)
 '(warning-suppress-log-types '(comp))
 '(warning-suppress-types '((comp)))
 '(which-func-modes t)
 '(whitespace-cleanup-mode-only-if-initially-clean t)
 '(whitespace-style '(face trailing tabs empty indentation::space space-after-tab::space space-after-tab space-before-tab::space tab-mark))
 '(x-stretch-cursor t)
 '(global-undo-tree-mode t)
 '(global-whitespace-cleanup-mode t)
 '(connection-local-criteria-alist '(((:application tramp) tramp-connection-local-default-system-profile tramp-connection-local-default-shell-profile)))
 '(connection-local-profile-alist '((tramp-connection-local-darwin-ps-profile (tramp-process-attributes-ps-args "-acxww" "-o" "pid,uid,user,gid,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" "-o" "state=abcde" "-o" "ppid,pgid,sess,tty,tpgid,minflt,majflt,time,pri,nice,vsz,rss,etime,pcpu,pmem,args") (tramp-process-attributes-ps-format (pid . number) (euid . number) (user . string) (egid . number) (comm . 52) (state . 5) (ppid . number) (pgrp . number) (sess . number) (ttname . string) (tpgid . number) (minflt . number) (majflt . number) (time . tramp-ps-time) (pri . number) (nice . number) (vsize . number) (rss . number) (etime . tramp-ps-time) (pcpu . number) (pmem . number) (args))) (tramp-connection-local-busybox-ps-profile (tramp-process-attributes-ps-args "-o" "pid,user,group,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" "-o" "stat=abcde" "-o" "ppid,pgid,tty,time,nice,etime,args") (tramp-process-attributes-ps-format (pid . number) (user . string) (group . string) (comm . 52) (state . 5) (ppid . number) (pgrp . number) (ttname . string) (time . tramp-ps-time) (nice . number) (etime . tramp-ps-time) (args))) (tramp-connection-local-bsd-ps-profile (tramp-process-attributes-ps-args "-acxww" "-o" "pid,euid,user,egid,egroup,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" "-o" "state,ppid,pgid,sid,tty,tpgid,minflt,majflt,time,pri,nice,vsz,rss,etimes,pcpu,pmem,args") (tramp-process-attributes-ps-format (pid . number) (euid . number) (user . string) (egid . number) (group . string) (comm . 52) (state . string) (ppid . number) (pgrp . number) (sess . number) (ttname . string) (tpgid . number) (minflt . number) (majflt . number) (time . tramp-ps-time) (pri . number) (nice . number) (vsize . number) (rss . number) (etime . number) (pcpu . number) (pmem . number) (args))) (tramp-connection-local-default-shell-profile (shell-file-name . "/bin/sh") (shell-command-switch . "-c")) (tramp-connection-local-default-system-profile (path-separator . ":") (null-device . "/dev/null")))))

(custom-theme-set-faces
 'jeremiah-light-theme-2022
 '(shadow ((t (:foreground "dim gray"))))
 '(show-paren-match ((t (:background "green" :foreground "#ffffff"))))
 '(slime-repl-output-face ((t (:inherit font-lock-string-face :height 0.9))))
 '(whitespace-indentation ((t (:background "black" :foreground "gray20"))))
 '(widget-field ((t (:extend t :background "white smoke"))))
 '(default ((t (:inherit nil :extend nil :stipple nil :background "light gray" :foreground "gray10" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight regular :height 181 :width normal :foundry "UKWN" :family "JuliaMono")))))

(provide-theme 'jeremiah-light-theme-2022)
