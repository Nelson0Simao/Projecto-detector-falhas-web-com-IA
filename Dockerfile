# Use uma imagem oficial do Node.js como base
FROM node:18

# Define o diretório de trabalho no contêiner
WORKDIR /app

# Copia os arquivos do package.json e package-lock.json para instalar as dependências
COPY package*.json ./

# Instala as dependências do projeto
RUN npm install

# Copia o código do projeto para dentro do contêiner
COPY . .

# Exponha a porta da aplicação (ajuste para a porta usada pela sua aplicação)
EXPOSE 3000

# Define o comando para rodar a aplicação
CMD ["npm", "start"]

