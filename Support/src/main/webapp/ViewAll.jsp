<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>View All Details</title>
    <link rel="stylesheet" href="CSS/alldisplayy.css" />
  </head>
  <body>
 

  
    <h1>Support Details Table</h1>
    <div class="fully">
      <div class="dtls">
      
        
        <form action="login" method="post">
        
		
		<input type="text" name="name" class="form-group" placeholder="Enter name">
		<input type="text" name="nic" class="form-group" placeholder="Enter NIC">
		
		  <div class="btncls">
            <button class="btnn">Search</button>
          </div>
	    </form>
        
        
        <div class="lftbtn">
          <a href="http://localhost:8090/Support/Insert.jsp">
            <button>Add New Support</button></a
          >
        </div>
      </div>
      <br />
      <div class="tblefull">
        <table id="customers">
          <thead>
            <tr>
              <th>Student ID</th>
              <th>Customer Name</th>
              <th>Customer NIC</th>
              <th>Customer Phone Number</th>
              <th>Customer Email</th>
              <th>Reported Date</th>
              <th>Reply</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach var="row" items="${allAdmins}">
              <tr>
                <td>${row.id}</td>
                <td>${row.name}</td>
                <td>${row.nic}</td>
                <td>${row.phone}</td>
                <td>${row.email}</td>
                <td>${row.date}</td>
                <td>${row.text}</td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>
    </div>
  </body>
</html>

