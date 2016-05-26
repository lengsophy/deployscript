meteor bundle bundle.tgz
wait
sudo tar -zxvf bundle.tgz
wait
sudo yum install nodejs npm
wait
#npm install pm2 -g
cd bundle/programs/server/
sudo npm install
wait
sudo npm install bcrypt
wait
cd ../../..
sudo chmod -R 777 bundle
sudo chown -R apache:apache bundle
wait
#PORT=80 MONGO_URL=mongodb://localhost:27017/meteor ROOT_URL=$1 pm2 start --name "1000" main.js
PORT=80 MONGO_URL=mongodb://localhost:27017/meteor ROOT_URL=$1  nohup node bundle/main.js &


