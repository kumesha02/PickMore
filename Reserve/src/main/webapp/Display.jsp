<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <link rel="stylesheet" href="CSS/displayy.css" />
  </head>
  <body>
    
          
	
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${ cus.id}" />
	<c:set var="name" value="${ cus.name}" />
	<c:set var="nic" value="${ cus.nic}" />
	<c:set var="train" value="${ cus.train}" />
	<c:set var="amount" value="${ cus.amount}" />
	<c:set var="price" value="${ cus.price}" />
	<c:set var="date" value="${ cus.date}" />
	
 
    
    <br /><br /><br />
    <div class="ful">
      <div class="card">
        <div class="all">
          <h1>Details Page</h1>
          <span>User Id = </span>${cus.id}<br /><br />
          <span>User Name = </span> ${cus.name}<br /><br />
          <span>User NIC = </span> ${cus.nic}<br /><br />
          <span>Booking Date = </span> ${cus.date}<br /><br />
          <span>Vehicle Type = </span> ${cus.train}<br /><br />
          <span>Person Amount = </span> ${cus.amount}<br /><br />
          <span>Total Price = </span> ${cus.price}<br /><br />
   
  
  

	</c:forEach>
	
	<c:url value="Update.jsp" var="cusupdate">
	
	<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="nic" value="${nic}"/>
	<c:param name="train" value="${train}"/>
	<c:param name="amount" value="${amount}"/>
	<c:param name="price" value="${price}"/>
	<c:param name="date" value="${date}"/>
	
	 </c:url>
	 
	 <c:url value="Delete.jsp" var="cusdelete">
	 
	<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="nic" value="${nic}"/>
	<c:param name="train" value="${train}"/>
	<c:param name="amount" value="${amount}"/>
	<c:param name="price" value="${price}"/>
	<c:param name="date" value="${date}"/>
	
	 </c:url>

	 
	          <a href="${cusupdate }"><button name="update" >Update </button></a><br><br>
               <a href="${cusdelete }"><button name="delete" class="dlt">Delete</button></a>
              </div>
      </div>
    </div>
    <br /><br /><br />
    
  </body>
</html>

