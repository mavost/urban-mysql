# Deploy mysql on docker

## build image
```docker build -t urban_sql:latest .```

## run container
``` docker run -it --name mysql -p 3306:3306 -v $(pwd):/app -e MYSQL_DATABASE=admin -e MYSQL_USER=myuser -e MYSQL_PASSWORD=123456 -e MYSQL_ROOT_PASSWORD=111111 urban_sql```