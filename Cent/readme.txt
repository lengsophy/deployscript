#step 1
sudo ssh -i centos@IP_Server(accessing to the server)

#step 2
git clone https://github.com/lengsophy/deployscript.git (already publice)

#step 3

cd deployscript/Cent/
cp * ../../
cd ../
cp mongodb.repo ../
cd ../
sudo chmod u+x setupC.sh deploy_short.sh update_short.sh
sh ./setupC.sh

#step 4 

git clone https://username:password@github.com/project_name/name.git

Ex. git clone https://djisse95:djibril95@github.com/noolab/safirv1.git

#step 5

cp deploy_short.sh update_short.sh project_name/
./deploy_short.sh "http://IP"


or you want to update

./update_short.sh "http://IP"




#sudo scp -r root@IP:/var/www/html/test/db/configure/dump /home/noolab/Documents/configurServer
