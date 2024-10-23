<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Search Details</title>
    <link href="CSS/searchh.css" rel="stylesheet" />
  </head>
  <body>

    <br /><br /><br /><br /><br /><br /><br /><br /><br />
    <div class="containerr">
      <div class="right-half">
        <h1>Search Here..</h1>
        <form action="search" method="post">
          <input
            type="text"
            name="name"
            class="form-group"
            placeholder="Enter your Name"
          />

          <input
            type="text"
            name="nic"
            class="form-group"
            placeholder="Enter your NIC"
          />
          <button>Search</button>
        </form>
      </div>
      <br />
    </div>

    <br /><br /><br />
  </body>
</html>
