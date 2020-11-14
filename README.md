![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/artum/memsql-studio)
![Docker Pulls](https://img.shields.io/docker/pulls/artum/memsql-studio)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/artum/memsql-studio?sort=date)


# memsql-studio
The Docker image with pre-installed [MemSQL Studio](https://docs.memsql.com/v7.1/tools/memsql-studio/memsql-studio-overview/) ([official release notes](https://docs.singlestore.com/v7.1/release-notes/memsql-studio-release-notes/)).

Run the image:
    
    $ docker run --name memsql-studio -p 8080:8080/tcp -d artum/memsql-studio:latest

To enter to the MemSQL Studio, open in the browser:
  
    http://localhost:8080

There is predefined connection to `localhost:3306` that you can use or create a new one.

The username and the password are for your MemSQL cluster super-user.

## Keep Data Between Sessions
You need to mount storage to your container in order to keep the MemSQL Studio settings stored between sessions.
To mount you local folder `/tmp/memsql-studio` run the following docker command:

    $ docker run --name memsql-studio -v /tmp/memsql-studio:/var/lib/memsql-studio -p 8080:8080/tcp -d artum/memsql-studio:latest
