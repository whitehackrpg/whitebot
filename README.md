# whitebot
Wrapper code to turn whiteshell into a discord bot.

https://github.com/whitehackrpg/whitebot/assets/130791778/bdf08f6f-c173-4544-8f94-15e0dd14898e

You need sbcl (http://sbcl.org/), quicklisp (https://www.quicklisp.org/beta/), whiteshell (https://github.com/whitehackrpg/whiteshell) and a discord account that has been prepared for running a bot in one of your channels (google "discord bot howto"). Clone this project in your quicklisp/local-projects folder. Put your discord bot token directly in the token.txt file (empty per default). 

Then in sbcl simply `(ql:quickload :whitebot)`.

The bot uses "!" as a prefix. Type "!help" to see a list of available commands.

Remember that you have a full sbcl image under the hood of your bot. I've put in some security measures -- like forbidding certain characters and limiting the commands available. But this is very much alpha software, so use it at your own risk.
