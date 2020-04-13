

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/VendorEditServlet")
public class VendorEditServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String submitType = request.getParameter("submit");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		int flag=0;
		Connection conn = null;
		ResultSet rs1= null;
		ResultSet rs = null;
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Home", "root", "Password-1");
			PreparedStatement ps = conn.prepareStatement("select * from Vendorreg where vendorid=? ");
			ps.setString(1,request.getParameter("loginname1"));
			rs = ps.executeQuery();
			while (rs.next()) {
					 String oldfname = rs.getString(1);
					 String oldlastname = rs.getString(2);
					 String oldage = rs.getString(3);
					 String oldgender = rs.getString(4);
					 String oldctnum = rs.getString(5);
					 String oldpass = rs.getString(7);
		
			
			
			String firstname = request.getParameter("fname1");
			String lastname = request.getParameter("lname1");
			String age = request.getParameter("personage1");
			String gender = request.getParameter("gender1");
			String phone = request.getParameter("phone1");
//			String oldpass1 = request.getParameter("oldpass");
			String newpass = request.getParameter("newpass");
			if(firstname==null) {
				firstname = oldfname;
			}
			if(lastname==null) {
				lastname = oldlastname;
			}
			if(age==null) {
				age=oldage;
			}
			if(gender==null) {
				gender = oldgender;
			}
			if(phone==null) {
				phone=oldctnum;
			}
			if(newpass==null) {
				newpass=oldpass;
			}
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Home", "root", "Password-1");
			PreparedStatement ps1 = conn.prepareStatement("update vendorreg set firstname=?,lastname=?,"
					+ "age=?,gender=?,contactnumber=?,password=? where vendorid=?");
			ps1.setString(1, firstname);
			ps1.setString(2, lastname);
			ps1.setString(3, age);
			ps1.setString(4, gender);
			ps1.setString(5, phone);
			ps1.setString(6, newpass);
			ps1.setString(7, request.getParameter("loginname1"));
			
			rs = ps.executeQuery();
		}
		}catch(Exception e){
			
		}

		out.close();
	}
}
