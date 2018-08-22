from twilio.rest import Client


# Your Account Sid and Auth Token from twilio.com/console
account_sid = 'AC2b3b3a0a69a901fed3afbe9b161590f7'
auth_token = '4208e24a8e2e9af3a11b499e6fb41a86'
client = Client(account_sid, auth_token)

message = client.messages \
    .create(
         body='Avengers ASSEMBLE!',
         from_='+14386002799',
to = input('Enter your phone number: ')	 
)
      
     

print(message.sid)

