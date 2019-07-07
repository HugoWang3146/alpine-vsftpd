#Usage 

docker build --tag wh/alpine-ftp .

docker run -d -v ${PATH_TO_SHARED_FOLDER}:/home/uftp  -p 21:21 -p 10090-10100:10090-10100 --name myftp wh/alpine-ftp

#Info

user/password: uftp