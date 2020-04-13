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

			<br> <br>
	</table>
	<form name="myForm" action="VendorLoginServlet" method="post">
		<br> <br> <label><b style="color:white;">FirstName:</b></label> <input
			type="text" size="50" placeholder="Enter First Name" name="fname1"
			id="firstname"><br> <label><b style="color:white;">LastName:</b></label> <input
			type="text" size="50" placeholder="Enter Last Name" name="lname1"
			id="lastname"><br> <label><b style="color:white;">Age:</b></label> <input
			type="text" size="50" placeholder="Enter your age" id="age"
			name="personage1"><br> <label><b style="color:white;"> Please
				select your gender:</b></label> 
				<b style="color:white;"><input type="radio" id="male" name="gender1"
			value="M"> Male &emsp;&emsp;</b>
			<b style="color:white;"> <input type="radio" id="female"
			name="gender1" value="F"> Female &emsp;&emsp;</b>
			<b style="color:white;"> <input
			type="radio" id="other" name="gender1" value="O"> Other</b><br>
		<label><b style="color:white;">Contact Number:</b></label> <input type="tel" size="50"
			placeholder="Enter Contact Number" id="phnum" name="phone1"
			pattern="[789]{1}[0-9]{9}"><br> <label><b style="color:white;">Confirm
				old Password:</b></label> <input type="password" size="50" id="oldInput"
			placeholder="Enter your old password" name="oldpass"
			pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"> <input
			id="check" type="checkbox" onclick="myFunction2()"><span
			id="show"><b>Show Password</b><br></span> <label><b style="color:white;">New
				Password:</b></label> <input type="password" size="50" id="newInput"
			placeholder="Enter your new password" name="newpass"
			pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
			title="it should contain caps letter, one small letter and digit">
		<input id="check" type="checkbox" onclick="myFunction3()"><span
			id="show"><b>Show Password</b><br></span> <label><b style="color:white;">Re-enter
				New Password:</b></label> <input type="password" id="cnfnewpass"
			placeholder="Enter your new password again" name="cnfnewpass"
			pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" size="50"> <input
			type="checkbox" onclick="myFunction4()"><span id="show"><b>Show
				Password</b><br></span> <input type="submit" class="adminregsubmit"
			value="Update Details" name="submit" onclick="return Validate1()"><br>
		</div>
	</form>
	</table>

</body>
</html>