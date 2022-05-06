#cek repo kontainer
docker image ls | grep "nama repo"

#FROM instruction
docker build -t haxnel/from from

docker image ls

#RUN instruction
docker build -t haxnel/run run
docker build -t haxnel/run run --progress=plain --no-cache

#COMMAND(CMD) instruction
docker build -t haxnel/command command

docker image inspect haxnel/command

docker container create --name command haxnel/command
docker container start command
docker container logs command
docker container ls -a | grep command

#LABEL instruction
docker build -t haxnel/label label

#ADD instruction
docker build -t haxnel/add add
docker container create --name add haxnel/add
docker container start add
docker container logs add
docker container ls -a | grep add