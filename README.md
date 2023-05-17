# whitebot
Wrapper code to turn whiteshell into a discord bot.

You need sbcl (http://sbcl.org/), quicklisp (https://www.quicklisp.org/beta/) and a discord account that has been prepared for running a bot in one of your channels (google "discord bot howto"). Clone this project in your quicklisp/local-projects folder. Put your discord bot token directly in the token.txt file (empty per default). Then in sbcl simply `(ql:quickload :whitebot)`.
