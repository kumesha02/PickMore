<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Successful</title>
    <link rel="stylesheet" href="CSS/pro.css" />
  </head>
  <body>

    <br /><br /><br />
    <h1 class="topic-uplode">Transport Oweners<span> Details..</span></h1>
    <br>
    <c:forEach var="adm" items="${admDetails}">
      <c:set var="id" value="${adm.id}"/>
      <c:set var="name" value="${adm.name}"/>
      <c:set var="nic" value="${adm.nic}"/>
      <c:set var="phone" value="${adm.phone}"/>
      <c:set var="address" value="${adm.address}"/>
 
           <div class="fm">
             <label class="lable-uplode" for="name">Owner ID</label><br />
             <input class="uplode-input" value="${adm.id}" readonly /><br /><br />

             <label class="lable-uplode">Owner Name</label><br />
             <input class="uplode-input" value="${adm.name}" readonly/><br /><br />
             
             <label class="lable-uplode" for="description">Owner NIC</label><br/>
             <input class="uplode-input" value="${adm.nic}" readonly /><br /><br />

             <label class="lable-uplode">Owner Mobile</label><br />
             <input class="uplode-input" value="${adm.phone}" readonly/><br /><br />

             <label class="lable-uplode">Owner Address</label><br />
             <input class="uplode-input" value="${adm.address}" readonly/><br /><br />

             <br />
             
      
          </c:forEach>
          
          <c:url value="UpdateAdmin.jsp" var="admupdate">
          
            <c:param name="id" value="${id}"/>
            <c:param name="name" value="${name}"/>
            <c:param name="nic" value="${nic}"/>
            <c:param name="phone" value="${phone}"/>
            <c:param name="address" value="${address}"/>
          
          </c:url>
          
      
          <c:url value="DeleteAdmin.jsp" var="admdelete">
          
            <c:param name="id" value="${id}"/>
            <c:param name="name" value="${name}"/>
            <c:param name="nic" value="${nic}"/>
            <c:param name="phone" value="${phone}"/>
            <c:param name="address" value="${address}"/>
          
          </c:url>
          
          <div class="button-form">
          
            <a href="${admupdate}">
              <button class="uplode">Update</button>
            </a>
      <br><br>
            <a href="${admdelete}">
              <button class="uplode dlt">Delete</button>
            </a>
         </div>
         </div>
 
     <br><br><br>

  </body>
</html>
