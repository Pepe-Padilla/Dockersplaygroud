FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

# Crea un volumen conectado a la ruta interna indicada en el path (tomar en cuenta el WORKDIR) pero es anonimo
# para hacerlo con nombre (no anonimo) se debe de hacer dese el comando docker run
#VOLUME [ "/app/feedback" ]

CMD [ "node", "server.js" ]