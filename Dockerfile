# See also: https://access.redhat.com/solutions/2107431

# use the Openshift JWS/Tomcat base image provided by Red Hat
FROM registry.access.redhat.com/jboss-webserver-3/webserver30-tomcat8-openshift:latest
MAINTAINER Tom Donohue, tdonohue@redhat.com

USER root

ENV JAVA_UPDATE_VERSION=111 \
    JAVA_BUILD_VERSION=14

# Download Java, accepting the license; extract and set locations of javac and java
RUN curl -L -o /tmp/jdk-8-linux-x64.tar.gz -H "Cookie: oraclelicense=accept-securebackup-cookie" -k "http://download.oracle.com/otn-pub/java/jdk/8u$JAVA_UPDATE_VERSION-b$JAVA_BUILD_VERSION/jdk-8u$JAVA_UPDATE_VERSION-linux-x64.tar.gz" && \
    tar xvf /tmp/jdk-8-linux-x64.tar.gz -C /usr/lib/jvm/ && \
    /usr/sbin/alternatives --install "/usr/bin/java" java "/usr/lib/jvm/jdk1.8.0_$JAVA_UPDATE_VERSION/bin/java" 1 && \
    /usr/sbin/alternatives --set "java" "/usr/lib/jvm/jdk1.8.0_$JAVA_UPDATE_VERSION/bin/java" && \
    /usr/sbin/alternatives --install "/usr/bin/javac" javac "/usr/lib/jvm/jdk1.8.0_$JAVA_UPDATE_VERSION/bin/javac" 1 && \
    /usr/sbin/alternatives --set "javac" "/usr/lib/jvm/jdk1.8.0_$JAVA_UPDATE_VERSION/bin/javac"

ENV JAVA_HOME="/usr/lib/jvm/jdk1.8.0_$JAVA_UPDATE_VERSION" \
    JAVA_VENDOR="Oracle" \
    JAVA_VERSION="1.8.0"

# Switch back to the jboss user
USER 185

