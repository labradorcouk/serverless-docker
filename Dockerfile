FROM node:8.10.0
LABEL maintainer="devops@thelabrador.co.uk"
RUN npm install -g npm && npm install serverless -g
