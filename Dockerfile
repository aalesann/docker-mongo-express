FROM node:14

# Se crea un directorio dentro de la imagen
RUN mkdir -p /usr/src/app

# Directorio donde corre por defecto el contenedor 
WORKDIR /usr/src/app

# Se copian todos los archivos que comiencen con "package" y terminen con ".json"
COPY package*.json ./

# Correr CMD
RUN npm install

# Se copian todos los archivos del directorio en donde se encuentra Dockerfile
COPY . .

# Se establece el puerto que expone el contenedor
EXPOSE 3000

CMD ["npm", "run", "dev"]