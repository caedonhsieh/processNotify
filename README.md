# processNotify
This python3 program runs a process, then notifies the user by SMS using Twilio.

## Instructions for setup
1. Clone this GitHub repository.
2. If you do not have a Twilio account and Twilio phone number, you will need to set one up here: https://www.twilio.com/docs/usage/tutorials/how-to-use-your-free-trial-account
3. Run `./setup.sh`. This creates `processNotify.env`, which configures the secure account information, establishes a python virtual environment, installs the requirements in the virtual environment, and sets up run_process.py to use the virtual environment.
4. Open `processNotify.env` with your favorite text editor, and replace the bracketed sections with your specific information (found here if you log in: https://www.twilio.com/console). A sample `processNotify.env` file may look like:
```
TWILIO_ACCOUNT_SID=ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
TWILIO_AUTH_TOKEN=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
TWILIO_PHONE=+12340000000
MY_PHONE=+12340000001
```
#### Optional steps
For Mac users, this allows you to run run_process.py from anywhere.
1. Type `vim ~/.bash_profile` (or use any text editor), and add export `PATH="$PATH:$HOME/path/to/processNotify"`, using the actual path to this repository.
2. Type `source ~/.bash_profile`.

## Instructions for use
2. Run the command: `python3 run_process.py [command]`. After the command finishes, you should receive a text.
3. `[command]` can be replaced with any command and its arguments. For example, I could type: `python3 run_process.py ls folder1 folder2`. This would run the command `ls folder1 folder2`, then send a text message when the process has finished.
