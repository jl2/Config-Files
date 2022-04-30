;;; dylan-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "dime" "dime.el" (23103 8949 84223 550000))
;;; Generated autoloads from dime.el

(autoload 'dime-setup "dime" "\
Setup Emacs so that dylan-mode buffers always use DIME.
CONTRIBS is a list of contrib packages to load.

\(fn &optional CONTRIBS)" nil nil)

(autoload 'dime "dime" "\
Start an inferior^_superior Dylan and connect to its Swank server.

\(fn &optional COMMAND CODING-SYSTEM)" t nil)

;;;***

;;;### (autoloads nil "dylan-mode" "dylan-mode.el" (23103 8949 312238
;;;;;;  42000))
;;; Generated autoloads from dylan-mode.el

(autoload 'dylan-mode "dylan-mode" "\
Major mode for editing Dylan programs.

May be customized with the options in the `dylan' customization
group.

Indentation is controlled by the `dylan-indent' customizable
variable. The default is two spaces.

To see the current version of Dylan Mode, enter
`\\[dylan-version]'.

This mode runs the hook `dylan-mode-hook', as the final step
during initialization.

\\{dylan-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.dylan\\'" . dylan-mode))

;;;***

;;;### (autoloads nil "dylanlid-mode" "dylanlid-mode.el" (23103 8949
;;;;;;  352240 584000))
;;; Generated autoloads from dylanlid-mode.el

(autoload 'dylanlid-mode "dylanlid-mode" "\
Major mode for editing Dylan LID files.

May be customized with the options in the `dylanlid' customization
group.

To see the current version of Dylan LID Mode, enter
`\\[dylanlid-version]'.

This mode runs the hook `dylanlid-mode-hook', as the final step
during initialization.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.lid\\'" . dylanlid-mode))

;;;***

;;;### (autoloads nil nil ("dime-compat.el" "dime-compiler-notes-tree.el"
;;;;;;  "dime-dylan.el" "dime-repl.el" "dylan-mode-pkg.el" "dylan-optimization-coloring.el")
;;;;;;  (23103 8949 256234 483000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; dylan-mode-autoloads.el ends here
