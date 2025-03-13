#!/bin/sh
printf "Are you sure you want to uninstall Usermin? (y/n) : "
read answer
printf "\n"
if [ "$answer" = "y" ]; then
	echo "Removing Usermin package .."
	rm -f /usr/share/usermin/authentic-theme/manifest-*
	dpkg --remove --force-depends usermin
	systemctlcmd=`which systemctl 2>/dev/null`
	if [ -x "$systemctlcmd" ]; then
		$systemctlcmd stop usermin >/dev/null 2>&1 </dev/null
		rm -f /lib/systemd/system/usermin.service
		$systemctlcmd daemon-reload
	fi
	echo ".. done"
fi
