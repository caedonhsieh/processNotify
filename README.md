# processNotify
This python3 program runs a process, then notifies the user by SMS using Twilio.

## Getting started
First, clone this GitHub repository.

### Setting up a virtual environment
1. `python3 -m venv env` will create a virtual environment.
2. `source env/bin/activate` will activate the virtual environment; `deactivate` will deactivate it.
3. In the virtual environment, type `pip install -r requirements.txt` to install the project requirements.

### Setting up environment variables
1. Run `./setup.sh` to create `processNotify.env`, which configures the secure account information.
2. Open `processNotify.env` with your favorite text editor, and replace the bracketed sections with your specific information.
3. A sample `processNotify.env` file may look like:
```
TWILIO_ACCOUNT_SID=ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
TWILIO_AUTH_TOKEN=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
TWILIO_PHONE=+12340000000
MY_PHONE=+12340000001
```
