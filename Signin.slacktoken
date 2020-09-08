#!/bin/bash

# Enter the token code in "TOKENCODEHERE\"

USERNAME=$(/usr/bin/python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u""]]; sys.stdout.write(username + "\n");')

SLACKPATH="/Users/$USERNAME/Library/Application Support/Slack"

if [ ! -e "$SLACKPATH" ]; then
 	mkdir -p "$SLACKPATH"
fi 
 
echo "{\"default_signin_team\":\"TOKENCODEHERE\"}" > "$SLACKPATH/Signin.slacktoken"

chown -R "$USERNAME" "$SLACKPATH"
