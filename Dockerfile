FROM ubuntu:trusty

RUN sudo apt-get update
RUN sudo apt-get install -y nodejs
RUN sudo apt-get install -y npm


ADD package.json package.json  
RUN npm install  
ADD . .

CMD ["nodejs","app.js"]  
