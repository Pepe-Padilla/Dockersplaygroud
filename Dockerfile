FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

ARG DEFAULT_PORT=80

ENV PORT ${DEFAULT_PORT}

EXPOSE $PORT

# Crea un volumen conectado a la ruta interna indicada en el path (tomar en cuenta el WORKDIR) pero es anonimo
# para hacerlo con nombre (no anonimo) se debe de hacer dese el comando docker run
#VOLUME [ "/app/feedback" ]

CMD [ "node", "start" ]