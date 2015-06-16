FROM node:0.10-onbuild

ADD . /

WORKDIR /

RUN npm install

ENV SERVICE_PORT=5011
ENV CONTRACT_TIMEOUT=60000
ENV RETRY_TIMEOUT=5000
ENV CATALOG_SERVICE_URL=http://46.101.191.124:5005/products

ENTRYPOINT npm start