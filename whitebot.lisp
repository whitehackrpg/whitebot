;;;; whitebot.lisp

(in-package #:whitebot)

(setf (v:repl-level) :info
      *random-state* (make-random-state t))

(defbot *ping-bot* (uiop:read-file-line (asdf:system-relative-pathname "whitebot" "token.txt")))

(connect *ping-bot*) ; Yes, you can register handlers after connect

(add-event-handler :on-message-create
		   (lambda (msg) 
		     (when (string= (subseq (lc:content msg) 0 1) "!")
		       (if (disallowedp (lc:content msg))
			   (reply msg "Not allowed.")
			   (let ((cmd (uiop:split-string (lc:content msg) :separator " ")))
			     (when (allowedp (subseq (car cmd) 1))
			       (reply msg 
				      (format nil "~a" 
					      (handler-case
						  (apply (symbol-function
							  (read-from-string 
							   (concatenate 'string
									"whiteshell::"
									(subseq (car cmd) 1)))) 
							 (mapcar #'read-from-string (cdr cmd)))
						(error (error-mess)
						  (if (string= (car cmd) "!help")
						      (help)
						      (format nil "Faulty command.~%~a" 
							      error-mess))))))))))))
