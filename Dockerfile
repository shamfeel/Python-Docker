#Baseline image
From alpine:3.5

#install python
Run apk add --update py2.pip

#copy files to local
COPY app.py /usr/src/app/
COPY templates/index.html /usr/src/app/templates/

#port number for container to communicate
EXPOSE 5000

#run python application
cmd ["python", /usr/src/app/app.py]
