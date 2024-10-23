<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login Page</title>
    <link href="CSS/loginn.css" rel="stylesheet" />
  </head>
  <body>

    <h1>Login </h1>
    <div class="left">
      <div class="row">
        <div class="column">
          <img src="CSS/5.png" alt="bg" class="imgcls" />
        </div>
        <div class="column">
          <div class="right-half">
            <form action="login" method="post">
              <label>Name</label>
              <input
                type="text"
                name="username"
                class="form-group"
                required
                placeholder="Enter your username"
              /><br /><br />
              <label>Password</label>
              <input
                type="password"
                name="password"
                required
                class="form-group"
                placeholder="Enter your password"
              /><br />
              <button>Login</button>
            </form>
            <p class="r">
              Don't have an account?
              <a href="http://localhost:8090/User/Register.jsp" class="r"
                >Register here</a
              >
            </p>
          </div>
        </div>
      </div>
    </div>
        <br /><br /><br /><br /><br /><br /><br /><br /><br />
    <footer class="footer">
      <div class="footer-content">
        <p>&copy; 2023 Your Company Name. All rights reserved.</p>
        <ul class="footer-links">
          <li><a href="#">Privacy Policy</a></li>
          <li><a href="#">Terms of Service</a></li>
        </ul>
      </div>
    </footer>
  </body>
</html>
