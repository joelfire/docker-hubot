FROM ubuntu

RUN mkdir -p /root/hubot
WORKDIR /root/hubot

RUN apt-get update

# need legacy to get 'node' symlink
RUN apt-get install -y npm nodejs-legacy redis-server
RUN npm install -g yo generator-hubot

# yo seems to need group access
RUN chmod -R g+rwx /root
RUN yo hubot --name harry --adapter slack --owner 'hubot@joelfire.com' --description 'A friendly bot'

# data dir will be mounted from the host
RUN rm -rf scripts
RUN ln -s /data/scripts

RUN rm hubot-scripts.json
RUN ln -s /data/hubot-scripts.json

# include all env vars you need for scripts here
RUN ln -s /data/env.sh

# any additional packages
RUN npm install cheerio




