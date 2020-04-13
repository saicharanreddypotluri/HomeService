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
			<td><img src="admin.png" alt="image" width="100" height="100"></td>
			<td id="empty" width="250px"></td>
			<td><h1 id="heading">Home Service</h1></td>
			<td>             </td>
			<td ><form name="myForm" action="AdminLoginServlet" method="post">
<!-- 				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="submit" name="submit" value="HOME" class="adminregsubmit1"><br> -->
			<br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="submit" name="submit" value="LOGOUT" class="adminregsubmit1">
				</form>
			</td>
		</tr>
	</table>
		<form name="myForm" action="AdminLoginServlet"
			onsubmit="return vendorvalidateForm1()" method="post"
			required="required">
			<table align="center">
			<br>
		
				<tr><td><input type="submit" value="      Services     " name="submit" class="adminregsubmit"><br></td><td>  </td></tr>
			</table>
			<br>
			<table align="center">
				<tr><td><input type="submit" value=" UPI Payments " name="submit" class="adminregsubmit"><br></td><td>  </td></tr>
			</table>
			<br>
			<table align="center">
				<tr><td><input type="submit" class="adminregsubmit" value="Card Payments" name="submit"><br></td><td>  </td></tr>
			</table>
			<br>
			<table align="center">
				<tr><td><input type="submit" class="adminregsubmit" value="Discount" name="submit"><br></td><td>  </td></tr>
			</table>
		</form>
	</table>
</body>
</html>