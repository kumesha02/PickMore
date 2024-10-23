 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Delete Your Account</title>
	<link href="CSS/deletee.css" rel="stylesheet">
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
	<%
	 String id = request.getParameter("id");
    String username = request.getParameter("username");
	String email = request.getParameter("email");  
	String password = request.getParameter("password");
   %>


	<h1>Account Delete 
	Confirmation</h1>
	<br>
    <div class="left">
      <div class="row">
        <div class="right-half">
	<form action="delete" method="post">

        
           <label for="id">Email</label>
            <input type="text"  name="cusid" value= "<%= id %>" readonly/>
            
            <label for="email">Email</label>
            <input type="text"  name="email" value= "<%= email %>" readonly/>
          
         
            <label for="username">User Name</label>
            <input type="text"  name="uname" value= "<%= username %>" readonly />
          <br>
          
          
	            <button type="submit" class="dlt">Delete Account</button>
	</form>
	</div>
</div>
</div>
    <br /><br /><br /> <br /><br /><br />
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