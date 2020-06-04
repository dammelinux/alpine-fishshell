Install Alpine with 2 Option

1> Option run scripts
add permission 2 scripts chmod +x 
run bash setup1.sh and run continuous with bash setup2.sh 

2> Run Dockerfile
docker build .

###
docker build -t alpine:fishshell .
###
docker run -it --name server alpine:fishshell fish


