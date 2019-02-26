#
# Hexo Dockerfile
#
# https://github.com/billryan/docker-hexo
#

# Pull base image.
FROM node:slim
LABEL Kankuu <akhmadbasir5@gmail.com>

RUN useradd hexo
WORKDIR /home/hexo

RUN chown -R hexo:hexo /home/hexo
RUN npm install hexo-cli -g

USER hexo