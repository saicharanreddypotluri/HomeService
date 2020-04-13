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
			<td><img src="admin.png" alt="image" width="100" height="100"></td>
			<td id="empty" width="250px"></td>
			<td><h1 id="heading">Home Service</h1></td>
			<td></td>
			<td><form name="myForm" action="AdminLoginServlet"
					method="post">
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input
						type="submit" name="submit" value="HOME" class="adminregsubmit1"><br>
					<br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input
						type="submit" name="submit" value="LOGOUT" class="adminregsubmit1">
				</form></td>
		</tr>
	</table>
	<table>
		<form name="myForm" action="AdminLoginServlet"
			onsubmit="return vendorvalidateForm1()" method="post"
			required="required">
			<table>
				<tr>
					<td><b style="color:white;">Customer EmailId :&emsp;&emsp;&emsp;</b></td>
					<td><input type="text" name="custemail"
						placeholder="Enter Customer Emailid"><br>
					<br></td>
				</tr>
				<tr>
					<td><b style="color:white;">Service Type :</b></td>
					<td><select name="cservicetype" id="servicetype"
						style="padding: 10px 20px;" onchange="changecat();">
							<option value="">Select</option>
							<option value="Plumbing">Plumbing</option>
							<option value="Cleaning">Cleaning</option>
							<option value="Laptop">Laptop</option>
							<option value="Air Condition">Air Condition</option>
							<option value="Pest Control">Pest Control</option>
					</select></td>
					<td><b style="color:white;">&emsp;&emsp;&emsp;Categories:</b></td>
					<td>&emsp;&emsp;&emsp;<select name="ccategory" id="category"
						style="padding: 10px 20px;">
							<option value="">Select</option>
					</select>
					</td>
				</tr>
				<tr>
					<br>
					<br>
					<td><b style="color:white;"><br>Other Categories :</b></td>
					<td><br>
					<input type="text" name="ccategory1"
						placeholder="Enter other category"></td>
					
					<td><b style="color:white;">&emsp;&emsp;&emsp;Discount(%) : </b></td>
					<td>&emsp;&emsp;&emsp;<input type="text" name="discount" placeholder="Enter Discount in %"></td>
					<td><b style="color:white;">Changed as Rupees :</b></td>
					<td><input type="text" name="discount1" placeholder="Enter as Money"></td>
				</tr>
			</table>
			<br> <br> <input style="align-content: center;"
				type="submit" value="Give" name="submit" class="adminregsubmit">
				<input style="align-content: center;"
				type="submit" value="Take" name="submit" class="adminregsubmit">
		</form>
	</table>
</body>
</html>





