#!/bin/bash

# Enter the token code in "TOKENCODEHERE\"
# Using DEPNotify Slack installs on a end-users laptop gets to the desktop.
# This script is added in Jamf Pro and then attached to the policy to run after the Slack installation
# The script will find the local user then write the token file to the path slack needs to look for the workspace upon first launch

USERNAME=$(/usr/bin/python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u""]]; sys.stdout.write(username + "\n");')

SLACKPATH="/Users/$USERNAME/Library/Application Support/Slack"

if [ ! -e "$SLACKPATH" ]; then
 	mkdir -p "$SLACKPATH"
fi 
 
echo "{\"default_signin_team\":\"TOKENCODEHERE\"}" > "$SLACKPATH/Signin.slacktoken"

chown -R "$USERNAME" "$SLACKPATH"
