 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link href="CSS/deleteee.css" rel="stylesheet">
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
 
 
  
    <h1>Support Details delete Confirmation Page</h1>
             <div class="container">
    <div class="right-half">
        <form  action="delete" method="post">
         
             <label >Customer ID</label>
            <input type="text" id="id" name="id" required  value="<%= id %>"  readonly/><br><br>
          
            <label for="username">Customer Name</label>
            <input type="text" id="name" name="name" readonly  value="<%= name %>"  /><br><br>
            
             <label >Customer NIC</label>
            <input type="text" id="nic" name="nic" readonly value="<%= nic %>" /><br><br>
            
               <label >Customer phone</label>
            <input type="text" id="phone" name="phone" readonly value="<%= phone %>" /><br><br>
            
               <label >Customer Email</label>
            <input type="email" id="email" name="email" readonly value="<%= email %>" /><br><br>
            
            <label >Date</label>
            <input type="date" id="date" name="date" readonly value="<%= date %>" /><br><br>
       
            <label >Reply  </label>
            <input type="text" id="text" name="text" readonly value="<%= text %>" /><br><br>
          
          
        <div class="btncls">
      <button type="submit" class="dkt">Delete</button>
    </div>
        </form>
        </div>
        </div>
</body>
</html>