<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Service</title>
<script type="text/javascript" src="script.js"></script>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<table>
		<tr>
			<td><img src="customer.jpg" alt="image" width="100" height="100"></td>
			<td id="empty" width="350px"></td>
			<td><h1 style="text-align: center;" id="heading">Home Service</h1><br><h1 style="color:white;">Payment bills</h1></td>
		</tr>
	</table>
	&emsp;&emsp;<h1><b><u style="color:white;">Service Details:-</u></b></h1>
<table>
	<tr>
		<td><b><h1 style="color:white;">&emsp;&emsp;Customer Name </h1></b></td>
		<td><h2 style="color:white;">&emsp;&emsp;: ${custname}</h2></td>
	</tr>
	<tr>
		<td><b><h1 style="color:white;">&emsp;&emsp;Email Id</h1></b></td>
		<td><h2 style="color:white;">&emsp;&emsp;: ${custemailid}</h2></td>
	</tr>
	<tr>
		<td><b><h1 style="color:white;">&emsp;&emsp;Phone Number</h1></b></td>
		<td><h2 style="color:white;">&emsp;&emsp;: ${custnum}</h2></td>
	</tr>
	<tr>
		<td><b><h1 style="color:white;">&emsp;&emsp;Address</h1></b></td>
		<td><h2 style="color:white;">&emsp;&emsp;: ${address}</h2></td>
	</tr>
	<tr>
		<td><b><h1 style="color:white;">&emsp;&emsp;Reference Id</h1></b></td>
		<td><h2 style="color:white;">&emsp;&emsp;: ${random}</h2></td>
	</tr>
	<tr>
		<td><b><h1 style="color:white;">&emsp;&emsp;Amount</h1></b></td>
		<td><h2 style="color:white;">&emsp;&emsp;: ${amount}</h2></td>
	</tr>
	<tr>
		<td><b><h1 style="color:white;">&emsp;&emsp;Vendor Id</h1></b></td>
		<td><h2 style="color:white;">&emsp;&emsp;: ${vendorid}</h2></td>
	</tr>
	<tr>
		<td><b><h1 style="color:white;">&emsp;&emsp;Vendor Number</h1></b></td>
		<td><h2 style="color:white;">&emsp;&emsp;: ${vendornum}</h2></td>
	</tr>
	<tr>
		<td><b><h1 style="color:white;">&emsp;&emsp;Service Type</h1></b></td>
		<td><h2 style="color:white;">&emsp;&emsp;: ${servicetype}</h2></td>
	</tr>
	<tr>
		<td><b><h1 style="color:white;">&emsp;&emsp;Category</h1></b></td>
		<td><h2 style="color:white;">&emsp;&emsp;: ${category}</h2></td>
	</tr>
	
	
</table>
<button onclick="myFunction()" class="adminregsubmit">Print this page</button>

<script>
function myFunction() {
  window.print();
}
</script>
</body>
</html>