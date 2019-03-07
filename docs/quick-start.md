# Quick Start

[[toc]]

Before you can start using Vapor Red, make sure you create an account on https://dashboard.vapor.red

When you are logged in, you can create your first server. To setup a server, you need to add credentials to allow Vapor Red to setup instances on your account. Select the provider you want from the sidebar.

::: tip Note
When selecting Ubuntu version, make sure to select the version supported by the Swift version you want.
:::

## Create app

Before you can deploy an application, you need to install some Tools. Tools are programs that can be installed easily through the Vapor Red Dashboard. So click on your Server and click Tools

![tools](https://user-images.githubusercontent.com/2535140/53724264-cc34a080-3e69-11e9-9d77-cd7f03795c5e.png)

Now install what you need, to setup a Vapor app, we need **Swift** and **Supervisor**. Nginx is only needed if you want a custom domain.

![tools2](https://user-images.githubusercontent.com/2535140/53724611-84624900-3e6a-11e9-9b9c-31dbd88a3bd7.png)

When those are installed we can continue, navigate to the `Apps` page, and click new. Then select your server, and then enter your git remote.

![app1](https://user-images.githubusercontent.com/2535140/53724741-d4d9a680-3e6a-11e9-9c9a-5c13fe149cbc.png)

On the next screen, you can fill in some more details, branch and framework.

If you use **git@** in your git remote, you will be presented with a public key. This is unique for your server, and allows the system to checkout the repository. Add this to your git account, and it will be able to checkout all repositories from your account.

![app2](https://user-images.githubusercontent.com/2535140/53724789-f63a9280-3e6a-11e9-9dc1-f39af5563baf.png)

When the app is created, you can go to settings

![app3](https://user-images.githubusercontent.com/2535140/53724932-4b76a400-3e6b-11e9-8371-484f1aef6388.png)

here you see four different boxes:

1. Environment
Here you can set environment variables your app need, you should add one per line, e.g.:
```
KEY1=VAL1
KEY2='VALUE WITH SPACE'
```

2. Deploy script
This is the script the system will run during deploy, this can be customized if you want to add additional steps.

3. Deploy hook
This is a simple GET endpoint to trigger a deploy of the app, which e.g. Can be setup as part of your CI process

Next click `Deploy` and deploy your application.

### External access without a domain

If you don't want to setup a domain yet, you can still access your app. Your app is automatically assigned a port. Starting from `8000` then `8001`, `8002` etc.

Before accessing the app, we need to setup a firewall rule, so go to `Network` and create a new entry.

![network1](https://user-images.githubusercontent.com/2535140/53792161-52fd8200-3f2b-11e9-96fb-57d9fa4fc3c3.png)

The port is the port of the app, since this is your first app, enter `8000`. The source is where it's accessible from, `0.0.0.0/0` will allow access from all IPv4 (It's currently not possible to allow IPv6 this will come later)

After this you can access your app on http://SERVER-IP:8000

### View application logs

To view your application logs, under your app go to `Commands` these are commands running through Supervisor, click the first entry, this is automatically created for all vapor apps, and is your run command.

Under here click `Load logs` this will start tailing your stdout and stderr logs directly from the server, so you get live log output.

## Create database

To set up a database, you first need to install a database server. This can be done through the Dashboard, go to `Databases` and Install the engine you want.

![database1](https://user-images.githubusercontent.com/2535140/53791261-437d3980-3f29-11e9-8a65-ff45a4a5ef0d.png)

Once the status is set to running, you can click `Details` and create a new database

![database2](https://user-images.githubusercontent.com/2535140/53791706-4e849980-3f2a-11e9-9e89-5f07f5966a5e.png)

### Link database to your app

When your database is created, you can set it up in your environment variables under your app and `Settings`

![database3](https://user-images.githubusercontent.com/2535140/53791938-dd91b180-3f2a-11e9-9c62-ec573358f69f.png)

The key can be whatever you want, this is what will be exposed to your application. The format of the URL for PostgreSQL is:

```
postgresql://MY-USER:MY-PASSWORD@HOST:PORT/MY-DATABASE
```

After this redeploy your application.

### External access to database

If you want to access your database from your local computer, you can setup a firewall rule for it.

Go to `Network` and create a new rule

![network2](https://user-images.githubusercontent.com/2535140/53792411-eafb6b80-3f2b-11e9-956f-718072df4a9e.png)

* Port is `5432` which is the default port for PostgreSQL
* Source is `0.0.0.0/0` which is everywhere

::: warning Important
It's generally adviced to **NOT** allow access from everywhere, instead use your external ip, you should end the IP with `/32` to only allow that specific ip.
:::
