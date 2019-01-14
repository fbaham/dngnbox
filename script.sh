echo "-------------------- updating packages to latest"
sudo apt-get update -y

echo "-------------------- upgrading packages to latest"
sudo apt-get upgrade -y

echo "-------------------- updating gems to latest"
gem update

echo "-------------------- installing provisory packages"
sudo apt remove cmdtest -y
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install yarn -y