Anaconda_Server_Install
=======================

Fixes standard Anaconda Server from continuum.io  install issues

May not make a difference to many, but the standard install currently places files in a User directory (either root or the local User when installing)

Then, the PATH is modified in  ~/.bashrc to point to the new files.

These scripts
- Install the files into /opt , a common system-wide mount point
- Modify the PATH for all Users, not just the logged in User by adding a file to /etc/profile.d/

These scripts are believed to work with any 64-bit Linux distro, if anyone discovers an incompatibility or error, please submit a bug in this repo. Complimentary comments welcome, too!

Instructions
------------
Download the script you want to run.
Before you run the script, open in a text editor for exact instructions. The script is not completely automatic because the Anaconda install is part text and part binary so cannot be modified easily. Most likely you will want to make the following 2 manual inputs

1. If necessary, make the script exectuable, typically with the following command
chmod +x filename
2. When a location is specified, do not accept the default which will likely be "/root/" or "~/" Instead, type (without doublequotes and case sensitive) "/opt/Anaconda"
3. When you are prompted to add the PATH to bashrc, decline. This script will automatically create the PATH correctly for you.

Enjoy!
------
Scripts have been created only for 64-bit Linux. If there is a request to create similar for other OS (eg 32-bit or Windows) or any other, post a request. Or feel free to fork my repo and make your own.
