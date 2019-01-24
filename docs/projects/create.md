To setup your project on Vapor RED, go to the server, and click `Project`

Here you get a list of all projects running on your Server. To create a new project, click `Create Project`.

![Project1](/images/project1.png)

After this the server will start creating on your Digital Ocean account. After it's created, our system will start bootstrapping it, and install some nice to have programs.

!!! important
    To use SSH based git, make sure to add the SSH Public key shown above the form, to your git provider (GitHub, BitBucket, GitLab etc.)

Fill out the form and click `Create`

On the first page, you can see logs etc.

Under the `Deploy configuration` tab, you can see/edit the script used to deploy the app, and the supervisor configuration.
Per default all apps are running through Supervisor.

!!! note
    If you have multiple projects, make sure each have their own port (in the Supervisor configuration). You can easily change the port, default is `8000`.

    Port `8000 - 9000` are whitelisted in the Loadbalancer. This can be changed under `Network`

![Project2](/images/project2.png)

!!! important
    First deploy can take a while, since it need to compile all dependencies. However after this, everything is cached for the project, and will go much faster.

To get the project up and Running, simply hit `Deploy now`. You can see the logs under `Deployments`