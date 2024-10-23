<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title></title>
      <link rel="stylesheet" href="CSS/insert.css" />
  </head>
  <body>
  
       
  
    <h1>Enter new Support details...</h1>
    
   <div class="container">
    <div class="right-half">
        <form  action="insert" method="post">
         
          
            <label for="username">Customer Name</label>
            <input type="text" id="name" name="name" required /><br><br>
            
             <label >Customer NIC</label>
            <input type="text" id="nic" name="nic" required /><br><br>
            
               <label >Customer phone</label>
            <input type="text" id="phone" name="phone" pattern="[0-9]{10}"  required /><br><br>
            
               <label >Customer Email</label>
            <input type="email" id="email" name="email" required /><br><br>
            
            <label >Date</label>
            <input type="date" id="date" name="date" required /><br><br>
       
            <label >Reply  </label>
            <input type="text" id="text" name="text" required /><br><br>
          
          

        <div class="btncls">
      <button type="submit">Submit</button>
    </div>
        </form>
        </div>
        </div>
    
  </body>
</html>
