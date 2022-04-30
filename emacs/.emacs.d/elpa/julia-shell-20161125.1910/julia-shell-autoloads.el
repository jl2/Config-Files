;;; julia-shell-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "julia-shell" "julia-shell.el" (0 0 0 0))
;;; Generated autoloads from julia-shell.el

(autoload 'inferior-julia-shell "julia-shell" "\
Run an inferior instance of `julia' inside Emacs." t nil)

(defalias 'run-julia #'inferior-julia-shell "\
Run an inferior instance of `julia' inside Emacs.")

(register-definition-prefixes "julia-shell" '("inferior-julia-shell-mode" "julia-"))

;;;***

;;;### (autoloads nil nil ("julia-shell-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; julia-shell-autoloads.el ends here
