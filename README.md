![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/artum/memsql-studio)
![Docker Pulls](https://img.shields.io/docker/pulls/artum/memsql-studio)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/artum/memsql-studio?sort=date)


# memsql-studio
The Docker image with pre-installed [MemSQL Studio](https://docs.memsql.com/v7.1/tools/memsql-studio/memsql-studio-overview/).

To pull the image:
  
    docker pull artum/memsql-studio

To run the image:
    
    docker run --rm -it  -p 8080:8080/tcp memsql-studio

To enter to the MemSQL Studio, open in the browser:
  
    http://localhost:8080

There is predefined connection to `localhost:3306` that you can use or create a new one.

The username and the password are for your MemSQL cluster super-user.
