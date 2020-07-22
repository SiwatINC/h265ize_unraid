FROM siwatinc/nodejsubuntu_base_image
RUN apt-get update
RUN sudo apt-get update -qq && sudo apt-get -y install \
  autoconf \
  automake \
  build-essential \
  cmake \
  git-core \
  libass-dev \
  libfreetype6-dev \
  libgnutls28-dev \
  libsdl2-dev \
  libtool \
  libva-dev \
  libvdpau-dev \
  libvorbis-dev \
  libxcb1-dev \
  libxcb-shm0-dev \
  libxcb-xfixes0-dev \
  pkg-config \
  texinfo \
  wget \
  yasm \
  zlib1g-dev
RUN npm install -g h265ize
CMD script --return -c "h265ize --watch -v $extraarg -m '$preset' -d '$output' -q $qp -f '$format' '$input'" /dev/null
