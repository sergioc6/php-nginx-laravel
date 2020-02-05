# php-nginx-laravel
Proyecto dockerizado con php, nginx y Laravel.
A continuación se detallan los pasos para configurar el proyecto localmente. Las siguientes instalaciones son requeridas:
  - Git
  - Docker
  - Docker-compose


### Instalación
Clonar el repositorio
```sh
$ git clone https://github.com/sergioc6/pictures-api.git
$ cd pictures-api
```

Instalar las dependencias
```sh
$ php composer.phar install
$ php composer.phar dumpautoload
```

Copiar el archivo de enviroment:
```sh
$ cp .env.example .env
```

Generar la Key de la APP:
```sh
$ php artisan key:generate
```

Construir los containers:
```sh
$ docker-compose build
```

Levantar los servicios de php y nginx.
```sh
$ docker-compose up -d
```