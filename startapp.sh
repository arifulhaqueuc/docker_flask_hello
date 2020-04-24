echo "stopping all containers"
docker kill $(docker ps -q)
echo "removing all containers"
docker rm $(docker ps -a -q)
echo "removing all containers images"
docker rmi $(docker images -q)


HOST='localhost'
BROWSER_PORT=5019
# Define Docker port number that gave in Dockerfile
DOC_PORT=5000
# Define a Docker container name randomly
DOC_CONT_NAME=hyePPVV
# Define the Docker image name from previous step
DOC_IMG_NAME=flask999922
# Build the required docker image
docker build --tag $DOC_IMG_NAME .
# Run the Docker command
docker run \
	--publish $BROWSER_PORT:$DOC_PORT \
	--detach \
	--name $DOC_CONT_NAME \
	$DOC_IMG_NAME


echo "View the output: localhost:5001"