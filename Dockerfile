FROM      node
RUN       apt update -y
RUN       apt install nodejs -y
RUN       mkdir /todo
WORKDIR   /todo
COPY      routes.js && server.js && todoController.js && package-lock.json && package.json .
RUN       npm install
RUN       npm run build
CMD       [ "node", "npm start" ]    