docker build -t wpserveur .
docker run -p 80:80 -p 82:82 -p 81:81 -p 443:443 -it wpserveur
