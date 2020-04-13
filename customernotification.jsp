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
	<table>
		<form name="myForm" action="CustomerLoginServlet"
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
&emsp;&emsp;&emsp;
					<table align="center" cellpadding="5" cellspacing="5" border="1">
						<tr>

						</tr>
						<tr bgcolor="#A52A2A">
							<td><b>VENDORID</b></td>
							<td><b>PHONE NUMBER</b></td>
							<td><b>AVALIABLE TIME</b></td>
							<td><b>LOCATION</b></td>
							<td><b>SERVICETYPE</b></td>
							<td><b>CATEGORY</b></td>
							<td><b>STATUS</b></td>
						</tr>


						<%
							try {
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Home", "root", "Password-1");
								PreparedStatement ps = conn.prepareStatement("select * from customernotification where email=? ");
								String email = (String) request.getAttribute("customerid");
								ps.setString(1, email);
								rs = ps.executeQuery();

								while (rs.next()) {
						%>
						<tr bgcolor="#DEB887">
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getString(3)%></td>
							<td><%=rs.getString(4)%>:<%=rs.getString(5)%></td>
							<td><%=rs.getString(6)%></td>
							<td><%=rs.getString(7)%></td>
							<td><%=rs.getString(8)%></td>
							<td><%=rs.getString(9)%></td>
						</tr>

						<%
							}

							} catch (Exception e) {
								e.printStackTrace();
							}
						%>
					</table>
			</table><br><br>
			
			<table>
				<br>
				<br>
				<tr>
					
					<b style="color:white;">Vendor Id :</b>&emsp;&emsp;&emsp;&emsp;&emsp;
					<input type="text" size="30" name="vendorid" placeholder="Enter Vendor Id">&emsp;&emsp;&emsp;
					<br>
					<br>
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
					<b style="color:white;">Categories: &emsp;&emsp;&emsp;</b>
					<select name="category" id="category" style="padding: 10px 20px;">
						<option value="">Select</option>
					</select>&emsp;&emsp;&emsp;
					<b style="color:white;">Other Category:&emsp;&emsp;&emsp;</b>
					<input size="30" type="text"
						placeholder="Other category you want to add" name="category1">&emsp;&emsp;&emsp;
					<br>
					<br>
					<td><b style="color:white;">Review : &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</b></td>
					<td><textarea name="review" placeholder="Enter review about the Sevice"rows="5" cols="50"></textarea></td>
				</tr>
			</table>
			<br>
			<br>
			
			<div align="center" >
			<input type="submit" name="submit" class="adminregsubmit"
						value="Service Complete">
			</div>
		</form>
	</table>
</body>
</html>