
# Anaconda Server - 64-bit Linux, Python 3.4
# Modifications by putztzu
# Fixes
# - Installs Anaconda into a system-wide standard mount point, not a User
# - Modifies PATH environment to support all Users, not just the initial User when installed

# IMPORTANT!
# Two manual inputs when installed
# 1. When an location is specified, you will see a default either "/root" or "~/" -- Decline both and type (without the double quotes) "/opt/Anaconda"
# 2. When you are prompted to add the PATH to bashrc, decline. This script will automatically create the PATH correctly for you, both for "/opt/Anaconda" and if you accidnetally install into "/root/".

# Use of this script is at your own risk but believed to work on any/all Linux distros. Any bugs or comments submit to the github repo from which you found this script. Enjoy!

###########################################################

cd /opt
wget http://repo.continuum.io/anaconda3/Anaconda3-2.0.1-Linux-x86_64.sh
bash Anaconda3-2.0.1-Linux-x86_64.sh
echo "export PATH=/opt/Anaconda/bin:/root/anaconda3/bin:$PATH" >> /etc/profile.d/Anaconda.sh


