# ansibleDemo
Solution to given problem statement:
- Install all the required packages
- apache2, tomcat7, mysql
- Create two instances of tomcat7 as "tomcat7-a" and "tomcat7-b"
- Change the configurations for both the instances
- Add a load balancer for tomcat7 instances using proxy/mod_jk module in apache2(used proxy)
- enable all the services
- Restart all the services

1. Install all the packages using "apt" module
2. Create two instances of tomcat7
  - Create file "tomcat7-a" in "/var/lib/" folder i.e. parallel to tomcat7 folder(module: file state=directory)
  - Create all the folders same as tomcat7 folders in "tomcat7-a" directory
  - Create links for "server.xml", "catelina.properties", "policy.d" and "web.xml" with orignal tomcat7 configuration(module: file state=link)
  - Open server.xml and change all the ports(Connector port used: tomcat7-a:8081 and tomcat7-b:8082)
  - Change owner of the "tomcat7-a" folder as "tomcat7"(owner=tomcat7)
  - Create a folder as "tomcat7-a" in /usr/share folder and copy all the content of tomcat7 to the created folder(module: file state=directory)
  - Create a service file in /etc/init.d as "tomcat7-a" and copy all the content of tomcat7 in same folder
  - Change $NAME in "tomcat7-a" file to "tomcat7-a" and start the tomcat7-a service
  - Repeat the process for "tomcat7-b" instance
3. Load balancing can be done using Proxy module
  - Add upstream and downstream values with reuired values
4. Enable and restart all the services
