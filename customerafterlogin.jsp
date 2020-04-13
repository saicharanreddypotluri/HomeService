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
			<td><img src="customer.jpg" alt="image" width="100" height="100"></td>
			<td id="empty" width="250px"></td>
			<td><h1 id="heading">Home Service</h1></td>
			<td>             </td>
			<td ><form name="myForm" action="CustomerLoginServlet" method="post">
				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="submit" name="submit" value="HOME" class="adminregsubmit1"><br>
			<br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="submit" name="submit" value="LOGOUT" class="adminregsubmit1">
				</form>
			</td>
		</tr>
	</table>
		<form name="myForm" action="CustomerLoginServlet"
			onsubmit="return vendorvalidateForm1()" method="post"
			required="required">
			<input type="submit" value="Notifications" name="submit" class="adminregsubmit">
			<input style="margin-left:60%;" type="submit" value="Total Services" name="submit" class="adminregsubmit">
			<div>
				<table>
					<tr>
						<td><h2 style="color:white;"> Search Based On Service Type:&emsp;&emsp;</h2>
						<td><select name="servicetype" id="select">
								<option value="">Select</option>
								<option value="Plumbing">Plumbing</option>
								<option value="Cleaning">Cleaning</option>
								<option value="Laptop">Laptop</option>
								<option value="Air Condition">Air Condition</option>
								<option value="Pest Control">Pest Control</option>
						</select></td></tr><br>
						<tr>
						<td><h2 style="color:white;">Choose City:&emsp;&emsp;</h2> </td>
						<td><input list="city" id="select" name="city"> 
							<datalist id="city" name="city">
								<option value="Hyderabad">Hyderabad</option>
								<option value="Secunderabad">Secunderabad</option>
								<option value="Guntur">Guntur</option>
								<option value="Vijayawada">Vijayawada</option>
								<option value="Banglore">Banglore</option>
								<option value="Mysore">Mysore</option>
							</datalist>
						</td>
						</tr>
				</table>
				<br> <br> <input type="submit" class="adminregsubmit"
					value="Search Services" name="submit"><br>
				<br>
			</div>
		</form>
	</table>
</body>
</html>