# User Login Project - Documentation

## Technologies Used
- Programming Language: Java
- Integrated Development Environment (IDE): IntelliJ IDEA
- Database: MySQL

## Local Setup Instructions

### Prerequisites
- Java Development Kit (JDK) installed on my machine.
- MySQL server installed and running.

### Setup Steps

1. Clone the Repository:2. Import Project into IntelliJ IDEA:
- Opening IntelliJ IDEA and selecting "Open" from the welcome screen.
- Navigating to the cloned "user-login-project" directory and selecting it to open the project.

3. Database Configuration:
- Creating a new MySQL database for the user login project.
- Updating the database connection details in the `application.properties` file located in the project's resources folder.
  ```
  spring.datasource.url=jdbc:mysql://localhost:3306/user
  spring.datasource.username=root
  spring.datasource.password=P@ssw0rd12
  ```

4. Build the Project:
- Opening a terminal within IntelliJ IDEA or use the built-in terminal.
- Running the following command to build the project:
  ```
  ./mvnw clean install
  ```

5. Run the Application:
- In the terminal, running the following command to start the Spring Boot application:
  ```
  ./mvnw spring-boot:run
  ```

6. Access the Application:
- Once the application is running, opening web browser and going to http://localhost:8585 to access the user login page.

7. Testing the Application:
- Using the login credentials to test the application. We can create new users and log in with their credentials. Moreover we can update the user, view the user and delete the user as well.
