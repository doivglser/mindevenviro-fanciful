#!/usr/bin/python2.7
# socket server to change the user-agent with user_agent_list

import socket
import sys
import mechanize

HOST = '127.0.0.1'
PORT = 5555

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
print ('Socket created')

#Bind socket to local host and port
try:
	s.bind((HOST, PORT))
except socket.error as msg:
	print ('Bind failed. Error Code : ') + str(msg[0]) + (' Message ') + msg[1]
	sys.exit()

#Start listening on socket
s.listen(10)

#infinite loop so that function do not terminate and thread do not end.
while True:

	from random import choice
	user_agents = ['Mozilla/5.0 (X11; U; Linux; i686; en-US; rv:1.6) Gecko Debian/1.6-7','Konqueror/3.0-rc4; (Konqueror/3.0-rc4; i686 Linux;;datecode)','Opera/9.52 (X11; Linux i686; U; en)']
	random_user_agent = choice(user_agents)

conn.close()
