victor-hello-world
==================

Sample docker image to test docker deployments

Usage
-----

To create the image `victorbiga/victor-hello-world`, execute the following command on the victor-hello-world folder:

	docker build -t victorbiga/victor-hello-world .

You can now push your new image to the registry:

	sudo docker push victorbiga/victor-hello-world


Running your Hello World docker image
-------------------------------------

Start your container image:

	docker run -d -p 80 victorbiga/victor-hello-world


Check port the container has started on:

        docker ps

Sample output might be 

0.0.0.0:32768->80/tcp


Test your deployment:

	curl http://localhost:32768/


