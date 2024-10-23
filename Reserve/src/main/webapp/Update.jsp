<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Edit Profile Page</title>
    <link rel="stylesheet" href="CSS/insert.css" />
  </head>
  <body>
  
  <%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
	String nic = request.getParameter("nic");  
	String train = request.getParameter("train");
	String amount = request.getParameter("amount");
	String price = request.getParameter("price");
	String  date= request.getParameter("date");
%>
 
  
    
        <h1>EDIT YOUR Deatails</h1>
        
        
        <form  action="update" method="post">     
        
        <div class="form-group">
    <label>Name</label>
    <input type="text" id="id" name="id" value="<%= id %>" readonly  />
  </div><br><br>
        
        
          <div class="form-group">
    <label>Name</label>
    <input type="text" id="name" name="name" value="<%= name %>" required />
  </div><br><br>

  <div class="form-group">
    <label>NIC</label>
    <input type="text" id="nic" name="nic"  value="<%= nic %>" required />
  </div><br><br>

  <div class="form-group">
    <label>Select 	Vehicle Type</label>
    <select id="train" name="train" required value="<%= train%>">
        <option value="van">Van</option>
        <option value="car">Car</option>
        <option value="wheel">Wheel</option>
        <option value="bus">Bus</option>
        <option value="train">Train</option>
    </select>
</div><br><br>

<div class="form-group">
    <label>How many people:</label>
    <input type="number" id="amount" name="amount" min="0" step="1" required value="<%= amount %>" />
</div><br><br>

<div class="form-group">
    <label>Total Price</label>
    <input type="text" id="price" name="price" readonly value="<%= price %>"/>
</div><br><br>


<div class="form-group">
    <label>Date</label>
    <input type="date" id="date" name="date"  value="<%= date %>"/>
  </div>
          
<br><br>
          <button type="submit">UPDATE</button>
        </form>
        
        
      </div>
    </div>
    
 <script>
    // Add event listener
    document.getElementById('train').addEventListener('change', calculateTotal);
    document.getElementById('amount').addEventListener('input', calculateTotal);

    function calculateTotal() {
    	var trainValue = document.getElementById('train').value;
        var peopleAmount = parseInt(document.getElementById('amount').value);
        var price;

        if (trainValue === 'van') {
            price = peopleAmount * 100;
        } else if (trainValue === 'car') {
            // Add calculation for Train 2 here
            price = peopleAmount * 150; // Example calculation: people amount * 150
        } else if (trainValue === 'wheel') {
            // Add calculation for Train 3 here
            price = peopleAmount * 200; // Example calculation: people amount * 200
        } else if (trainValue === 'bus') {
            // Add calculation for Train 4 here
            price = peopleAmount * 120; // Example calculation: people amount * 120
        } else if (trainValue === 'train') {
            // Add calculation for Train 5 here
            price = peopleAmount * 180; // Example calculation: people amount * 180
        }

        document.getElementById('price').value = price;
    }
</script>

    
  </body>
</html>
