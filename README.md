```
Usage: ./sauce COMMAND
Control your Sauce tunnel. I use this only on a dedicated Sauce Connect
box, as _crontab_ overwrites the crontab with only Sauce Connect
entries, and _restart_ indiscriminately kills all of $LOGNAME's java
processes. These behaviors can of course be modified if necessary.

The commands you can use are:

   help         Show this help

   restart      Kill all java processes belonging to the user and
                nohup the sauce tunnel, stdout redirected to
                /home/qa/arnoldmedia

   crontab      Write over the crontab with the default Sauce-tasks
                only crontab

   status       View the running Sauce tunnels and the current crontab

   update       Download a new version of the Sauce Connect jar in
                ~/sauceConnect. You'll want to run ./sauce restart
                after this to start the tunnel again
```