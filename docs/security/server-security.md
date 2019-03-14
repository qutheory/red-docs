# Server security

Vapor Red does a lot of things to help secure your servers. All servers are automatically configured with Fail2ban this will automatically block possible malicious attempts to access your server.
Vapor Red servers are also setup to automatically apply patch updates from the official Ubuntu packages.

But there are also things you need to think about in terms of security.

## SSH access

If you setup SSH access to your server, make sure you keep your private key secure. And it's prefered the key is encrypted.

When setting up a server, you get an email with the root password of the server. It's **very** important to keep this safe. The servers won't allow login with password, only ssh key.
But the password can be used to elevate a user to root once logged in.

## Firewall

Under `Network` you can setup firewall rules. Make sure you only open the ports you need.

Per default, SSH is open to the world, this is important in terms of give our systems access to the server. Make sure you don't delete this, as it will remove our access to manage the server.

!!! tip
    Before releasing Vapor Red, we will apply a patch to only allow specific ips from our systems to access all Red servers.