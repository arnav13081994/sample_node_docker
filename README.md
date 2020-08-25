# Simple dockerised node app 


### Build the image

``
 docker build . -t sample_image
``

### Start and run a container with the correct image

``
$ docker container run --rm -p 80:3000 sample_image
``


### Go to http://localhost:80 and check out the app!