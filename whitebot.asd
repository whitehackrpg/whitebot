;;;; whitebot.asd

(asdf:defsystem #:whitebot
  :description "A wrapper for whiteshell, so that it can be used as a discord bot."
  :author "Christian Mehrstam <whitehackrpg@gmail.com>"
  :license  "MIT"
  :serial t
  :depends-on (#:lispcord #:whiteshell)
  :components ((:file "package")
	       (:file "allowed")
	       (:file "whitebot")))


