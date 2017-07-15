# laravel-deployement
Let's see how to deploy a Laravel application on a Linux web server running with Apache

In the following, we suppose that you have a server with the domain `http://mydomain.net/`.

First of all, copy the `scripts` inside the `resources` directory of your Laravel application.

Then:
1) `cd /the/path/of/my/website/`
2) `git clone user@my-repository-provider:my-repository .`
3) Setup your apache configuration so that `http://mydomain.net/` maps to `/the/path/of/my/website/public`
4) `bash resources/scripts/deploy.sh`

You're done !
