# AWS

This guide will show you how to configure AWS as a Vapor Red provider.

If you have not added AWS credentials to your account, you will be prompted to add them while creating your first server. 

To create your credentials, go to the AWS management console, and go to the `IAM` (Identity and Access Management) service. Click `Users` and create a new User.

Set a name and set it to `Programmatic access`

![AWS Access Tokens 1](../images/aws-access-token1.png)

On the next page, we need to set 2 permissions:

* AmazonEC2FullAccess
* AmazonVPCFullAccess

![AWS Access Tokens 2](../images/aws-access-token2.png)

![AWS Access Tokens 3](../images/aws-access-token3.png)

And then verify the 2 permissions are set correct

![AWS Access Tokens 4](../images/aws-access-token4.png)

Now you get an `Access token` and a `Secret token` we need both, so copy both keys

![AWS Access Tokens 5](../images/aws-access-token5.png)

Now in Vapor Red under AWS setup the `Access token` and `Secret token` in the fields, and find a proper name for it

![AWS Access Tokens 6](../images/aws-access-token6.png)

And we are now ready to create a new AWS server

![AWS Access Tokens 7](../images/aws-access-token7.png)