# Utilitza una imatge oficial de Node.js
FROM node:18.16.0-alpine3.17
RUN mkdir -p /opt/app
# Estableix el directori de treball
WORKDIR /opt/app

# Copia els fitxers de l'aplicació
COPY app/ .

# Instal·la les dependències
RUN npm install
COPY app/ .
# Exposa el port 3000
EXPOSE 3000

# Comanda per executar l'aplicació
CMD [ "npm", "start"]
