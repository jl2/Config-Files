
(defun match-paren (arg)
  "Go to the matching brace."
  (interactive "p")
  (if (looking-at "[[({\"\']") (forward-sexp 1) (backward-sexp 1)))

(defun run-perl-one-liner (str)
  "Execute a Perl one liner and display the result."
  (interactive "sPerl: ")
  (progn
    (message (shell-command-to-string (concat "perl -e \"" (replace-regexp-in-string "\"" "\\\\\"" str) "\"")))))

(defun make-pdf ()
  "Create a PDF from the current buffer"
  (interactive)
  (let ((ps_name (concat (getenv "TEMP") "/" (buffer-name) ".ps"))
        (pdf_name (concat (getenv "TEMP") "/" (buffer-name) ".pdf")))
    (ps-print-buffer ps_name)
    (shell-command-to-string (concat "ps2pdf " ps_name " " pdf_name))
    (shell-command-to-string (concat "rm " ps_name))
    (find-file pdf_name)
    (message (concat "Created PDF file " pdf_name))))
