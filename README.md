# Simple dockerised node app 

### Clone the Repo
``
git clone git@github.com:arnav13081994/sample_node_docker.git
``

### Navigate to the clone git repo directory
``
cd sample_node_docker
``

### Build the image

``
 docker build . -t sample_image
``

### Start and run a container with the correct image

``
$ docker container run --rm -p 80:3000 sample_image
``


### Go to http://localhost:80 and check out the app!
