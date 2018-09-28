# Prod is running 7.0.86 whereas as of 21-sep latest is 7.0.90
#https://hub.docker.com/_/tomcat/
FROM tomcat:7-jre7

ADD hello-world.war /usr/local/tomcat/webapps/hello-world.war

# Add libraries
ADD mysql-connector-java-5.1.36-bin.jar /usr/local/tomcat/lib/

#Add JDBC connection/JNDI connection details in server.xml and context.xml
ADD server.xml /usr/local/tomcat/conf/
ADD context.xml /usr/local/tomcat/conf/
ADD tomcat-users.xml /usr/local/tomcat/conf/

VOLUME [ "/usr/local/tomcat/webapps", "/usr/local/tomcat/logs" ]

EXPOSE 8080 8009
