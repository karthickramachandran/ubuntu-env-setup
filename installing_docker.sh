# Remove old dockers
echo "Removing old dockers ...."
echo ""
echo ""
sleep 3
sudo apt-get remove docker docker-engine docker.io

sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Install docker
echo "Installing docker ..."
echo ""
echo ""
sleep 2

sudo apt-get update

sudo apt-get install docker-ce


# Add docker to sudo group
echo "Adding docker to sudo group ..."
echo ""
echo ""
sleep 2

sudo groupadd docker
sudo usermod -aG docker $USER


