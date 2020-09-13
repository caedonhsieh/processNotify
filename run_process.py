from send_sms import send_text
import subprocess
import sys

num_args = len(sys.argv)
if num_args > 1:
    # Skip first arg, which should be run_process.py
    command = sys.argv[1:]
    status = subprocess.run(command)
    send_text(status.args, status.returncode)
