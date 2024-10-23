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


    
    
        <h1>Fill Your Details</h1>
        
        <form action="insert" method="post">

  <div class="form-group">
    <label>Name</label>
    <input type="text" id="name" name="name" required /><br><br><br>
  </div>

  <div class="form-group">
    <label>NIC</label>
    <input type="text" id="nic" name="nic" required /><br><br><br>
  </div>

  <div class="form-group">
    <label>Select Your Vehicle</label>
    <select id="train" name="train" required>
        <option value="van">Van</option>
        <option value="car">Car</option>
        <option value="wheel">Wheel</option>
        <option value="bus">Bus</option>
        <option value="train">Train</option>
    </select><br><br><br>
</div>

<div class="form-group">
    <label>How many people:</label>
    <input type="number" id="amount" name="amount" min="0" step="1" required /><br><br><br>
</div>

<div class="form-group">
    <label>Total Price</label>
    <input type="text" id="price" name="price" readonly /><br><br><br>
</div>


<div class="form-group">
    <label>Date</label>
    <input type="date" id="date" name="date"  required /><br><br><br>
  </div>

  

  <button type="submit">Submit</button>
</form>

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

      </div>
    </div>
  </body>
</html>
