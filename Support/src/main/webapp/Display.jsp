<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Register Page</title>
    <link rel="stylesheet" href="CSS/display.css" />
  </head>
  <body>

    
            
        <h1>Your Support Details</h1>
          
	
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${ cus.id}" />
	<c:set var="name" value="${ cus.name}" />
	<c:set var="nic" value="${ cus.nic}" />
	<c:set var="phone" value="${ cus.phone}" />
	<c:set var="email" value="${ cus.email}" />
	<c:set var="date" value="${ cus.date}" />
	<c:set var="text" value="${ cus.text}" />
  
  <div class="container">
        <div class="right-half">

	
        <label for="username">Id</label>
        <input type="text" value="${cus.id}" readonly /><br /><br />

        <label for="username">Name</label>
        <input type="text" value="${cus.name}" readonly /><br /><br />

        <label for="email">NIC</label>
        <input type="email" value="${cus.nic}" readonly /><br /><br />

        <label>Phone Number</label>
        <input type="text" value="${cus.phone}" readonly /><br /><br />

        <label f>Email</label>
        <input type="text" value="${cus.email}" readonly /><br /><br />

        <label>Date</label>
        <input type="text" value="${cus.date}" readonly /><br /><br />

        <label>Reply</label>
        <input type="text" value="${cus.text}" readonly /><br /><br />
	
	

	</c:forEach>
	
	<c:url value="Update.jsp" var="cusupdate">
	
	<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="nic" value="${nic}"/>
	<c:param name="phone" value="${phone}"/>
	<c:param name="email" value="${email}"/>
	<c:param name="date" value="${date}"/>
	<c:param name="text" value="${text}"/>
	
	 </c:url>
	 
	 <c:url value="Delete.jsp" var="cusdelete">
	
		<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="nic" value="${nic}"/>
	<c:param name="phone" value="${phone}"/>
	<c:param name="email" value="${email}"/>
	<c:param name="date" value="${date}"/>
	<c:param name="text" value="${text}"/>
	
	
	 </c:url>
	 
		 <div class="btncls">
	          <a href="${cusupdate }"><button name="update" >Update</button></a>
               <a href="${cusdelete }"><button name="delete" class="dkt">Delete</button></a>
               </div>
        </div>
        
     </div>
    </div>
    
    
    
  </body>
</html>

