"DESCARGANDO IMAGENES"

docker pull rocker/geospatial
docker pull postgres
docker pull dpage/pgadmin4

"CREANDO CONTENEDORES"

docker run -p 8787:8787 --name rstudio -v C:/rstudio:/home/rstudio -e PASSWORD=123456 -d rocker/geospatial
docker run -p 5432:5432 --name pg -e POSTGRES_PASSWORD=123456 -d postgres
docker run -p 80:80 --name pgadmin -e 'PGADMIN_DEFAULT_EMAIL=postgres@domain.com' -e 'PGADMIN_DEFAULT_PASSWORD=postgres' -d dpage/pgadmin4

"MOSTRANDO EL GATEWAY"

docker inspect pgadmin