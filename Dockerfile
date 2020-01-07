FROM donhenton/maven-docker
USER  root
RUN rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*

RUN apt-get update && \
apt-get install -y ruby python


RUN mkdir /home/root/.npm-global
ENV PATH=/home/root/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/root/.npm-global


RUN npm install -g node-sass
