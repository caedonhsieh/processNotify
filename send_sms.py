from twilio.rest import Client
from settings import load_env
import os

load_env('processNotify.env')

account_sid = os.getenv("TWILIO_ACCOUNT_SID")
auth_token = os.getenv('TWILIO_AUTH_TOKEN')
twilio_phone = os.getenv('TWILIO_PHONE')
my_phone = os.getenv('MY_PHONE')

client = Client(account_sid, auth_token)

# message = client.messages \
#                 .create(
#                      body="Process completed!",
#                      from_=twilio_phone,
#                      to=my_phone
#                  )