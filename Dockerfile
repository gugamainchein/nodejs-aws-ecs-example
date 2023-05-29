# Use a imagem do Node.js como base
FROM node:16

# Defina o diretório de trabalho dentro do container
WORKDIR /app

# Copie o package.json para o diretório de trabalho
COPY package*.json ./

# Execute o comando npm install para instalar as dependências
RUN npm install
RUN npm install -g ts-node

# Copie o código-fonte da aplicação para o diretório de trabalho
COPY . .

# Exponha a porta em que a aplicação está ouvindo
EXPOSE 8080

# Execute o comando para iniciar a aplicação
CMD ["npm", "start"]
