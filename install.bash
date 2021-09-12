
# The Relentless Performance App runs
# with an Ubuntu 20.04 server using
# mongodb, python 3, and pymongo

# Upgrade all the prepackaged work
sudo apt upgrade -y

# Add the Official MongoDB verion
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list

# Install MongoDB
sudo apt update -y
sudo apt install -y mongodb-org

# Export a MongoDB start command
echo "alias start_mongod=\"sudo systemctl start mongod\"" >> ~/.bashrc

# Install Python 3.9
PYTHON_VERSION="3.9.7"
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev

cwd=$(pwd)
cd ~
wget https://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tgz
tar -zxvf Python-$PYTHON_VERSION.tgz

cd Python-$PYTHON_VERSION
./configure --enable-optimizations --with-ensurepip=install
make -j $(nproc)
sudo make altinstall

sudo ln -s /usr/local/bin/python3.9 /usr/bin/python
sudo ln -s /usr/local/bin/pip3.9 /usr/bin/pip

pip install --upgrade pip

# Install PyMongo python package
pip install pymongo

# Go back to starting location
cd $cwd

