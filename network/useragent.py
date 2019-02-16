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
	
print ('Socket bind complete')

#Start listening on socket
s.listen(10)
print ('Socket now listening')

#Function for handling connections. This will be used to create threads
def clientthread(conn):
	#Sending message to connected client
	conn.send('Welcome to the server. Type something and hit enter\n') #send only takes string
	
	#infinite loop so that function do not terminate and thread do not end.
	while True:

		class URLOpener():      
			def opener(self,user_agent):
				cj=cookielib.CookieJar()
				#Process Hadlers
				opener=urllib2.build_opener(urllib2.HTTPCookieProcessor(cj))
				opener.addheaders=[
						('User-Agent', user_agent),
						('Accept', 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'),
						('Accept-Language', 'en-gb,en;q=0.5'),
						('Accept-Charset', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7'),
						('Keep-Alive', '115'),
						('Connection', 'keep-alive'),
						('Cache-Control', 'max-age=0'),
					]
		return opener

		#Openers with different User-Agents
		def opener_list(self,f_path):
			#f_path is a path to the file that contains browsers
			f=open(f_path, 'r+')
			count=0
			user_agent_list=list()
			for line in f.xreadlines():
				count+=1
				user_agent_list.append(line[:-1])
				openers=[self.opener(user_agent) for user_agent in user_agent_list]
				return openers

		#Receiving from client
		data = conn.recv(1024)
		reply = 'OK...' + data	
		conn.sendall(reply)
		#came out of loop
	conn.close()

#now keep talking with the client
while 1:
    #wait to accept a connection - blocking call
	conn, addr = s.accept()
	print ('Connected with ') + addr[0] + (':') + str(addr[1])
	
	#start new thread takes 1st argument as a function name to be run, second is the tuple of arguments to the function.
	start_new_thread(clientthread ,(conn,))

s.close()
