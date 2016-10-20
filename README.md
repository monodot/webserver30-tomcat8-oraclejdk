# webserver30-tomcat8-oraclejdk
This Dockerfile adds Oracle JDK to the JBoss Web Server/Tomcat image for OpenShift Container Platform, provided by Red Hat.

To build and run as a standalone Docker container:

    git clone https://github.com/monodot/webserver30-tomcat8-oraclejdk8.git
    cd webserver30-tomcat8-oraclejdk8
    docker build -t webserver30-tomcat8-oraclejdk8 .
