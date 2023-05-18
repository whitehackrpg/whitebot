# whitebot
Wrapper code to turn whiteshell into a discord bot.

You need sbcl (http://sbcl.org/), quicklisp (https://www.quicklisp.org/beta/), whiteshell (https://github.com/whitehackrpg/whiteshell), lispcord (https://github.com/lispcord/lispcord) and a discord account that has been prepared for running a bot in one of your channels. 

1. Check the discord-bot-how-to in order to prepare for the bot on your discord account: https://github.com/whitehackrpg/whitebot/blob/main/DISCORD-BOT-HOWTO.md.
2. Go to the sbcl link above, download sbcl and follow the included instructions on how to install it.
3. Go to the quicklisp link above and follow the instructions there to install quicklisp.
4. Clone this project, whiteshell and lispcord in your quicklisp/local-projects folder. Put your discord bot token (generated in step 1 above) directly in the token.txt file in the whitebot folder (the token file is empty per default). 
5. Then start sbcl and simply type `(ql:quickload :whitebot)` at the prompt. Go to your discord server, and the bot should be present.

The bot uses "!" as a prefix. Type "!help" to see a list of available commands.

https://github.com/whitehackrpg/whitebot/assets/130791778/bdf08f6f-c173-4544-8f94-15e0dd14898e

Remember that you have a full sbcl image under the hood of your bot. I've put in some security measures -- like forbidding certain characters and limiting the commands available. But this is very much alpha software, so use it at your own risk.
