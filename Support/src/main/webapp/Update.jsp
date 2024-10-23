<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Edit Support Page</title>
<link rel="stylesheet"  href="CSS/insert.css"  />
  </head>
  <body>
  
  <%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
	String nic = request.getParameter("nic");  
	String phone= request.getParameter("phone");
	String email = request.getParameter("email");
	String date = request.getParameter("date");
	String text = request.getParameter("text");
%>
 
 
  
    <h1>Update Support Details</h1>
        <div class="container">
    <div class="right-half">
        <form  action="update" method="post">
         
             <label >Customer ID</label>
            <input type="text" id="id" name="id" required  value="<%= id %>"  readonly/><br><br>
          
            <label for="username">Customer Name</label>
            <input type="text" id="name" name="name" required  value="<%= name %>"  /><br><br>
            
             <label >Customer NIC</label>
            <input type="text" id="nic" name="nic" required value="<%= nic %>" /><br><br>
            
               <label >Customer phone</label>
            <input type="text" id="phone" pattern="[0-9]{10}"  name="phone" required value="<%= phone %>" /><br><br>
            
               <label >Customer Email</label>
            <input type="email" id="email" name="email" required value="<%= email %>" /><br><br>
            
            <label >Date</label>
            <input type="date" id="date" name="date" required value="<%= date %>" /><br><br>
       
            <label >Reply  </label>
            <input type="text" id="text" name="text" required value="<%= text %>" /><br><br>
          
          
          
                  <div class="btncls">
      <button type="submit" >Update</button>
    </div>
        </form>
        </div>
        </div>
        
  </body>
</html>
