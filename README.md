# shellmail
Automation script to send a quick e-mail

Sometimes I have to wait a long time for a process to finish, so as a conveniance, 
I setup the process to send me an e-mail when it is done.

On linux, you have few options to do that and they all include a configured smtp server.
It takes some time to figure out all the parameters to configure to get this working, 
so this script has a pre-defined smtp settings for g-mail and you can easily change them 
to your preferences. After you have setup all the necessary stuf asked by this script, 
you only need to send an email by executing shellmail command. 

usage:
	shellmail [switch parameter] [Optional text message to send]"
switches:
	-h or -help	# prints this dialog"
	-r		# specify a recipient (eg. shellmail -r recepient@some.domain)"
	-s		# specify subject"
	-c		# configure defaults"
	The first string encountered not starting with - character is considered message text"
	
Examples: 
	shellmail										- sends a blank email to a predefined recepient with a predefined subject
	shellmail "Some message text"					- sends the specified message to the predefined recepient
	shellmail -r your.name@gmail.com				- sends a blank message to specified recepient
	shellmail -r your.name@gmail.com "Some text" 	- sends specified message to specified recipient
	shellmail -c									- opens configuration file. You can configure smtp service to use provider other than gmail. 

	
	
