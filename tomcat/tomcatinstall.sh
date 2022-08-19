sudo useradd -m -d /opt/tomcat -U -s /bin/false tomcat 

wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.65/bin/apache-tomcat-9.0.65.tar.gz

sudo tar xzvf apache-tomcat-9*tar.gz -C /opt/tomcat --strip-components=1 

sudo chown -R tomcat:tomcat /opt/tomcat/ 

sudo chmod -R u+x /opt/tomcat/bin 

sudo cp configuration/tomcat-users.xml /opt/tomcat/conf/tomcat-users.xml 


sudo cp configuration/server.xml /opt/tomcat/conf/server.xml

sudo cp manager/context.xml /opt/tomcat/webapps/manager/META-INF/context.xml

sudo cp host-manager/context.xml /opt/tomcat/webapps/host-manager/META-INF/context.xml

sudo cp configuration/tomcat.service /etc/systemd/system/tomcat.service 

sudo systemctl daemon-reload

sudo systemctl start tomcat.service 

sudo systemctl enable tomcat.service 
sudo systemctl restart tomcat.service

sudo systemctl status tomcat.service 
