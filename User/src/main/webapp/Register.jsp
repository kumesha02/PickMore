<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Register Page</title>
    <link rel="stylesheet" href="CSS/insertt.css" />
  </head>

  <body>

    <h1>SIGNUP</h1>
    <div class="left">
      <div class="row">
        <div class="column">
          <img src="CSS/5.webp" alt="bg" class="imgcls" />
        </div>
        <div class="column">
          <div class="right-half">
            <br />
            <form action="insert" method="post">
              <div class="form-group">
                <label for="username">User Name</label>
                <input type="text" id="username" name="uid" required />
              </div>
              <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required />
              </div>
              <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="psw" required />
              </div>

              <button type="submit">SIGNUP</button>
            </form>
          </div>
        </div>
      </div>
    </div>
        <br /><br /><br />
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
