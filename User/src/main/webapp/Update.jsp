<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Edit Profile Page</title>
    <link rel="stylesheet" href="CSS/updatee.css" />
  </head>
  <body>
    <nav class="navbar">
      <div class="navbar-logo">
        <img src="CSS/logo.webp" alt="Logo" />
      </div>
      <ul class="navbar-menu">
        <li><a href="http://localhost:8090/AdminDemo/Home.jsp">Home</a></li>
        <li>
          <a href="http://localhost:8090/AdminDemo/filmInsert.jsp">Admin</a>
        </li>
        <li>
          <a href="http://localhost:8090/Feedback/AddFeedback.jsp">Feedback</a>
        </li>
        
        <li><a href="#">Contact Us</a></li>
      </ul>
      <div class="navbar-profile">
        <a href="http://localhost:8090/User/Login.jsp"
          ><img src="CSS/user.png" alt="Profile Icon"
        /></a>
      </div>
    </nav>
    <% String id = request.getParameter("id"); String username =
    request.getParameter("username"); String email =
    request.getParameter("email"); String password =
    request.getParameter("password"); %> 
    <h1>Update Your Account Details</h1>
    <div class="left">
      <div class="row">
        <div class="right-half">
          <form action="update" method="post">
            <div class="form-group">
              <label for="username">User ID</label> <br />
              <input
                type="text"
                id="username"
                name="cusid"
                value="<%= id %>"
                readonly
              />
            </div>
            <div class="form-group">
              <label for="username">User Name</label> <br />
              <input
                type="text"
                id="username"
                name="uname"
                value="<%= username %>"
                required
              />
            </div>
            <div class="form-group">
              <label for="email">Email</label> <br />
              <input
                type="email"
                id="email"
                name="email"
                value="<%= email %>"
                required
              />
            </div>
            <div class="form-group">
              <label for="password">Password</label> <br />
              <input
                type="password"
                id="password"
                name="pass"
                required
                value="<%= password %>"
              />
            </div>

            <button type="submit" class="up">UPDATE</button>
          </form>
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
