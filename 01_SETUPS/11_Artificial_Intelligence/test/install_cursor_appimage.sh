#!/bin/sh

########################################################################
# VISIT: 
# SCRIPT CREDITS: https://portable-linux-apps.github.io
# 
# USAGE:
#  Make it executable:
#   $ sudo chmod +x ~/Downloads/Cursor_AppImage.sh
#  Then run
#   $ sudo bash ~/Downloads/Cursor_AppImage.sh
########################################################################

# AM INSTALL SCRIPT VERSION 3.

set -u
APP=cursor
SITE="https://repology.org/project/cursor/versions"

# CREATE DIRECTORIES AND ADD REMOVER
[ -n "$APP" ] && mkdir -p "/opt/$APP/tmp" "/opt/$APP/icons" && cd "/opt/$APP/tmp" || exit 1
echo "#!/bin/sh\nset -e\nrm -f /usr/local/bin/$APP\nrm -R -f /opt/$APP" > "/opt/$APP/remove"
echo "rm -f /usr/share/applications/AM-$APP.desktop" >> "/opt/$APP/remove"
chmod a+x "/opt/$APP/remove"

# DOWNLOAD AND PREPARE THE APP
# $version is also used for updates

version=$(wget -q "$SITE" -O - | grep "newest version" | head -1 | grep -o -P '(?<=">).*(?=</a)' | sed 's/^.*>//')
wget https://downloader.cursor.sh/linux/appImage/x64 -O $APP.AppImage || exit 1
echo "$version" > "/opt/$APP/version"
cd ..
mv --backup=t ./tmp/*mage ./"$APP"
rm -R -f ./tmp || exit 1
chmod a+x "/opt/$APP/$APP" || exit 1

# LINK TO PATH
ln -s "/opt/$APP/$APP" "/usr/local/bin/$APP"

# SCRIPT TO UPDATE THE PROGRAM
cat >> "/opt/$APP/AM-updater" << 'EOF'
#!/bin/sh
APP=cursor
SITE="https://repology.org/project/cursor/versions"
version0=$(cat /opt/$APP/version)
version=$(wget -q "$SITE" -O - | grep "newest version" | head -1 | grep -o -P '(?<=">).*(?=</a)' | sed 's/^.*>//')
[ -n "$version" ] || { echo "Error getting link"; exit 1; }
if [ "$version" != "$version0" ]; then
	notify-send "A new version of $APP is available, please wait"
	mkdir "/opt/$APP/tmp" && cd "/opt/$APP/tmp" || exit 1
	wget https://downloader.cursor.sh/linux/appImage/x64 -O $APP.AppImage || exit 1
	echo "$version" > "/opt/$APP/version"
	cd ..
	mv --backup=t ./tmp/*mage ./"$APP" || exit 1
	echo "$version" > ./version
	rm -R -f ./tmp ./*~
	chmod a+x "/opt/$APP/$APP" || exit 1
	notify-send "$APP is updated!"
	exit 0
fi
echo "Update not needed!"
EOF
chmod a+x "/opt/$APP/AM-updater"

# LAUNCHER & ICON
cd "/opt/$APP" || exit 1
./"$APP" --appimage-extract .DirIcon 1>/dev/null && mv ./squashfs-root/.DirIcon ./DirIcon
./"$APP" --appimage-extract *.desktop 1>/dev/null && mv ./squashfs-root/*.desktop ./"$APP".desktop
./"$APP" --appimage-extract share/applications/*.desktop 1>/dev/null && mv ./squashfs-root/share/applications/*.desktop ./"$APP".desktop
./"$APP" --appimage-extract usr/share/applications/*.desktop 1>/dev/null && mv ./squashfs-root/usr/share/applications/*.desktop ./"$APP".desktop
if [ -L ./DirIcon ]; then
	LINKPATH=$(readlink ./DirIcon)
	./"$APP" --appimage-extract "$LINKPATH" && mv ./squashfs-root/"$LINKPATH" ./DirIcon
fi
sed -i "s#Exec=[^ ]*#Exec=$APP#g; s#Icon=.*#Icon=/opt/$APP/icons/$APP#g" ./"$APP".desktop
mv ./"$APP".desktop /usr/share/applications/AM-"$APP".desktop && mv ./DirIcon ./icons/"$APP" 2>/dev/null
rm -R -f ./squashfs-root
