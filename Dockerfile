FROM tomcat:7.0.108-jdk8-adoptopenjdk-openj9
ENV SSH_PORT 2222

RUN apt update && apt install openssh-server -y
RUN apt install net-tools -y
RUN echo "root:Docker!" | chpasswd

COPY sshd_config /etc/ssh/
COPY init.sh /opt/startup/init.sh
COPY ROOT.war /usr/local/tomcat/webapps

RUN chmod 777 /opt/startup/init.sh

EXPOSE 2222 8080
ENTRYPOINT ["sh", "/opt/startup/init.sh"]
