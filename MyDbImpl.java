import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MyDbImpl {
	public static int adminreg(AdminGetandSet a) {
		int status = 0;

		try {
//			AdminGetandSet a = new AdminGetandSet();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Home", "root",
					"Password-1");

			PreparedStatement ps = con.prepareStatement("insert into adminreg values(?,?,?,?,?)");
			ps.setString(1, a.getFirstname());
			ps.setString(2, a.getLastname());
			ps.setString(3, a.getContactnumber());
			ps.setString(4, a.getEmailid());
			ps.setString(5, a.getPassword());

			status = ps.executeUpdate();
			ps.close();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	public static int upipayment(String name,String email,String upiid, String rand,String amount) {
		int status=0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		int flag = 0;
		Connection conn = null;
		ResultSet rs1 = null;
		ResultSet rs = null;
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeService1", "root", "Password-1");
			PreparedStatement ps1 = conn.prepareStatement("insert into upipayment values(?,?,?,?,?);");
			System.out.println("in upipaymrnt");
			ps1.setString(1, name);
			ps1.setString(2, email);
			ps1.setString(3, upiid);
			ps1.setString(4, "HSWOF"+rand);
			ps1.setString(5, amount);
			status = ps1.executeUpdate();
		} catch (Exception e) {

		}

		
		return status;
	}
		
	
	public static int bill(String custname,String custemail,String custnum,String vendorid,String vendornum,String servicetype,String category,String address) {
		int status = 0;

		try {
//			AdminGetandSet a = new AdminGetandSet();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Home", "root",
					"Password-1");

			PreparedStatement ps = con.prepareStatement("insert into adminnotify values(?,?,?,?,?,?,?,?,?);");
			ps.setString(1, custname);
			ps.setString(2, custemail);
			ps.setString(3, custnum);
			ps.setString(4, vendorid);
			ps.setString(5, vendornum);
			ps.setString(6, servicetype);
			ps.setString(7, category);
			ps.setString(8, address);
			ps.setString(9, " ");

			status = ps.executeUpdate();
			ps.close();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	
	
	public static int customerreg(CustomerGetandSet c) {
		int status = 0;

		try {
//			AdminGetandSet a = new AdminGetandSet();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Home", "root",
					"Password-1");
			String[] discount = {"Plumbing","Cleaning","Laptop","Air Condition","Pest Control"};
			String[] amount = {"1000","2000","3000","4000","5000"};
			System.out.println(discount[1]);
			
			for (int i = 0; i < 5; i++) {
				
				PreparedStatement ps1 = con.prepareStatement("insert into discount values(?,?,?);");
				ps1.setString(1, c.getEmailid());
				ps1.setString(2,discount[i]);
				ps1.setString(3,amount[i]);
		
				ps1.executeUpdate();
				
				System.out.println(i);
			}
			PreparedStatement ps = con.prepareStatement("insert into customerreg values(?,?,?,?,?);");
			ps.setString(1, c.getFirstname());
			ps.setString(2, c.getLastname());
			ps.setString(3, c.getContactnumber());
			ps.setString(4, c.getEmailid());
			ps.setString(5, c.getPassword());

			status = ps.executeUpdate();
			ps.close();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int adminnotify(String vendorid,String servicetype,String category,String review,String custid) {
		int status = 0;
		
		try {
//			AdminGetandSet a = new AdminGetandSet();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Home", "root",
					"Password-1");

			PreparedStatement ps = con.prepareStatement("delete from customernotification where vendorid=? and servicetype=? and category=?;");
			PreparedStatement ps1 = con.prepareStatement("update adminnotify set review = ? where vendorid=? and servicetype=? and category=? and customeremail=?");
			ps.setString(1, vendorid);
			ps.setString(2, servicetype);
			ps.setString(3, category);
			ps1.setString(1, review);
			ps1.setString(2, vendorid);
			ps1.setString(3, servicetype);
			ps1.setString(4, category);
			ps1.setString(5, custid);
			ps1.executeUpdate();
			status = ps.executeUpdate();
			ps.close();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	public static int discount(String custemail,String serv,String cat,String amount) {
		int status = 0;
		
		try {
//			AdminGetandSet a = new AdminGetandSet();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Home", "root",
					"Password-1");

			PreparedStatement ps = con.prepareStatement("update discount set amount=? where customeremail=? and servicetype=?");
			ps.setString(1, amount);
			ps.setString(2, custemail);
			ps.setString(3, serv);
//			ps.setString(4, cat);
			status = ps.executeUpdate();
			ps.close();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int customerbooking(String cvendorid, String customerid, String cname,String cnum,String cservicetype, String ccategory,String address) {
		int status = 0;

		try {
//			AdminGetandSet a = new AdminGetandSet();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Home", "root",
					"Password-1");
			PreparedStatement ps = con.prepareStatement(
					"update vendorservice set status = ? where vendorid=? and servicetype=? and categories=?;");
			PreparedStatement ps1 = con.prepareStatement(
					"insert into vendornotification values(?,?,?,?,?,?,?)");
			ps.setString(1, "closed");
			ps.setString(2, cvendorid);
			ps.setString(3, cservicetype);
			ps.setString(4, ccategory);

			ps1.setString(2, customerid);
			ps1.setString(3, cname);
			ps1.setString(4, cnum);
			ps1.setString(5, cservicetype);
			ps1.setString(6, ccategory);
			
			ps1.setString(7, address);
			ps1.setString(1, cvendorid);
			ps1.executeUpdate();
			status = ps.executeUpdate();
			ps.close();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	public static int bill(String custname,String custemail,String custnum,String vendorid,String vendornum,String servicetype,String category,String address,String rand,String amount) {
		int status = 0;

		try {
//			AdminGetandSet a = new AdminGetandSet();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Home", "root",
					"Password-1");

			PreparedStatement ps = con.prepareStatement("insert into adminnotify values(?,?,?,?,?,?,?,?,?,?,?);");
			ps.setString(1, custname);
			ps.setString(2, custemail);
			ps.setString(3, custnum);
			ps.setString(4, vendorid);
			ps.setString(5, vendornum);
			ps.setString(6, servicetype);
			ps.setString(7, category);
			ps.setString(8, address);
			ps.setString(9, "MCJSN"+rand);
			ps.setString(10, amount);
			ps.setString(11, " ");

			status = ps.executeUpdate();
			ps.close();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	

	public static int custnotify(String vcemailid,String vid,String servtype,String cat,String loc,String avltimefrom,String avltimeto,String status,String phone) {
		int status1=0;
		try {
//			AdminGetandSet a = new AdminGetandSet();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Home", "root",
					"Password-1");
			PreparedStatement ps = con.prepareStatement(
					"insert into customernotification values(?,?,?,?,?,?,?,?,?)");
			ps.setString(2, vid);
			ps.setString(3, phone);
			ps.setString(4, avltimefrom);
			ps.setString(5, avltimeto);
			ps.setString(6, loc);
			ps.setString(7, servtype);
			ps.setString(8, cat);
			ps.setString(9, status);
			ps.setString(1, vcemailid);
			status1 = ps.executeUpdate();
			ps.close();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status1;
	}
	public static int delnotify(String servicetype,String category,String custemail) {
		int status1=0;
		try {
//			AdminGetandSet a = new AdminGetandSet();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Home", "root",
					"Password-1");
			PreparedStatement ps = con.prepareStatement(
					"delete from vendornotification where servicetype=? and category=? and email=?;");
			ps.setString(1, servicetype );
			ps.setString(2, category);
			ps.setString(3, custemail);
			status1 = ps.executeUpdate();
			ps.close();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status1;
	}
	public static int vendorreg(VendorGetandSet v) {
		int status = 0;

		try {
//			AdminGetandSet a = new AdminGetandSet();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Home", "root",
					"Password-1");
			System.out.println(v.getVendorid());
			PreparedStatement ps = con.prepareStatement("insert into vendorreg values(?,?,?,?,?,?,?)");
			
			ps.setString(1, v.getFirstname());
			ps.setString(2, v.getLastname());
			ps.setString(3, v.getAge());
			ps.setString(4, v.getGender());
			ps.setString(5, v.getContactnumber());
			ps.setString(6, v.getVendorid());
			ps.setString(7, v.getPassword());

			status = ps.executeUpdate();
			ps.close();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int vendorreg(String vendorid, String email, String address) {
		int status = 0;

		try {
//			AdminGetandSet a = new AdminGetandSet();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Home", "root",
					"Password-1");

			PreparedStatement ps = con.prepareStatement("insert into vendorupdatedetails values(?,?,?)");
			ps.setString(1, vendorid);
			ps.setString(2, email);
			ps.setString(3, address);
			status = ps.executeUpdate();
			ps.close();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int vendoredit(String vendorid, String firstname, String lastname, String personage, String gender,
			String contactnumber, String password) {
		int status = 0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		int flag = 0;
		Connection conn = null;
		ResultSet rs1 = null;
		ResultSet rs = null;
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Home", "root", "Password-1");
			PreparedStatement ps = conn.prepareStatement("select * from Vendorreg where vendorid=? ");
			ps.setString(1, vendorid);
			System.out.println("id in impl:" + vendorid);
			rs = ps.executeQuery();
			while (rs.next()) {
				String oldfname = rs.getString(1);
				System.out.println(oldfname);
				String oldlastname = rs.getString(2);
				String oldage = rs.getString(3);
				String oldgender = rs.getString(4);
				String oldctnum = rs.getString(5);
				String oldpass = rs.getString(7);

				if (firstname == "") {
					firstname = oldfname;
				}
				if (lastname == "") {
					lastname = oldlastname;
				}
				if (personage == "") {
					personage = oldage;
				}
				if (gender == null) {
					gender = oldgender;
				}
				if (contactnumber == "") {
					contactnumber = oldctnum;
				}
				if (password == "") {
					password = oldpass;
				}
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Home", "root", "Password-1");
				PreparedStatement ps1 = conn.prepareStatement("update vendorreg set firstname=?,lastname=?,"
						+ "age=?,gender=?,contactnumber=?,password=? where vendorid=?");
				ps1.setString(1, firstname);
				System.out.println("new" + firstname);
				ps1.setString(2, lastname);
				ps1.setString(3, personage);
				ps1.setString(4, gender);
				ps1.setString(5, contactnumber);
				ps1.setString(6, password);
				ps1.setString(7, vendorid);
				status = ps1.executeUpdate();
			}
		} catch (Exception e) {

		}

		return status;
	}

	public static int vendorservice(String vendorid, String telnum, String avltimefrom, String avltimeto, String loc,
			String servicetype, String categories) {
		int status = 0;
		try {
//			AdminGetandSet a = new AdminGetandSet();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Home", "root",
					"Password-1");

			PreparedStatement ps = con.prepareStatement("insert into vendorservice values(?,?,?,?,?,?,?,?);");

			ps.setString(2, telnum);
			ps.setString(3, avltimefrom);
			ps.setString(4, avltimeto);
			ps.setString(5, loc);
			ps.setString(6, servicetype);
			ps.setString(7, categories);
			ps.setString(8, "opened");
			ps.setString(1, vendorid);
			status = ps.executeUpdate();
			ps.close();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int vendorupdateservice(String vendorid, String telnum, String avltimefrom, String avltimeto,
			String loc, String servicetype, String categories, String status) {
		int status1 = 0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		int flag = 0;
		Connection conn = null;
		ResultSet rs1 = null;
		ResultSet rs = null;
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Home", "root", "Password-1");
			PreparedStatement ps = conn.prepareStatement(
					"select * from vendorservice where servicetype=? and categories=? and vendorid=?;");
			ps.setString(1, servicetype);
			ps.setString(2, categories);
			ps.setString(3, vendorid);
			rs = ps.executeQuery();
			while (rs.next()) {
				String oldtelnum = rs.getString(2);
				String oldavltimefrom = rs.getString(3);
				String oldavltimeto = rs.getString(4);
				String oldloc = rs.getString(5);

				if (telnum == "") {
					telnum = oldtelnum;
				}
				if (avltimefrom == "") {
					avltimefrom = oldavltimefrom;
				}
				if (avltimeto == "") {
					avltimeto = oldavltimeto;
				}
				if (loc == "") {
					loc = oldloc;
				}
				System.out.println(telnum + "loc" + loc);
				System.out.println("vid  " + vendorid + "serv" + servicetype + "cat  " + categories);
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Home", "root", "Password-1");
				PreparedStatement ps1 = conn.prepareStatement(
						"update vendorservice set telnum=?,avltimefrom=?,avltimeto=?,location=?,status=? where servicetype=? and categories=? and vendorid=?;");
				ps1.setString(1, telnum);
				ps1.setString(2, avltimefrom);
				ps1.setString(3, avltimeto);
				ps1.setString(4, loc);
				ps1.setString(5, status);
				ps1.setString(6, servicetype);
				ps1.setString(7, categories);
				ps1.setString(8, vendorid);

				status1 = ps1.executeUpdate();
			}
		} catch (Exception e) {

		}

		return status1;
	}

	public static int vendordeleteservice(String vendorid, String servicetype, String categories) {
		int status = 0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		int flag = 0;
		Connection conn = null;
		ResultSet rs1 = null;
		ResultSet rs = null;
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Home", "root", "Password-1");
			PreparedStatement ps1 = conn
					.prepareStatement("delete from vendorservice where servicetype=? and categories=? and vendorid=?;");

			ps1.setString(1, servicetype);
			ps1.setString(2, categories);
			ps1.setString(3, vendorid);

			status = ps1.executeUpdate();
		} catch (Exception e) {

		}

		return status;
	}
	public static int payment(String name,String email,String address1,String city,String state,String zip,String cardname,String cardnum,String expmonth,String expyear,String cvv,String amount) {
		int status=0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		int flag = 0;
		Connection conn = null;
		ResultSet rs1 = null;
		ResultSet rs = null;
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Home", "root", "Password-1");
			PreparedStatement ps1 = conn
					.prepareStatement("insert into payment values(?,?,?,?,?,?,?,?,?,?,?,?);");

			ps1.setString(1, name);
			ps1.setString(2, email);
			ps1.setString(3, address1);
			ps1.setString(4, city);
			ps1.setString(5, state);
			ps1.setString(6, zip);
			ps1.setString(7, cardname);
			ps1.setString(8, cardnum);
			ps1.setString(9, expmonth);
			ps1.setString(10, expyear);
			ps1.setString(11, cvv);
			ps1.setString(12, amount);

			status = ps1.executeUpdate();
		} catch (Exception e) {

		}

		
		return status;
	}
	
	
}
