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
			<td id="empty" width="350px"></td>
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
			<h1 style="color: orange; text-align: center; font-weight: bolder;">Notification</h1>
			<table>
				<tr>
					<%@page import="java.sql.DriverManager"%>
					<%@page import="java.sql.ResultSet"%>
					<%@page import="java.sql.Statement"%>
					<%@page import="java.sql.Connection"%>
					<%@page import="java.sql.PreparedStatement"%>
					<%
						try {
							Class.forName("com.mysql.cj.jdbc.Driver");
						} catch (ClassNotFoundException e) {
							e.printStackTrace();
						}
						Connection conn = null;
						Statement st = null;
						ResultSet rs = null;
					%>

					<table align="center" cellpadding="5" cellspacing="5" border="1">
						<tr>

						</tr>
						<tr bgcolor="#A52A2A">
							<td><b>EMAIL ID</b></td>
							<td><b>NAME</b></td>
							<td><b>PHONE NUMBER</b></td>
							<td><b>SERVICETYPE</b></td>
							<td><b>CATEGORY</b></td>
							<td><b>ADDRESS</b></td>
						</tr>


						<%
							try {
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Home", "root", "Password-1");
								PreparedStatement ps = conn.prepareStatement("select * from Vendornotification where vendorid=? ");
								String vid = (String) request.getAttribute("vid");

								ps.setString(1, vid);
								rs = ps.executeQuery();

								while (rs.next()) {
						%>
						<tr bgcolor="#DEB887">
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getString(3)%></td>
							<td><%=rs.getString(4)%></td>
							<td><%=rs.getString(5)%></td>
							<td><%=rs.getString(6)%></td>
							<td><%=rs.getString(7)%></td>
						</tr>

						<%
							}

							} catch (Exception e) {
								e.printStackTrace();
							}
						%>
					</table>
			</table>
			<table>
				<br>
				<br>
				<tr>
					<td><b style="color:white;">Customer EmailId:&emsp;&emsp;&emsp;</b></td>
					<td><input type="email" name="vcemail" size="40"
						placeholder="Enter Customer Emailid"></td>
					<b style="color:white;">Contact Number:</b>&emsp;&emsp;&emsp;
					<input type="tel" id="telnum1" size="30" name="telnum1"
						placeholder="Enter your phone number" pattern="[789]{1}[0-9]{9}">&emsp;&emsp;&emsp;
					<b style="color:white;">Avalible Timings:</b>&emsp;&emsp;&emsp;
					<input type="time" id="avltime1" name="avltimefrom1">
					&emsp;&emsp;
					<b style="color:white;">to &emsp;&emsp;</b>
					<input type="time" id="avltime1" name="avltimeto1">
					<br>
					<br>
					<b style="color:white;">Location: &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</b>
					<input type="text" size="30" id="location" name="location1"
						placeholder="Enter your loaction">&emsp;&emsp;&emsp;
					<b style="color:white;">Service Type: </b>&emsp;&emsp;&emsp;&emsp;
					<select name="servicetype" id="servicetype"
						style="padding: 10px 20px;" onchange="changecat();">
						<option value="select">Select</option>
						<option value="Plumbing">Plumbing</option>
						<option value="Cleaning">Cleaning</option>
						<option value="Laptop">Laptop</option>
						<option value="Air Condition">Air Condition</option>
						<option value="Pest Control">Pest Control</option>
					</select> &emsp;&emsp;
					<b style="color:white;"> Categories: </b>
					<select name="category" id="category" style="padding: 10px 20px;">
						<option value="">Select</option>
					</select>
					<br>
					<br>
					<b style="color:white;">Other Category:&emsp;&emsp;&emsp;</b>
					<input size="30" type="text"
						placeholder="Other category you want to add" name="category1">&emsp;&emsp;&emsp;
						<b style="color:white;">&emsp;Status:&emsp;&emsp;&emsp;</b>
					<select name="status" style="padding: 10px 20px;">
						<option value="approved">Approved</option>
						<option value="cancel">Cancel</option>
					</select><br><br>
					<td></td>
				</tr>
			</table><br><br>
			<input type="submit" name="submit" class="adminregsubmit"
						value="Accept">
<br>
<br>
<b style="color:orange;"><u>If the Service are Completed Fill the Deatils to Close :</u></b>
<br>
<br>
	<table>
		
		<tr>
			<td><b style="color:white;">Service Type: </b>&emsp;&emsp;&emsp;&emsp;
					<select name="servicetype1" id="servicetype1"
						style="padding: 10px 20px;" onchange="changecat1();">
						<option value="select">Select</option>
						<option value="Plumbing">Plumbing</option>
						<option value="Cleaning">Cleaning</option>
						<option value="Laptop">Laptop</option>
						<option value="Air Condition">Air Condition</option>
						<option value="Pest Control">Pest Control</option>
					</select> &emsp;&emsp;&emsp;
			<b style="color:white;">Categories: </b>
			
			
					<select name="category2" id="category1" style="padding: 10px 20px;">
						<option value="">Select</option>
					</select>&emsp;&emsp;&emsp;
			</td>
					<br>
					<br>
					<td><b style="color:white;">Other Category:&emsp;&emsp;&emsp;</b>
					<input size="30" type="text"
						placeholder="Other category you want to add" name="category11">&emsp;&emsp;&emsp;
		</tr>
		<tr>  <tr>
		<b style="color:white;">Customer EmailId:</b>&emsp;&emsp;&emsp;
				<input type="email" id="email" size="30" name="custemail"
						placeholder="Enter Customer email id" >&emsp;&emsp;&emsp;</td><br><br>
						</tr>
	</table>
	<br>	<input type="submit" name="submit" class="adminregsubmit"
						value="Completed">
		</form>
	</table>
</body>
</html>