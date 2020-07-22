# login-form-task

TASK TO BE COMPLETED

Create login form (email, password) with the basic validation (valid email; password between 4 and 20 characters containing only letters, numbers and ‘_’).
On success login (with the hardcoded server-side authentication) show the success page with logout link. Keep in mind that this page should only be accessible by logged in users.
On fail show the corresponding message on the login page (the email entered should stay on the page).
 

TECHNOLOGIES THAT SHOULD BE USED:

Spring MVC
Spring Security
Spring Boot

Run the project from command prompt:

To start the application, while inside the project folder, you can open a command prompt and enter "mvn spring-boot:run" to start the project. 

Run the project inside IntelliJ Idea:

Open the "login-form-task" project inside IntelliJ Idea, and wait for Maven to download all dependencies.
To start the application, you can use maven: mvn spring-boot:run, or you can start the project pressing the "run" button. 
Open your web browser and type in the address bar: http://localhost:8080
The hardcoded values for the login form are username = "smith@mail.com", and password = "password".
If something else is entered, or the data entered does not coonform to the given validations, you will be shown the apropriate messages.
On success, the success page will be displayed, with the logout link.
