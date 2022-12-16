#FROM public.ecr.aws/lambda/nodejs:18.2022.12.14.06
FROM node:12.18.1

WORKDIR /var/task

COPY ["app.js", "parser.js", "./"]
COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

CMD [ "node", "app.js" ]