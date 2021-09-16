FROM tomcat:8.0-alpine
COPY target/hello-1.0.war /usr/local/tomcat/webapps/hello-1.0.war
ADD tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
EXPOSE 7070
CMD [ "catalina.sh" , "run"]
