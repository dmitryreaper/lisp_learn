(defun make-cd (title artist rating ripped)
  (list :title title :artist artist :rating rating :ripped ripped))

(defvar *db* nil)
(defun add-record (cd)
  (push cd *db*))

(add-record (make-cd "Roses" "Kathy Mattea" 7 t))

;; function of view db
(defun dump-db ()
  (dolist (cd *db*)
	(format t "~{~a:~10t~a~%~}~%" cd)))

