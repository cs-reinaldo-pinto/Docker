FROM ubuntu:trusty  
MAINTAINER Reinaldo Pinto <reinaldo.pinto@concrete.com.br>
RUN apt-get update \
		#&& apt-get upgrade -yq \
		&& apt-get -yq install \
		build-essential \
		python \
		wget \
		bindfs \
		vim \
		git-core \
		g++ \
		autoconf \
		file \
		gcc \
		libc-dev \
		make \
		pkg-config \
		re2c \
		vim \
		npm \
		curl \
		openssl \
		libssl-dev
RUN git clone https://github.com/nodenv/nodenv.git ~/.nodenv 
RUN echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.bashrc \
		&& echo 'eval "$(nodenv init -)"' >> ~/.bashrc
RUN git clone https://github.com/nodenv/node-build.git \
		&& cd node-build \
		&& ./install.sh
RUN  ~/.nodenv/bin/nodenv install 5.5.0 \ 
		&& ~/.nodenv/bin/nodenv global 5.5.0
RUN npm install pm2
RUN echo 'alias pm2='/./node_modules/.bin/pm2'' >> ~/.bashrc 
CMD ["tail -f /dev/null"]
