# Digital Ocean

This guide will show you how to configure Digital Ocean as a Vapor Red server provider. 

If you have not added any Digital Ocean credentials to your account, you will be prompted to add them while creating your first server. On this prompt, there will be a link to the [Digital Ocean access token control panel](https://cloud.digitalocean.com/account/api/tokens).

![Digital Ocean Access Tokens](../images/digital-ocean-access-tokens.png)

Once you have accessed the token control panel, click Generate New Token.

![Digital Ocean New Access Token](../images/digital-ocean-new-access-token.png)

You can name this token whatever you like, here we are naming it `vapor-red`. Just make sure to select both **Read** and **Write** access.

After the token has been created, copy it. You will only be able to access the token's value once.

![Digital Ocean Access Token](../images/digital-ocean-access-token.png)

Now that you have a Digital Ocean API token, you can enter it into Vapor Red.

![New Server Add Digital Ocean](../images/server-add-digital-ocean.png)

Once you click save, the token will be validated. If successful, you will now be able to select your newly added credentials from the Credentials drop down. 

![New Server w/ Digital Ocean Creds](../images/new-server-digital-ocean-creds.png)

You can now continue creating your server. Continue at [Quick Start &rarr; Create Server](../quick-start.md#create-server)
