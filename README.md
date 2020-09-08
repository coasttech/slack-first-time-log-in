As per Slacks instructions from the below URL generate a token 

https://slack.com/intl/en-au/help/articles/360041725993-Share-a-default-sign-in-file-with-members

  1. From your desktop, click your workspace name in the top left.
  
  ![Image of workplace](https://a.slack-edge.com/8e8e4/helpcenter/img/workspace-picker-en-IN@2x.jpg)

2. Select **Settings & administration** from the menu, then click **Workspace settings**.
3. Click the **Authentication** tab.
4. Next to **Automatically open this workspace for members**, click **Download**.
5. Locate the **Signin.slacktoken** file in the downloads folder on your computer.


After you have this you can open it in something like BBEdit and it will look like this, with `T02SYFD45` being the token number needed for the script

`{"default_signin_team":"T02SYFD45"}`
