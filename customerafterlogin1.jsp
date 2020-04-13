<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Login</title>
<script type="text/javascript" src="script.js"></script>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<table >
		<tr>
			<td><img src="customer.jpg" alt="image" width="100" height="100"></td>
			<td id="empty" width="350px"></td>
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
		<form name="myForm" action="CustomerLoginServlet" target="_blank"
			onsubmit="return vendorvalidateForm1()" method="post"
			required="required">

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
						ResultSet rs1 = null;
					%>

					<table align="center" cellpadding="5" cellspacing="5" border="1">
						<tr>

						</tr>
						<tr bgcolor="#A52A2A">
							<td><b>VENDORID</b></td>
							<td><b>CONTACT NUMBER</b></td>
							<td><b>AVALIBLE TIME</b></td>
							<td><b>LOCATION</b></td>
							<td><b>SERVICETYPE</b></td>
							<td><b>CATEGORY</b></td>
							<td><b>STATUS</b></td>
						</tr>


						<%
							try {
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Home", "root", "Password-1");
								PreparedStatement ps = conn
										.prepareStatement("select * from Vendorservice where servicetype=? and location=? ");
								String servicetype = (String) request.getAttribute("servicetype");
								String city = (String) request.getAttribute("city");
								PreparedStatement ps1 = conn.prepareStatement("select * from discount where customeremail =? and servicetype=?;");
								ps1.setString(1,(String)request.getAttribute("custid"));
								ps1.setString(2, servicetype);
								rs1 = ps1.executeQuery();
								while(rs1.next()){
									request.setAttribute("amount", rs1.getString(3));
								}
								ps.setString(1, servicetype);
								ps.setString(2, city);
								rs = ps.executeQuery();
								while (rs.next()) {
						%>
						<tr bgcolor="#DEB887">
							<td><%=rs.getString(1)%></td>
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getString(3)%>:<%=rs.getString(4)%></td>
							<td><%=rs.getString(5)%></td>
							<td><%=rs.getString(6)%></td>
							<td><%=rs.getString(7)%></td>
							<td><%=rs.getString(8)%></td>
							
							<%-- 							<td><%=rs.getString(7)%></td> --%>
							<%-- 	<td><%=rs.getString(8) %></td> --%>
						

						<%
						
							}

							} catch (Exception e) {
								e.printStackTrace();
							}
						%>
					</table>
			</table>
			<h2 style="color:white;">Please fill the details for contacting Service Provider as :</h2>
			<table>
				<tr>
					<td><b style="color:white;">Vendor ID:&emsp;&emsp;</b></td>
					<td><input type="text" name="cvendorid"placeholder="Enter vendor you want"></td>
					<td><b style="color:white;">Service Type:</b></td>
					<td><select name="cservicetype" id="servicetype"style="padding:10px 20px;" onchange="changecat();">
							<option value="">Select</option>
							<option value="Plumbing">Plumbing</option>
							<option value="Cleaning">Cleaning</option>
							<option value="Laptop">Laptop</option>
							<option value="Air Condition">Air Condition</option>
							<option value="Pest Control">Pest Control</option> 
						</select>
					</td>
					<td><b style="color:white;">Categories:</td></b> 
					<td>
						<select name="ccategory" id="category" style="padding: 10px 20px;">
							<option value="">Select</option>
						</select>
					</td>
				</tr><br>
					<tr>
					
						<td>
						<br>
						<br>
							<b style="color:white;">Other Categories :</b>
						</td>
						<td>
							<input type="text" name="ccategory1" placeholder="Enter other category you want">
						</td>
						<td><b style="color:white;">Amount: </b></td>
						<td><span style="font-size: 50px;color: orange">${amount}</span></b></td>
					</tr>
				</tr>
						
					
				<tr></tr>
				<tr></tr>
				<tr></tr>
				<tr></tr>
				<tr></tr>
				<tr></tr>
				<tr></tr>
				<tr></tr>
				<tr>
					<td><b style="color:white;">Name:</b></td>
					<td><input type="text" name="cname" size="30"
						placeholder="Enter your Name"></td>
					<td><b style="color:white;">Contact Number:&emsp;&emsp;</b></td>
					<td><input type="tel" size="30" name="cnum"
						placeholder="Enter your phone number" pattern="[789]{1}[0-9]{9}"></td>
				</tr>
				<tr>		</tr>
				<tr>		</tr>
				<tr>		</tr>
				<tr>
					<td><b style="color:white;">Address</b></td>
					<td><textarea name="address" placeholder="Enter your Address"></textarea></td>
					<td><b style="color:white;">Vendor Number:</b></td>
					<td><input type="tel" size="30" name="vendornum"placeholder="Enter your phone number" pattern="[789]{1}[0-9]{9}"></td>
				</tr>
			</table>
			<div style="display: none;">
							<td>
								<select name="payment1" id="payment1" style="padding:10px 20px;">
									<option value="${amount}"></option>
								</select>					
							</td>
						</div>
			<br>
			<td><input style="align-content: center;" type="submit"
				value="Book" name="submit" class="adminregsubmit"></td>
				
		</form>
	</table>
</body>
</html>
