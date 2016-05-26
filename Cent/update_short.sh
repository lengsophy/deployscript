sudo killall node
wait
git pull
wait
sudo rm -rf bundle
wait
meteor bundle bundle.tgz
wait
sudo tar -zxvf bundle.tgz
wait
sudo yum install nodejs npm
wait
cd bundle/programs/server/
sudo npm install
wait
sudo npm install bcrypt
wait
cd ../../..
sudo chmod -R 777 bundle
wait
sudo chown -R apache:apache bundle
wait
sudo rm -r -f bundle.tgz
PORT=80 MONGO_URL=mongodb://localhost:27017/meteor ROOT_URL=$1 nohup node bundle/main.js &
