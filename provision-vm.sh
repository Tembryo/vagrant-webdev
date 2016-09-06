sudo apt-get -y purge nodejs

sudo apt-get -y install npm 

#update Node
sudo npm cache clean -f
sudo npm install -g n
sudo n stable

pushd /tembryo/wisdota-webserver/src
sudo npm install
popd

pushd /tembryo/wisdota-shared-code
sudo npm install
popd