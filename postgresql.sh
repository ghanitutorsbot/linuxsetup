 sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
 sudo apt install postgresql postgresql-contrib -y
 sudo systemctl enable postgresql
 sudo systemctl start postgresql
 sudo passwd postgres
 su - postgres
 createuser sonar
 psql
 ALTER USER sonar WITH ENCRYPTED password 'sonarpass';
 CREATE DATABASE sonarqube OWNER sonar;
 GRANT ALL PRIVILEGES ON DATABASE sonarqube to sonar;
 \q
 exit
