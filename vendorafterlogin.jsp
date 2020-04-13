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
			onsubmit="vendorafterlogin.jsp" method="post" required="required">
			<input type="submit" name="submit" value="Notifications"
				class="adminregsubmit">
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
							<td><b>FIRSTNAME</b></td>
							<td><b>LASTNAME</b></td>
							<td><b>AGE</b></td>
							<td><b>GENDER</b></td>
							<td><b>CONTACT</b></td>
							<td><b>VENDORID</b></td>
						</tr>


						<%
							try {
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Home", "root", "Password-1");
								PreparedStatement ps = conn.prepareStatement("select * from Vendorreg where vendorid=? ");
								String vid = (String) request.getAttribute("vid");
								ps.setString(1, vid);
								rs = ps.executeQuery();

								while (rs.next()) {
						%>
						<tr bgcolor="#DEB887">
							<td><%=rs.getString(1)%></td>
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getString(3)%></td>
							<td><%=rs.getString(4)%></td>
							<td><%=rs.getString(5)%></td>
							<td><%=rs.getString(6)%></td>
							<%-- 							<td><%=rs.getString(7)%></td> --%>
							<%-- 	<td><%=rs.getString(8) %></td> --%>
						</tr>

						<%
							}

							} catch (Exception e) {
								e.printStackTrace();
							}
						%>
					</table>











					<table align="center" cellpadding="5" cellspacing="5" border="1">
						<tr>

						</tr>
						<tr bgcolor="#A52A2A">
							<td><b>VENDORID</b></td>
							<td><b>PHONE NUMBER</b></td>
							<td><b>AVALIBLE TIME</b></td>
							<td><b>LOACTION</b></td>
							<td><b>SERVICE TYPE</b></td>
							<td><b>CATEGORY</b></td>
							<td><b>STATUS</b></td>
						</tr>


						<%
							try {
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Home", "root", "Password-1");
								PreparedStatement ps = conn.prepareStatement("select distinct categories,vendorid,telnum,avltimefrom,avltimeto,location,servicetype,status from Vendorservice where vendorid=?");
								// 								String vid =request.getAttribute("vid");
								// 								login l = (login)request.getAttribute("vid");
								String vid = (String) request.getAttribute("vid");
								// 								ps.setString(1, request.getParameter("loginname1"));
								ps.setString(1, vid);
								rs = ps.executeQuery();

								while (rs.next()) {
						%>
						<tr bgcolor="#DEB887">
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getString(3)%></td>
							<td><%=rs.getString(4)%>:<%=rs.getString(5)%></td>
							<td><%=rs.getString(6)%></td>
							<td><%=rs.getString(7)%></td>
							<td><%=rs.getString(1)%></td>
							<td><%=rs.getString(8)%></td>

							<%-- 							<td><%=rs.getString(7)%></td> --%>
							<%-- 	<td><%=rs.getString(8) %></td> --%>
						</tr>

						<%
							}

							} catch (Exception e) {
								e.printStackTrace();
							}
						%>
					</table>










					<p>
						<br> <br> <b style="color: #A52A2A;">If you want to
							edit your details click here:&emsp;&emsp;&emsp;&emsp;&emsp;</b> <input
							type="submit" class="adminregsubmit" value="Edit your Details"
							name="submit">
					</p>
					<p>
						<br> <br> <b style="color:white;">Contact Number:</b>&emsp;&emsp;&emsp;<input
							type="tel" id="telnum" size="30" name="telnum"
							placeholder="Enter your phone number" pattern="[789]{1}[0-9]{9}">&emsp;&emsp;&emsp;
						<b style="color:white;">Avalible Timings:</b>&emsp;&emsp;&emsp; <input type="time"
							value="00:00" id="avltime1" name="avltimefrom">
						&emsp;&emsp;<b>to &emsp;&emsp;</b> <input type="time"
							value="00:00" id="avltime1" name="avltimeto"><br> <br>
						<b style="color:white;">Location: &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</b><input
							type="text" size="30" id="location" name="location"
							placeholder="Enter your loaction">&emsp;&emsp;&emsp; <b style="color:white;">Service
							Type: </b>&emsp;&emsp;&emsp;&emsp; <select name="servicetype"
							id="servicetype" style="padding: 10px 20px;"
							onchange="changecat();">
							<option value="">Select</option>
							<option value="Plumbing">Plumbing</option>
							<option value="Cleaning">Cleaning</option>
							<option value="Laptop">Laptop</option>
							<option value="Air Condition">Air Condition</option>
							<option value="Pest Control">Pest Control</option>
						</select> &emsp;&emsp;<b style="color:white;">Categories: </b> <select name="category"
							id="category" style="padding: 10px 20px;">
							<option value="">Select</option>
						</select><br>
						<br> <b style="color:white;">Other Category</b><input type="text"
							placeholder="Other category you want to add" name="category1">
						<input type="submit" class="adminregsubmit" value="Add Services"
							name="submit" onclick="return servicevalidate()"
							onclick="location.reload()"><br>
						<br>
					<p>
						<b style="color: #A52A2A;">If you want to add/edit your service
							details click here:</b> <input type="submit" class="adminregsubmit"
							value="Edit Services" name="submit">
					</p>
					<br>
					<br>
					<table>

						<tr id="result"">
							<td><b style="color:white;">Email:</b> &emsp;&emsp;&emsp;<input type="email"
								placeholder="Enter Email" size="30" id="emailid1" name="email1">&emsp;&emsp;&emsp;
							</td>
							<td><b style="color:white;">Address:</b>&emsp;&emsp;&emsp;<textarea id="address"
									name="address" rows="3" cols="30"
									placeholder="Enter your address"></textarea>&emsp;&emsp;&emsp;</td>
							<br>
							<br>
							<td><input type="submit" class="adminregsubmit"
								value="Add Details" name="submit"></td>
						</tr>
					</table>

					<br>
					<br>



					<!-- 					</form> -->
			</table>
		</form>
	</table>
</body>
</html>