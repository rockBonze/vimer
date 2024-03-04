# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
PS1="${debian_chroot:+($debian_chroot)}\[\033[01;31m\][\t]\[\033[00m\]\[\033[01;32m\][\u]\[\033[00m\]\[\033[01;33m\][\#]\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ "
export PATH=$PATH:/home/lzy/tools/buildroot-2017.02.5/output/host/usr/bin
