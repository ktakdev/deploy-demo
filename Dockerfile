FROM node:latest

# アプリケーションディレクトリを作成する
WORKDIR /usr/src/app

# ライブラリのインストール
COPY package*.json ./
RUN npm install --only=production

# ソースコードのインポート
COPY . .

EXPOSE 3000
CMD [ "node", "app.js" ]