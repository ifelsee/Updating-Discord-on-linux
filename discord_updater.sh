if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

curl -Lo "Discord" "discord.com/api/download/stable?platform=linux&format=tar.gz"
tar -xzf Discord

rm ./Discord/discord.desktop
pkill Discord
sudo cp -r ./Discord/* /opt/Discord/
rm -rf ./Discord




