if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi


curl -Lo "Discord" "discord.com/api/download/stable?platform=linux&format=tar.gz"
tar -xzf Discord
sed -i '6s|.*|Exec=/usr/bin/Discord|' ./Discord/discord.desktop 
sed -i '7s|.*|Icon=/opt/Discord/discord.png|' ./Discord/discord.desktop

pkill Discord
sleep 2 
sudo cp -r ./Discord /opt/
rm -rf ./Discord


if [ ! -d "/opt/discord" ]; then
	sudo ln -sf /opt/Discord/Discord /usr/bin/Discord
	sudo cp -r /opt/Discord/discord.desktop /usr/share/applications

fi



