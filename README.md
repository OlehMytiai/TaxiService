# Taxi Service

A Web Application that shows the use of OOP and SOLID principles. The project was created for educational purposes, to demonstrate skills in software design.

## ✨ Description

In this application we use 3-tier Architecture:
* The Data tier (Dao): here we use CRUD operations to manipulate data.
* The Application logic tier (Service): all business logic is concentrated at this level
* The Presentation tier (Controller): the tier of user interaction with the application

#### What you can do?
* Create a manufacturer;
* Create a driver;
* Create a car with manufacturer;
* Set and remove drivers to/from the car;
* Login using driver's login and password;

## 🧬 Technologies
* Java 11
* Apache Maven
* Apache Log4j2
* Apache Tomcat 9
* Custom Injector
* JDBC
* MySQL
* HTTP Servlet
* JSP, JSTL
* HTML, CSS, XML

## ⚡️ Installation
*IMPORTANT!!!* You need to install Tomcat 9 and MySQL

1. Clone repository to your local machine

```bash
git clone https://github.com/OlehMytiai/taxi-service.git
```

2. Configurate `ConnectionUtil` class to create connection to your db:
```java
public class ConnectionUtil {
    private static final String URL = "YOUR DATABASE URL";
    private static final String USERNAME = "YOUR USERNAME";
    private static final String PASSWORD = "YOUR PASSWORD";
    private static final String JDBC_DRIVER = "YOUR JDBC DRIVER";
    
    // other logic
}
```

3. Use script in `init_db.sql` to configurate `taxi` schema.

4. Configurate Tomcat:
* Edit Configurations -> Add new Configuration -> Choose Tomcat Local
* In the tab Deployment -> Add -> Choose `taxi-service: war exploded`
* Set Application context: / (empty path)

5. Open `log4j2.xml` and add absolute path to your `.log` file.
```xml
<File name="LogToFile" filename="ABSOLUTE PATH">
```
**WARNING!!!** Path to your project must contain only english letters. 
Also, it mustn't contain spaces. In other case `Injector` won't work correctly.

## 👨‍💻 Author
### Oleh Mytiai
[LinkedIn](https://www.linkedin.com/in/mytiaiov)
