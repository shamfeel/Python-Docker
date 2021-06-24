#Baseline image
From alpine:3.5

#install python
Run apk add --update py2.pip

#copy files to local
COPY app.py /Users/test/Documents/dockerimage/
COPY templates/index.html /Users/test/Documents/dockerimage/templates/

#port number for container to communicate
EXPOSE 5000

#run python application
cmd ["python", /Users/test/Documents/dockerimage/app.py]
