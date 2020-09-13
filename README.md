# processNotify
This python3 program runs a process, then notifies the user by SMS using Twilio.

## Instructions for setup
First, clone this GitHub repository. Second, if you do not have a Twilio account and Twilio phone number, you will need to set one up here: https://www.twilio.com/docs/usage/tutorials/how-to-use-your-free-trial-account

### Setting up a virtual environment
1. `python3 -m venv env` will create a virtual environment.
2. `source env/bin/activate` will activate the virtual environment; `deactivate` will deactivate it.
3. In the virtual environment, type `pip install -r requirements.txt` to install the project requirements.

### Setting up environment variables
1. Run `./setup.sh` to create `processNotify.env`, which configures the secure account information.
2. Open `processNotify.env` with your favorite text editor, and replace the bracketed sections with your specific information (found here if you log in: https://www.twilio.com/console).
3. A sample `processNotify.env` file may look like:
```
TWILIO_ACCOUNT_SID=ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
TWILIO_AUTH_TOKEN=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
TWILIO_PHONE=+12340000000
MY_PHONE=+12340000001
```

## Instructions for use
