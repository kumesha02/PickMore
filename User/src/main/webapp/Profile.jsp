<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Register Page</title>
    <link rel="stylesheet" href="CSS/profilee.css" />
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
	
	<c:forEach var="cus" items="${cusDetails}">
	
		<c:set var="id" value="${ cus.id}" />
		<c:set var="username" value="${ cus.username}" />
		<c:set var="email" value="${ cus.email}" />
		<c:set var="password" value="${ cus.password}" />
	    <h1>Account Details</h1>
	    <div class="left">
	      <div class="row">
	        <div class="column">
	          <img src="CSS/acc.jpg" alt="bg" class="imgcls" />
	        </div>
	        <div class="column">
	          <div class="right-half">
	            <div class="fm">
	              <div class="form-group">
	                <label for="username">User ID</label>
	                <input type="text" value="${ cus.id}" readonly />
	              </div>
	              <div class="form-group">
	                <label for="username">User Name</label>
	                <input type="text" value="${ cus.username}" readonly />
	              </div>
	              <div class="form-group">
	                <label for="email">Email</label>
	                <input type="email" value="${ cus.email}" readonly />
	              </div>
	              <div class="form-group">
	                <label for="password">Password</label>
	                <input type="text" value="${ cus.password}" readonly />
	              </div>

				</c:forEach>
				
				<c:url value="Update.jsp" var="cusupdate">
					<c:param name="id" value="${id}"/>
					<c:param name="username" value="${username}"/>
					<c:param name="email" value="${email}"/>
					<c:param name="password" value="${password}"/>
				</c:url>
				 
				<c:url value="Delete.jsp" var="cusdelete">
					<c:param name="id" value="${id}"/>
					<c:param name="username" value="${username}"/>
					<c:param name="email" value="${email}"/>
					<c:param name="password" value="${password}"/>
				</c:url>
	 
	 
				<a href="${cusupdate }"><button class="up">Update</button></a>
			    <a href="${cusdelete }"> <button class="dlt">Delete</button></a>
	            </div>
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

