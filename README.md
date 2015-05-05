#Cloud Foundry Demo Applications

This repo contains collection of apps that can be pushed to cf that don't require local compilation. I use them for workshops to illustrate how to pushing applications to the platform uses the same commands regardless of language. If you're in one of my classes please remember the `-m` flag, chances are good we're on limited resources. 

To simply `cd` into the directory and run `cf push <a name for your app> --random-route -m 512m`

After the push completes open the URL the CLI reports back to you in your browser or `curl` it. 

Your output should look something like this:
```
1 of 1 instances running

App started


OK

App php was started using this command `$HOME/start.sh`

Showing health and status for app php in org brokers / space lifecycle-prod as admin...
OK

requested state: started
instances: 1/1
usage: 1G x 1 instances
urls: php-vanquishable-earwig.apps.pcf.jkruckcloud.com
last uploaded: Mon May 4 21:31:31 UTC 2015
stack: cflinuxfs2

     state     since                    cpu    memory        disk          details
#0   running   2015-05-04 05:31:45 PM   0.0%   33.4M of 1G   36.2M of 1G
➜  php git:(master) curl php-vanquishable-earwig.apps.pcf.jkruckcloud.com                                                       $
<html>
 <head>
  <title>PHP Test</title>
 </head>
 <body>
 <p>Hello PHP</p>
 </body>
</html>
➜  php git:(master)
```

