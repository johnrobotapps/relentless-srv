
# The Relentless Performance App runs
# with an Ubuntu 20.04 server using
# mongodb, python 3, and pymongo

# Get all the standard packages updated
sudo apt upgrade

# Add the Official MongoDB verion
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list

# Install MongoDB
sudo apt update
sudo apt install -y mongodb-org

# Install Python 3.9
