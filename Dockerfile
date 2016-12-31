FROM hypriot/rpi-iojs:1.4.1
MAINTAINER Mathias Renner <mathias@hypriot.com>

RUN apt-get update
RUN apt-get -y install git

# git clone slackbot 
RUN git clone https://github.com/a2-ito/rpi-slackbot.git /rpi-slackbot

# Define working directory
WORKDIR /rpi-slackbot

# Install app dependencies
RUN npm install

# Install nodemon
RUN npm install nodemon -g

# Open Port 80
EXPOSE 80

# Run Node.js
CMD ["node", "slack_bot.js"]
