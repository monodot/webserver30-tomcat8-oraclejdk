# webserver30-tomcat8-oraclejdk
This Dockerfile adds Oracle JDK to the JBoss Web Server/Tomcat image for OpenShift Container Platform, provided by Red Hat.

*Before using*, update the following environment variables in the `Dockerfile` as required:

- `JAVA_UPDATE_VERSION` - The number following the `u` in `8u111`
- `JAVA_BUILD_VERSION` - The number following the `b` in the JDK download URL, e.g. `8u111-b14`

To build the Docker image:

    git clone https://github.com/monodot/webserver30-tomcat8-oraclejdk8.git
    cd webserver30-tomcat8-oraclejdk8
    docker build -t webserver30-tomcat8-oraclejdk8 .
