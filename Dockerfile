FROM ghcr.io/siwatinc/node-baseimage:node16
RUN apt-get update
RUN apt-get -y install ffmpeg
RUN npm install -g h265ize
CMD wget -nc https://raw.githubusercontent.com/SiwatINC/h265ize/master/init.sh -P $output | : && chmod +x $output/init.sh && $output/init.sh

