FROM nginx:latest

#information about image
LABEL maintainer="Birkan Yaylacı"
LABEL version="1.0"
LABEL name="hello-hepsiburada"

#env variable define 
ENV YOURNAME="Birkan"

RUN apt-get install curl -y

#nginx hosts its web pages in the /usr/share/nginx/html folder.
WORKDIR /usr/share/nginx/html

#Here we copy the hellohepsiburada.html file, which is our landing page.
COPY hellohepsiburada.html /usr/share/nginx/html

#Via sed, we replace the word YourName in the hellohepsiburada.html file with the value of the $USER env variable and write the contents of the file to a new file named index.html.
#then we run the nginx daemon
CMD sed -e s/YourName/"$YOURNAME"/ hellohepsiburada.html > index.html ; rm index1.html hellohepsiburada.html; nginx -g 'daemon off;'
