#FROM public.ecr.aws/lambda/nodejs:12.2022.12.14.06
FROM public.ecr.aws/lambda/nodejs:14.2022.12.14.06

WORKDIR /var/task

COPY ["app.js", "parser.js", "./"]
COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

ENV S3_BUCKET="mario-resized-images"

CMD [ "app.lambdaHandler" ]
