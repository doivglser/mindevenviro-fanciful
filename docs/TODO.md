# TODO:

## "![Cont-Sec](https://github.com/doivglser/mindevenviro/projects)" Secure-Email-Solution

		....mber. After writing the  message, "Cont-Sec" applies a special cipher 
		for each letter and number corresponding to the "Email Code Snippets" that match 
		Your "image matching key", made in consultation with a fr....

		SpamCodeSegment="\<html\>\<title\>spam\ very\ boring\ but\ usefull\<\title\>\<style"

	a=$(nICE_Encryption -le a $SpamCodeSegment)

	echo $a

	$1$2cURl/G9$u7fHYYfdry0F8ZHpMf8/8/
	
	- I WILL TRY TO DO THE SIMPLE WAY TO CIPHER THE TEXT AS I WROTE,
          AND APPLY OTHER TECHNIQUES TO DECRYPT THE MESSAGE.
	  
	  I try to write a " nICE_Encryption -le a $3 " script, 
	  
	  + where "$1" is:
	  
	  FLAGS: -le letter, -n number, -u upper case, -lo lower case, -s space
	  
	  + And "$2" is:
	  
	  [a-zA-Z0-9\-\_\?\¿\ \.\*\#]* or a space.
	  
	  + And "$3" is:
	  
	  $3=$SpamCodeSegment ;
	  
	  The recipient recieves a Picture, that illustrates, segments of pictures 
	  that correspond to the "Email Code Snippets" from the "image matching key".


## mindevenviro

	  	portability to: Debian, CentOS, and MacOS
	  	to write without exclude codes from shellcheck
	  	"iptables psad fwsnort": tcp-wrapper
	  	to implement "logger" "pipestatus" "ncurses" "GUI's"
	  	"mindevenviro.rules": "alert/drop rules" for snort
	  	better entries for log .wH0rUNSon
	  	to search for the right MySQL syntax 
	  	to add a "Joomla CMS" to localhost

	  	to write an unix socket server, to handle http_headers 
	  	reffering user-agent, and redirect to TOR.

	  	to implement "Cont-Sec" to mindevenviro

## sCRYPtUPdater

		To search for brackets and braces, to split the 
		content of the source code into short code snippets.
		To refer to the "exit handler"If the 
		workflow interval in minutes is over
		if $REPLY from "exit handler" is = "n", 
		reset workflow interval, if $REPLY 
		from "exit handler" is = "y" exit.
		
# PROBLEMS:


* sCRYPtUPdater

		Make sure you change more than 1 byte, so if you 
		only change one character, then please add a space.
  
		If interval in minutes is over, Ctrl-C to exit.

* for the moment shi3lD works only for WiFi Interfaces.

		no workaround to install wifi firmware. 
		(I recommend a dd-wrt router as client over ethernet)

		"interface" shi3lD have an option to choose 
		between Ifaces, that option must be automated.
		interface="$(cat "$tmpfolder"/interface)" ;

* while installing:

		while installing snort: debconf asks for 
		interface eth0 no workaround for "eno[0-9]" 
		interfaces. Take a look in to "ip route show" and 
		"sudo dpkg --configure -a" with the name of your interface.
