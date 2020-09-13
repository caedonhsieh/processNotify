#!/bin/sh
# make a python virtual environment if it doesn't exist yet
if [ ! -d "env" ]; then
	python3 -m venv env
	source env/bin/activate
	pip install -r requirements.txt
	deactivate
fi

# add line to automatically use virtual environment for run_process.py
line=$(head -n 1 run_process.py)
SHEBANG="#!"
if [ ${line:0:2} != $SHEBANG ]; then
	(echo "#! $PWD/env/bin/python3" && cat run_process.py) > temp && mv temp run_process.py
fi
chmod +x run_process.py

# initialize processNotify.env
echo TWILIO_ACCOUNT_SID=[INSERT ACCOUNT SID] > processNotify.env
echo TWILIO_AUTH_TOKEN=[INSERT ACCOUNT SID] >> processNotify.env
echo TWILIO_PHONE=+[TWILIO PHONE NUMBER] >> processNotify.env
echo MY_PHONE=+[YOUR PHONE NUMBER] >> processNotify.env
