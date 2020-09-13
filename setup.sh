#!/bin/sh
echo TWILIO_ACCOUNT_SID=[INSERT ACCOUNT SID] > processNotify.env
echo TWILIO_AUTH_TOKEN=[INSERT ACCOUNT SID] >> processNotify.env
echo TWILIO_PHONE=+[TWILIO PHONE NUMBER] >> processNotify.env
echo MY_PHONE=+[YOUR PHONE NUMBER] >> processNotify.env
