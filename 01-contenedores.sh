#Contenedor: Entorno AISLADO, donde existen todas las dependencias para la app
#¿Qué es una imagen? Serie de instrucciones para crear un contenedor

#Imagen ---> clase 
#Contenedor ---> objeto

#Las imagenes viven en un repositorio de imagenes (Container Registry). Docker Hub

docker container run hello-world

#Lista de contenedores
docker container ls -a

#Crear contenedor que persista en el timepo y que exponga un puerto
docker container run -d -p 8081:80 docker/getting-started

#Eliminar un contenedor
docker container rm <Id del contenedor>

#Detener un contenedor
docker container stop <id del contenedor> o <nombre del contenedor>

#Iniciar un contenedor que ya existe
docker container start <id del contenedor> o <nombre del contenedor>

#Eliminar un contenedor forzando 
docker container rm -fv <id del contenedor>

#Crear contenedor de ubuntu 
docker container run --name maquinaubuntu -d ubuntu sleep 3600

#Ingresar a un contenedor
docker container exec -it <id del contenedor o nombre> <comando>

#NGINX
docker container run -d -p 8088:80 nginx

#Cómo construir una imagen?
docker build -t node-api:1.0 .

#MySQL
docker container run --name Mysql -e MYSQL_ROOT_PASSWORD=123456 -d -p 3306:3306 mysql:8

#Logs 
docker logs <ID>

#Volumes Bind Volumes / Volumenes Administrados
docker volume ls

#Usar un volumen
docker container run --name MySQL3 -e MYSQL_ROOT_PASSWORD=123456 -v 411_mysqldb:/var/lib/mysql -d -p 3308:3306 mysql:8

#Crear un volumen
docker volume create <nombre>

#network
docker network create <nombre>

docker netowrk connect <nombre red> <nombre contenedor>

#login
docker login -u dairymod115 -p <contraseña>
