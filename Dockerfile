FROM nginx:alpine

COPY ./docker/site.conf /etc/nginx/conf.d/default.conf

COPY ./ /code

WORKDIR /code

RUN cp .env.example .env

RUN chmod -R 777 /code/storage

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]