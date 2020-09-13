from twilio.rest import Client
from settings import load_env
import os

def send_text(returncode):
    load_env('processNotify.env')

    # Read environment variables
    account_sid = os.getenv("TWILIO_ACCOUNT_SID")
    auth_token = os.getenv('TWILIO_AUTH_TOKEN')
    twilio_phone = os.getenv('TWILIO_PHONE')
    my_phone = os.getenv('MY_PHONE')

    client = Client(account_sid, auth_token)

    # Depending on return code, process either fails or success
    message = "Process " + ("succeeded" if returncode == 0 else "failed") + " with return code: " + str(returncode)
    client.messages.create(
                         body=message,
                         from_=twilio_phone,
                         to=my_phone
                     )
