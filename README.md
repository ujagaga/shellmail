# shellmail
Automation script to send a quick e-mail

Sometimes I have to wait a long time for a process to finish, so as a conveniance, 
I setup the process to send me an e-mail when it is done.

On linux, you have few options to do that and they all include a configured smtp server.
It takes some time to figure out all the parameters to configure to get this working, 
and the syntax is not all that user friendly, so this script has a pre-defined smtp settings 
for g-mail and you can easily change them to your preferences. After you have setup all 
the necessary stuf asked by this script, to send an email you only to execute shellmail command. 

usage: shellmail [switch parameter] [Optional text message to send or path to text file]

type "shellmail -h" to get help and examples.

This script is basicaly just a wrapper for ssmtp package, but since a pre-defined gmail account 
is used, I have compiled it into a binary using "shc" to hide the password and then built a 
debian package to make setup automated.

You may freely use this software and the source code in any way you see fit. I just hope no one 
will abuse it for spam.
