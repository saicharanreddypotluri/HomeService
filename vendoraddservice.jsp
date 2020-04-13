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
<table >
		<tr>
			<td><img src="vendor.png" alt="image" width="100" height="100"></td>
			<td id="empty" width="250px"></td>
			<td><h1 id="heading">Home Service</h1></td>
			<td>             </td>
			<td ><form name="myForm" action="VendorLoginServlet" method="post">
				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="submit" name="submit" value="HOME" class="adminregsubmit1"><br>
			<br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="submit" name="submit" value="LOGOUT" class="adminregsubmit1">
				</form>
			</td>
		</tr>
	</table>
	<table>
		<form name="myForm" action="VendorLoginServlet"
			onsubmit="return vendorvalidateForm1()" method="post"
			required="required">
	</table>
	<p>
		<br> <br> <b style="color:white;">Contact Number:</b>&emsp;&emsp;&emsp;<input
			type="tel" id="telnum1" size="30" name="telnum1"
			placeholder="Enter your phone number" pattern="[789]{1}[0-9]{9}">&emsp;&emsp;&emsp;
		<b style="color:white;">Avalible Timings:</b>&emsp;&emsp;&emsp; <input type="time"
			id="avltime1" name="avltimefrom1"> &emsp;&emsp;<b style="color:white;">to
			&emsp;&emsp;</b> <input type="time" id="avltime1" name="avltimeto1"><br>
		<br> <b style="color:white;">Location: &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</b><input
			type="text" size="30" id="location" name="location1"
			placeholder="Enter your location">&emsp;&emsp;&emsp; <b style="color:white;">Service
			Type: </b>&emsp;&emsp;&emsp;&emsp; <select name="servicetype"
			id="servicetype" style="padding: 10px 20px;" onchange="changecat();">
			<option value="select">Select</option>
			<option value="Plumbing">Plumbing</option>
			<option value="Cleaning">Cleaning</option>
			<option value="Laptop">Laptop</option>
			<option value="Air Condition">Air Condition</option>
			<option value="Pest Control">Pest Control</option>
		</select> &emsp;&emsp;<b style="color:white;">Categories: &emsp;&emsp;</b> <select name="category" id="category"
			style="padding: 10px 20px;">
			<option value="">Select</option>
		</select><br> <br> <b style="color:white;">Other Category:&emsp;&emsp;</b>&emsp;&emsp;
		<input size="50" type="text" placeholder="Other category you want to add" name="category1">
		<select name="status" style="padding: 10px 20px;">
			<option value="opened">opened</option>
			<option value="closed">closed</option>
		</select> <input type="submit" class="adminregsubmit" value="Update Services"
			name="submit" onclick="return servicevalidate()"><br> <br>
		<br> <br> <b style="color: white;">To Remove the service:</b>&emsp;&emsp;
		<select name="servicetype1" id="servicetype1"
			style="padding: 10px 20px;" onchange="changecat1();">
			<option value="select">Select</option>
			<option value="Plumbing">Plumbing</option>
			<option value="Cleaning">Cleaning</option>
			<option value="Laptop">Laptop</option>
			<option value="Air Condition">Air Condition</option>
			<option value="Pest Control">Pest Control</option>
		</select> &emsp;&emsp;<b style="color:white;"> Categories: </b> <select name="category2"
			id="category1" style="padding: 10px 20px;">
			<option value="">Select</option>
		</select><br> <br> <b style="color:white;">Other Category</b><input size="50" type="text"
			placeholder="Other category you want to add" name="category11">


		<input type="submit" class="adminregsubmit" value="Delete Services"
			name="submit">
	</table>
	</form>
</body>
</html>