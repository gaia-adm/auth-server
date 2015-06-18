FROM jetty:9.2.11-jre8

ADD ./target/auth.war /var/lib/jetty/webapps/

# prepare folder for H2 DB - jetty user home folder is not created by default
RUN mkdir /home/jetty \
 && chown -R jetty:jetty /home/jetty \
 && chmod -R 744 /home/jetty
