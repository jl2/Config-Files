
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

(defun perl-func-doc ()
  (interactive)
  (let* ((ival (thing-at-point 'word))
         (fname (read-string "Function name: " ival)))
    ;; (interactive "sFunction name: " (thing-at-point 'word))
    (message (shell-command-to-string (concat "perldoc -f " fname " | head -20")))))


(defun toggle-kbd-macro-recording-on ()
  "One-key keyboard macros: turn recording on."
  (interactive)
  (substitute-key-definition 'toggle-kbd-macro-recording-on 'toggle-kbd-macro-recording-off (current-global-map))
  (start-kbd-macro nil))

(defun toggle-kbd-macro-recording-off ()
  "One-key keyboard macros: turn recording off."
  (interactive)
  (substitute-key-definition 'toggle-kbd-macro-recording-off 'toggle-kbd-macro-recording-on (current-global-map))
  (end-kbd-macro))

(defun add-include ()
  "When a class name is selected, adds a #include \"classname.h\" after the last #include."
  (interactive)
  (save-excursion
    (let ((inc-name (buffer-substring-no-properties (region-beginning) (region-end)))
          (rbeg)
          (rend))

      (search-backward-regexp "^#include")
      (setq rbeg (point))
      (end-of-line)
      (newline)
      (insert (format "#include \"%s.h\"" inc-name))
      (setq rend (point))
      (indent-region rbeg rend))))

;; Try to be smart about whether a .h file is C, C++, or Objective-C
;; Taken from:
;; http://www.bretthutley.com/emacs/opening-a-cobjective-cc-header-file-in-emacs/
(defun bh-choose-header-mode ()
  (interactive)
  (if (string-equal (substring (buffer-file-name) -2) ".h")
        ;; OK, we got a .h file, if a .m file exists we'll assume it's
        ; an objective c file. Otherwise, we'll look for a .cpp file.
      (if (> (length (file-expand-wildcards "*.cpp")) 0)
          (c++-mode)
        (if (> (length (file-expand-wildcards "*.m")) 0)
            (objc-mode)))))

(fset 'perl-starter
   [?# ?! ?/ ?u ?s ?r ?/ ?b ?i ?n ?/ ?p ?e ?r ?l ?\C-j ?\C-j ?u ?s ?e ?  ?s ?t ?r ?i ?c ?t ?\; ?\C-j ?u ?s ?e ?  ?w ?a ?r ?n ?i ?n ?g ?s ?\; ?\C-j ?\C-j ?u ?s ?e ?  ?G ?e ?t ?o ?p ?t ?: ?: ?L ?o ?n ?g ?\; ?\C-j ?\C-j ?s ?u ?b ?  ?u ?s ?a ?g ?e ?  ?\{ ?\C-j ?p ?r ?i ?n ?t ?  ?\" ?. ?. ?. ?\\ ?n ?\" ?\; ?\C-j ?\} ?\C-j ?\C-j ?s ?u ?b ?  ?m ?a ?i ?n ?  ?\{ ?\C-j ?m ?y ?  ?$ ?h ?e ?l ?p ?\; ?\C-j ?\C-j ?G ?e ?t ?O ?p ?t ?i ?o ?n ?s ?\( ?\' ?h ?e ?l ?p ?! ?\' ?= ?> ?\\ ?$ ?h ?e ?l ?p ?, ?\C-j ?\) ?\; ?\C-j ?\C-j ?i ?f ?  ?\( ?$ ?h ?e ?l ?p ?\) ?  ?\{ ?\C-j ?u ?s ?a ?g ?e ?\; ?\C-j ?e ?x ?i ?t ?\( ?0 ?\) ?\; ?\C-j ?\} ?\C-j ?\C-j ?\} ?\C-j ?\C-j ?m ?a ?i ?n ?\; ?\C-j ?\C-p ?\C-p ?\C-p ?\C-p ?\C-e tab])

(defun replace-perl-exp ()
  "Run the region as a Perl script, kill the region, insert the output of the Perl script."
  (interactive)
  (let* ((tmp-file (make-temp-file "tmppl"))
         (rb (region-beginning))
         (re (region-end))
         (str (buffer-substring-no-properties rb re)))
    (if (string-match "print" str)
        (progn
          (write-region rb re tmp-file nil 1)
          (kill-region rb re))
      (progn
        (goto-char rb)
        (insert "print ")
        (goto-char (+ 6 re))
        (setq re (point))
        (setq str (buffer-substring-no-properties rb re))
        (write-region rb re tmp-file nil 1)
        (kill-region rb re)
        (message str)))
    (insert (shell-command-to-string (concat "perl " tmp-file)))
    (delete-file tmp-file)))

(defun replace-python-exp ()
  "Run the region as a Python script, kill the region, insert the output of the Python script."
  (interactive)
  (let* ((tmp-file (make-temp-file "tmppl"))
         (rb (region-beginning))
         (re (region-end))
         (str (buffer-substring-no-properties rb re)))
    (if (string-match "print" str)
        (progn
          (write-region rb re tmp-file nil 1)
          (kill-region rb re))
      (progn
        (goto-char rb)
        (insert "print(")
        (goto-char (+ 6 re))

        (insert ")")
        (setq re (point))
        (write-region rb re tmp-file nil 1)
        (kill-region rb re)
        (message str)))
    (insert (shell-command-to-string (concat "python3 " tmp-file)))
    (delete-file tmp-file)))
