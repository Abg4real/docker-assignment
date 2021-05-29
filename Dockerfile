FROM debian:buster-slim
COPY data.sql / 
RUN apt update
RUN apt install mariadb-client mariadb-server -y
EXPOSE 3306/tcp
RUN apt update
# RUN service mysql start
# RUN mysql -u root -e "CREATE USER 'scalereal'@'localhost' IDENTIFIED BY 'scalereal';"
# RUN mysql -u root -e "GRANT ALL PRIVILEGES ON * . * TO 'scalereal'@'localhost';"
# RUN mysql -u root -e "CREATE DATABASE scalerealInterns;"
# RUN mysql -u username -p scalereal < data.sql
COPY startup.sh /
RUN chmod 777 /startup.sh
ENTRYPOINT [ "/startup.sh" ]