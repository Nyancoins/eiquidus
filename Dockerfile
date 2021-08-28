FROM node:14

RUN apt update && apt install git build-essential mongodb-clients -y
WORKDIR /app
#RUN git clone https://github.com/team-exor/eiquidus.git .
COPY . . 
RUN npm install
COPY docker-entrypoint.sh /app/docker-entrypoint.sh

EXPOSE 3001
ENTRYPOINT bash /app/docker-entrypoint.sh
