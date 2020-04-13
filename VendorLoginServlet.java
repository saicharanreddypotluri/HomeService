import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/VendorLoginServlet")
public class VendorLoginServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int next = 0;
//		response.setIntHeader("Refresh", 1);
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String n = request.getParameter("loginname1");
		String p = request.getParameter("pass1");
		String submitType = request.getParameter("submit");
		login l = new login();
		if (submitType.equals("Login") || next == 1) {
			if (MyDB.validatevendor(n, p) || next == 1) {
//				login l = new login();
				l.setVendorid(n);
				request.setAttribute("vid", l.getVendorid());
//				out.println("<html><body><b>Successfully logged in" + "</b></body></html>");
				request.getRequestDispatcher("vendorafterlogin.jsp").forward(request, response);
//				request.getRequestDispatcher("vendoraddservice.jsp").forward(request, response);

			} else {
				RequestDispatcher rd = request.getRequestDispatcher("vendorloginError.html");
				rd.include(request, response);
			}
		} else if (submitType.equals("HOME")) {
			request.setAttribute("vid", l.getVendorid());
			request.getRequestDispatcher("vendorafterlogin.jsp").forward(request, response);
		} else if (submitType.equals("LOGOUT")) {
			request.setAttribute("vid", l.getVendorid());
			request.getRequestDispatcher("HomeService1stPage.html").forward(request, response);
		}

		else if (submitType.equals("Register")) {
			String firstname = request.getParameter("fname");
			String lastname = request.getParameter("lname");
			String personage = request.getParameter("personage");
			String gender = request.getParameter("gender");

			String contactnumber = request.getParameter("phone");
			String vendorid = request.getParameter("vid");
			String password = request.getParameter("pass");
			VendorGetandSet v = new VendorGetandSet();
			v.setFirstname(firstname);
			v.setLastname(lastname);
			v.setAge(personage);
			v.setGender(gender);
			v.setContactnumber(contactnumber);
			v.setVendorid(vendorid);
			v.setPassword(password);
			System.out.println(v.getVendorid());
			if (MyDbImpl.vendorreg(v) == 1) {
				request.getRequestDispatcher("vendorlogin.html").forward(request, response);
			} else {
				//out.println("<html><body><b>Successfully not Inserted Restart" + "</b></body></html>");
				request.getRequestDispatcher("vendorreg.html").forward(request, response);
			}

		} else if (submitType.equals("Add Details")) {
//				login l = new login();
			String vendorid = l.getVendorid();
			String submit = request.getParameter("submit");
			String emailid = request.getParameter("email1");
			String address = request.getParameter("address");
			if (MyDbImpl.vendorreg(vendorid, emailid, address) == 1) {
				l.setVendorid(vendorid);
				request.setAttribute("vid", l.getVendorid());
				request.getRequestDispatcher("vendorafterlogin.jsp").forward(request, response);
			} else {
				request.getRequestDispatcher("Vendorupdatingdetails").forward(request, response);
			}
		} else if (submitType.equals("Edit your Details") || submitType.equals("Update Details")) {
			if (submitType.equals("Edit your Details")) {
				request.getRequestDispatcher("vendoreditdetails.jsp").forward(request, response);
			} else {

				String vendorid = l.getVendorid();
				System.out.println("in edit details " + vendorid);
				String firstname = request.getParameter("fname1");
				String lastname = request.getParameter("lname1");
				String personage = request.getParameter("personage1");
				String gender = request.getParameter("gender1");
				String contactnumber = request.getParameter("phone1");
				String password = request.getParameter("newpass");
				if (MyDbImpl.vendoredit(vendorid, firstname, lastname, personage, gender, contactnumber,
						password) > 0) {
					request.setAttribute("vid", l.getVendorid());
					request.getRequestDispatcher("vendorafterlogin.jsp").forward(request, response);
				} else {
					out.println("<html><body><b>Fail to edit details" + "</b></body></html>");
//					request.getRequestDispatcher("HomeService1stPage.html").forward(request, response);
				}
			}
		} else if (submitType.equals("Edit Services") || submitType.equals("Add Services")) {
			if (submitType.equals("Edit Services")) {
				request.getRequestDispatcher("vendoraddservice.jsp").forward(request, response);
			} else if (submitType.equals("Add Services")) {
				String vendorid = l.getVendorid();
				String phone = request.getParameter("telnum");
				l.setVendornumber(phone);
				String avltimefrom = request.getParameter("avltimefrom");
				String avltimeto = request.getParameter("avltimeto");
				String loc = request.getParameter("location");
				String servicetype1 = request.getParameter("servicetype");
				String categories = request.getParameter("category");
				String categories1 = request.getParameter("category1");
				if (categories == "") {
					categories = categories1;
				}
				System.out.println("id" + vendorid + "st:" + servicetype1);
				if (MyDbImpl.vendorservice(vendorid, phone, avltimefrom, avltimeto, loc, servicetype1,
						categories) > 0) {
//					out.println("<html><body><b>Successfully Inserted into service table</b>" + "</body></html>");
					System.out.println(vendorid);
//					response.sendRedirect("vendorafterlogin.jsp");
					request.setAttribute("vid", vendorid);
					request.getRequestDispatcher("vendorafterlogin.jsp").forward(request, response);
					next = 1;
				} else {
//					request.getRequestDispatcher("Vendorupdatingdetails").forward(request, response);
					out.println(
							"<html><body><b>Successfully failed to Inserted into service table" + "</b></body></html>");
				}
			}
		}
		
		else if (submitType.equals("Update Services")){
			String vendorid = l.getVendorid();
			String phone = request.getParameter("telnum1");
			String avltimefrom = request.getParameter("avltimefrom1");
			String avltimeto = request.getParameter("avltimeto1");
			String loc = request.getParameter("location1");
			String servicetype1 = request.getParameter("servicetype");
			String categories = request.getParameter("category");
			String categories1 = request.getParameter("category1");
			String status = request.getParameter("status");
			if(categories=="") {
				categories=categories1;
			}
			System.out.println("id"+vendorid+"st:"+servicetype1+"cat:"+categories);
			if (MyDbImpl.vendorupdateservice(vendorid, phone, avltimefrom, avltimeto, loc, servicetype1,categories,status) >0) {

				l.setVendorid(vendorid);
				request.setAttribute("vid", l.getVendorid());
				request.getRequestDispatcher("vendorafterlogin.jsp").forward(request, response);
			} else {
//				request.getRequestDispatcher("Vendorupdatingdetails").forward(request, response);
				out.println(
						"<html><body><b>Successfully failed to Inserted into service table" + "</b></body></html>");
			}
		}

	else if (submitType.equals("Delete Services")){
		String vendorid = l.getVendorid();
		String servicetype1 = request.getParameter("servicetype1");
		String categories = request.getParameter("category2");
		String categories1 = request.getParameter("category11");
		if(categories=="") {
			categories=categories1;
		}
		System.out.println("id"+vendorid+"st:"+servicetype1+"cat"+categories);
		if (MyDbImpl.vendordeleteservice(vendorid,servicetype1,categories) >0) {
//			out.println("<html><body><b>Successfully Inserted into service table</b>" + "</body></html>");
			request.setAttribute("vid", l.getVendorid());
		request.getRequestDispatcher("vendorafterlogin.jsp").forward(request, response);
		} else {
//			request.getRequestDispatcher("Vendorupdatingdetails").forward(request, response);
			out.println("<html><body><b>Successfully failed to Inserted into service table" + "</b></body></html>");
		}
	}else if(submitType.equals("Notifications")) {
		String vendorid = l.getVendorid();
		request.setAttribute("vid", vendorid);
		request.getRequestDispatcher("notification.jsp").forward(request, response);
	}else if(submitType.equals("Accept")) {
		String vcemailid = request.getParameter("vcemail");
		String vid = l.getVendorid();
		String phone = request.getParameter("telnum1");
		l.setVendornumber(phone);
		System.out.println("vendor num"+phone);
		String servtype = request.getParameter("servicetype");
		String cat = request.getParameter("category");
		String cat1 = request.getParameter("category1");
		String loc = request.getParameter("location1");
		String avltimefrom = request.getParameter("avltimefrom1");
		String avltimeto = request.getParameter("avltimeto1");
		String status = request.getParameter("status");
		if(cat=="") {
			cat=cat1;
		}
		System.out.println("Accept  "+vid);
		if(MyDbImpl.custnotify(vcemailid,vid,servtype,cat,loc,avltimefrom,avltimeto,status,phone)>0) {
			request.setAttribute("vid", l.getVendorid());
			request.getRequestDispatcher("notification.jsp").forward(request, response);
		}else {
			out.println("<html><body><b>Failed to notify.</b>" + "</body></html>");
		}
	}	
	else if(submitType.equals("Notifications")) {
		String vendorid = l.getVendorid();
		request.setAttribute("vid", vendorid);
		request.getRequestDispatcher("notification.jsp").forward(request, response);
	}else if(submitType.equals("Accept")) {
		String vcemailid = request.getParameter("vcemail");
		String vid = l.getVendorid();
		String phone = request.getParameter("telnum1");
		l.setVendornumber(phone);
		System.out.println("vendor num"+phone);
		String servtype = request.getParameter("servicetype");
		String cat = request.getParameter("category");
		String cat1 = request.getParameter("category1");
		String loc = request.getParameter("location1");
		String avltimefrom = request.getParameter("avltimefrom1");
		String avltimeto = request.getParameter("avltimeto1");
		String status = request.getParameter("status");
		if(cat=="") {
			cat=cat1;
		}
		System.out.println("Accept  "+vid);
		if(MyDbImpl.custnotify(vcemailid,vid,servtype,cat,loc,avltimefrom,avltimeto,status,phone)>0) {
			request.setAttribute("vid", l.getVendorid());
			request.getRequestDispatcher("notification.jsp").forward(request, response);
		}else {
			out.println("<html><body><b>Failed to notify.</b>" + "</body></html>");
		}
		} else if (submitType.equals("Completed")) {
			String servicetype = request.getParameter("servicetype1");
			String category = request.getParameter("category2");
			String category1 = request.getParameter("category11");
			String custemail = request.getParameter("custemail");
			if (category == "") {
				category = category1;
			}
			System.out.println("serv :" + servicetype + " cat  " + category + "  " + custemail);
			if (MyDbImpl.delnotify(servicetype, category, custemail) > 0) {
				request.setAttribute("vid", l.getVendorid());
				request.getRequestDispatcher("notification.jsp").forward(request, response);
			} else {
				out.println("<html><body><b>failed to deleted.</b>" + "</body></html>");
			}
		}
		out.close();
	}
}