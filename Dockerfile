FROM ghcr.io/siwatinc/node-baseimage:node16
RUN apt-get update
RUN apt-get -y install ffmpeg
RUN npm install -g h265ize
COPY . /scripts
CMD cp -v /scripts/init.sh $output/init.sh | : && chmod +x $output/init.sh && $output/init.sh

