FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

# Esto se monta ahora como volumen binded para que cualquier cambio en nuestrro código se refleje en las imagenes
# también de debe de crar un volumen anonimo para ./node_modules que se crea tras hacer npm install en node
#COPY . .

EXPOSE 80

# Crea un volumen conectado a la ruta interna indicada en el path (tomar en cuenta el WORKDIR) pero es anonimo
# para hacerlo con nombre (no anonimo) se debe de hacer dese el comando docker run
#VOLUME [ "/app/feedback" ]

CMD [ "node", "server.js" ]