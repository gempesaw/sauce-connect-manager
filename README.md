    Usage: ./sauce COMMAND
    Control your sauce tunnel.

    The commands you can use are:

       help         Show this help

       restart      Kill all java processes belonging to the user and
                    nohup the sauce tunnel, stdout redirected to
                    $HOME/$SAUCE_USERNAME

       crontab      Write over the crontab with the default Sauce-tasks
                    only crontab

       status       View the running Sauce tunnels and the current crontab

       update       Download a new version of the Sauce Connect jar in
                    ~/sauceConnect. You'll want to run ./sauce restart
                    after this to start the tunnel again

       monitor      Check the status and echo it to a file in the home dir
