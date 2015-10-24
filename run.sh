sudo docker stop hubot-harry
sudo docker rm hubot-harry
sudo docker run -d  -v `pwd`/data:/data --name hubot-harry hubot /bin/sh -c ". ./env.sh;bin/hubot -a slack"
