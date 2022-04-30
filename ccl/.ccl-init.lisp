;; -*- mode: Lisp; fill-column: 75; comment-column: 50; -*-

;;(declaim (optimize (speed 3) (safety 1) (debug 1)))

(setf *read-default-float-format* 'single-float)

#-quicklisp
(let ((quicklisp-init "/home/jeremiah/quicklisp/setup.lisp"))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))


;; (push :3d-vectors-double-floats *features*)

(ql:quickload '( :alexandria :uiop :quickproject :st-json))
;; :3d-matrices :3d-vectors
;; (use-package :3d-vectors)
;; (use-package :3d-matrices)
;; (use-package :alexandria)
;; (use-package :st-json)
(setf quickproject:*include-copyright* t)
(setf quickproject:*license* "ISC")
(setf quickproject:*author* "Jeremiah LaRocco <jeremiah_larocco@fastmail.com>")
(setf quickproject:*template-directory* "~/lisp-template/")


(defmacro dohash ((key-name value-name hash-table) &body body)
  (let ((next (gensym "next"))
        (more (gensym "more")))
    `(with-hash-table-iterator (,next ,hash-table)
       (loop (multiple-value-bind (,more ,key-name ,value-name)
                 (,next)
               (unless ,more (return nil))
               ,@body)))))

(defun add-times (&rest min-and-seconds)
  "Add durations specified as (minute second) and return a total 
minutes and seconds."
  (let ((total-min 0)
        (total-sec 0))
    (loop for (min sec) on min-and-seconds by #'cddr
       do
         (incf total-min min)
         (incf total-sec sec)
         (when (>=  total-sec 60)
           (incf total-min (floor (/ total-sec 60)))
           (setf total-sec (mod total-sec 60))))
    (values total-min total-sec)))


;; (ql:quickload :swank)
;; (when (find "--server" sb-ext:*posix-argv* :test #'string=)
;;   (setf swank:*use-dedicated-output-stream* nil)
;;   (setf swank:*communication-style* :fd-handler)
;;   (swank:create-server :port 4005  :dont-close t))

;; (defun create-makefile (package-name
;;                         &key
;;                           (entry "main")
;;                           (directory (format nil
;;                                              "~~/src/lisp/~a/"
;;                                              package-name))
;;                           (binary-name package-name)
;;                           (extra-buildapp-flags "--compress-core")
;;                           (manifest-file-name "manifest.txt")
;;                           (quicklisp-setup "~/quicklisp/setup.lisp"))
;;   "Create a Makefile for building an executable image from a 
;; Common Lisp package."
  
;;   (let* ((lisp-files (mapcar
;;                       #'file-namestring
;;                       (uiop:directory-files directory "*.lisp")))
;;          (asd-files (mapcar
;;                      #'file-namestring
;;                      (uiop:directory-files directory "*.asd")))
;;          (asd-file-name (format nil "~a~a.asd" directory package-name))
;;          (asd-file (with-input-from-file (ins asd-file-name) (read ins)))
;;          (makefile-name (format nil "~aMakefile" directory))
;;          (dependencies (mapcar #'string-downcase (getf asd-file :depends-on))))
    
;;     (alexandria:with-output-to-file (outs makefile-name :if-exists :supersede)
;;       ;; (declare (type stream outs))
;;       (format outs
;;               "~a: ~a ~{~a ~} ~{~a ~}~%"
;;               binary-name manifest-file-name lisp-files asd-files)
;;       (format outs
;;               "	buildapp --output ~a ~a --manifest-file ~a ~{--load-system ~a ~} --load-system ~a --entry '~a:~a'~%"
;;               binary-name
;;               extra-buildapp-flags
;;               manifest-file-name
;;               dependencies
;;               package-name
;;               package-name
;;               entry)
;;       (format outs
;;               "~%~%~a: ~{~a ~}~%" manifest-file-name asd-files)
;;       (format outs
;;               "	sbcl --no-userinit --no-sysinit --non-interactive --load ~a ~{--eval '(ql:quickload :~a)' ~} --eval '(ql:write-asdf-manifest-file \"~a~a\")'~%"
;;               quicklisp-setup
;;               dependencies
;;               directory
;;               manifest-file-name)
;;       (format outs "~%~%clean:~%	rm -Rf ~a ~a *.fasl~%~%.PHONY: clean"
;;               manifest-file-name binary-name))))
