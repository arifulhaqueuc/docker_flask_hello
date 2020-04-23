docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)

docker build --tag flask999922 .

BROWSER_PORT=5001
# Define Docker port number that gave in Dockerfile
DOC_PORT=5000
# Define a Docker container name randomly
DOC_CONT_NAME=hyePPVV
# Define the Docker image name from previous step
DOC_IMG_NAME=flask999922
# Run the Docker command
docker run --publish $BROWSER_PORT:$DOC_PORT --detach --name $DOC_CONT_NAME $DOC_IMG_NAME
