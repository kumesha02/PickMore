 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link href="CSS/delete.css" rel="stylesheet">
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
 
  
    
        <h1>Delete Details</h1>
        
        
        <form  action="delete" method="post">     
        
        <div class="form-group">
    <label>Name</label>
    <input type="text" id="id" name="id" value="<%= id %>" readonly  />
  </div><br><br>
        
        
          <div class="form-group">
    <label>Name</label>
    <input type="text" id="name" name="name" value="<%= name %>" required readonly/>
  </div><br><br>

  <div class="form-group">
    <label>NIC</label>
    <input type="text" id="nic" name="nic"  value="<%= nic %>" required readonly/>
  </div><br><br>

  <div class="form-group">
    <label>Your Train</label>

      <input type="text" id="train" name="train"  value="<%= train %>" required readonly/>
 <br><br>
</div>

<div class="form-group">
    <label>people:</label>
    <input type="number" id="amount" name="amount" min="0" step="1" required value="<%= amount %>" readonly/>
</div>
<br><br>
<div class="form-group">
    <label>Total Price</label>
    <input type="text" id="price" name="price" readonly value="<%= price %>" readonly/>
</div><br><br>


<div class="form-group">
    <label>Date</label>
    <input type="text" id="date" name="date" readonly value="<%= date %>" readonly/>
  </div>
          <br><br>
          
          <button type="submit" class="dlt">DELETE</button>
        </form>
        
        
      </div>
    </div>
    
 <script>
    // Add event listener
    document.getElementById('train').addEventListener('change', calculateTotal);
    document.getElementById('amount').addEventListener('input', calculateTotal);

    function calculateTotal() {
        var trainValue = parseInt(document.getElementById('train').value);
        var peopleAmount = parseInt(document.getElementById('amount').value);
        var price;

        if (trainValue === 1) {
            price = peopleAmount * 100;
        } else if (trainValue === 2) {
            // Add calculation for Train 2 here
            price = peopleAmount * 150; // Example calculation: people amount * 150
        } else if (trainValue === 3) {
            // Add calculation for Train 3 here
            price = peopleAmount * 200; // Example calculation: people amount * 200
        } else if (trainValue === 4) {
            // Add calculation for Train 4 here
            price = peopleAmount * 120; // Example calculation: people amount * 120
        } else if (trainValue === 5) {
            // Add calculation for Train 5 here
            price = peopleAmount * 180; // Example calculation: people amount * 180
        }

        document.getElementById('price').value = price;
    }
</script>

    
</body>
</html>