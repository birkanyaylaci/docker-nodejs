Prerequisite
  Installed:
    Docker
    git


Steps

Clone source code from git
$ git clone https://github.com/birkanyaylaci/docker-nodejs.git

Build Docker image
$ docker image build -t birkanyaylaci/hellohepsiburada .

Run Docker Container
$ docker container run --rm -d --name hellodocker -p 11130:80 birkanyaylaci/hellohepsiburada

Test application
$ curl localhost:11130

the respone should be:
Hello Hepsiburada from Birkan





