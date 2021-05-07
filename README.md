# HTML2Latex
> This is a java converter that converts HTML to Latex format and vice verser

## Step-up
Project Requirements
[Java](https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html)
[Tomcat](https://tomcat.apache.org/download-10.cgi)

Down load apache tomcat from the [here](https://tomcat.apache.org/download-10.cgi). During the installation make sure to create a default admin username and password.
### Follow the steps below to set up the environment
Copy the location of Tomcat where it was saved during installation
Add the path to java jdk in the environment variables.
![java_home](https://user-images.githubusercontent.com/32780232/117436960-6c702f00-aee4-11eb-8592-6e6d6657bea2.png) 
Add Tomcat location to the environment variables as below
![catalina_home](https://user-images.githubusercontent.com/32780232/117437003-772ac400-aee4-11eb-9027-60ae42cac9d4.png) 
Add the path to the servlet.jar lib and bin folder
![user_path](https://user-images.githubusercontent.com/32780232/117437026-801b9580-aee4-11eb-8515-48c9f5764143.png)
![add_path](https://user-images.githubusercontent.com/32780232/117437048-89a4fd80-aee4-11eb-9b27-e141be725777.png)
Add Tomcat lib folder location
![class_path](https://user-images.githubusercontent.com/32780232/117437055-8dd11b00-aee4-11eb-8494-7f4a948f51f3.png)
### To run the Project
Place the project root folder in C:\Program Files\Apache Software Foundation\Tomcat 10.0\webapps 
In your terminal change directory to C:\Program Files\Apache Software Foundation\Tomcat 10.0\bin and run the command below
```bash
startup.bat
```
The project is accessible at this url
```
http://localhost/html2latex
```
To stop the project run the command
```bash
shutdown.bat
```