## Build Image

1. Create directory for new image:

		mkdir mydockerbuild

2. Create Dockerfile with content:

		FROM docker/whalesay:latest                                                     
		RUN apt-get -y update && apt-get install -y fortunes                            
		CMD /usr/games/fortune -a | cowsay

3. Build an image:

		#hello-world is a image name 
		docker build -t docker-whale .
 
4. Tag for publis on hub

		docker tag e3004ceaae67 lourencoccc/docker-whale:latest	

5. Push to hub

		docker push lourencoccc/docker-whale

