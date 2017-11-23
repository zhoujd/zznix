Bash on Windows
===========================

# Manager with LxRun.exe command line

    $ LxRun.exe
    Performs administrative operations on the LX subsystem
    
    Usage:
        /install - Installs the subsystem
            Optional arguments:
                /y - Do not prompt user to accept
        /uninstall - Uninstalls the subsystem
            Optional arguments:
                /full - Perform a full uninstall
                /y - Do not prompt user to accept
        /setdefaultuser - Configures the subsystem user that bash will be launched as. If the user does
    not exist it will be created.
            Optional arguments:
                username - Supply the username
                /y - If username is supplied, do not prompt to create a password
        /update - Updates the subsystem's package index
