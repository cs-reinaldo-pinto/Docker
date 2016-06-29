FROM ubuntu:12.04
MAINTAINER Reinaldo
RUN apt-get update &&  apt-get install git vim -y
RUN git clone https://github.com/nodenv/nodenv.git ~/.nodenv 
RUN echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.bashrc && \
		echo 'eval "$(nodenv init -)"' >> ~/.bashrc
RUN git clone https://github.com/nodenv/node-build.git && \
		cd node-build &&  \
		./install.sh
CMD ["tail -f /dev/null"]
