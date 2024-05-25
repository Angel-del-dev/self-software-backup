## Obtain repository keys
wget -O - https://repo.fortinet.com/repo/forticlient/7.2/ubuntu/DEB-GPG-KEY | gpg --dearmor | sudo tee /usr/share/keyrings/repo.fortinet.com.gpg
cd /etc/apt/sources.list.d
## Create a new global variable
sudo touch repo.fortinet.com.list
## Add value to global variable
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/repo.fortinet.com.gpg] https://repo.fortinet.com/repo/forticlient/7.2/ubuntu/ /stable multiverse" << repo.fortinet.com.list
sudo apt-get update
sudo apt install forticlient
