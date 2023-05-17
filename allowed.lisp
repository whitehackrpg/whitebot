;;;; allowed.lisp

(in-package #:whitebot)

(defparameter *disallowed* '(#\( #\) #\' #\, #\# #\`))

(defparameter *allowed* '("+" 
			  "-" 
			  "round"
			  "div"
			  "*"
			  "r"
			  "+dr"
			  "-dr"
			  "a" 
			  "d"
			  "monster"
			  "average-hp"
			  "hp-roller"
			  "print-map"
			  "help"))

(defun disallowedp (string)
  (intersection (coerce string 'list) *disallowed*))

(defun allowedp (string)
  (find string *allowed* :test #'string=)) 

(defun help ()
  (with-output-to-string (stream)
    (format stream "Allowed commands:~%")
    (dolist (command *allowed*)
      (format stream "~a~%" command))))

