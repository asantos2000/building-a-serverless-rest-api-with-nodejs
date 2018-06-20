# BETA
docker run -it --name mock --rm -v $PWD/doc/api.md:/usr/src/app/api.md -p 5000:3000 ajnasz/api-mock