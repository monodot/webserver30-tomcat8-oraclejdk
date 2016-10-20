# webserver30-tomcat8-oraclejdk
This Dockerfile adds Oracle JDK to the JBoss Web Server/Tomcat image for OpenShift Container Platform, provided by Red Hat.

*Before using*, update the following environment variables in the `Dockerfile` as required:

- `JAVA_UPDATE_VERSION` - The number following the `u` in `JDKuNNN`
- `JAVA_BUILD_VERSION` - The number following the `b` in the JDK download URL, e.g. `8u11-b14`

To build and run as a standalone Docker container:

    git clone https://github.com/monodot/webserver30-tomcat8-oraclejdk8.git
    cd webserver30-tomcat8-oraclejdk8
    docker build -t webserver30-tomcat8-oraclejdk8 .
