
import java.io.IOException;
import java.io.PrintWriter;
import java.security.SecureRandom;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CustomerLoginServlet
 */
@WebServlet("/CustomerLoginServlet")
public class CustomerLoginServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		login l = new login();
		String n = request.getParameter("loginname1");
		String p = request.getParameter("pass1");
		String submitType = request.getParameter("submit");
		if (submitType.equals("Login")) {
			if (MyDB.validatecustomer(n, p)) {
				l.setCustomerid(n);
				request.setAttribute("customerid", n);
//				out.println("<html><body><b>Successfully logged in" + "</b></body></html>");
				request.getRequestDispatcher("customerafterlogin.jsp").forward(request, response);

			} else {
//	        out.print("<h1 style='color:red;'>Sorry username or password error</h1>");  
				request.getRequestDispatcher("customerloginError.html").forward(request, response);
			}
		} else if (submitType.equals("Register")) {
			String firstname = request.getParameter("fname");
			String lastname = request.getParameter("lname");
			String contactnumber = request.getParameter("phone");
			String email = request.getParameter("email");
			String password = request.getParameter("pass");
			CustomerGetandSet c = new CustomerGetandSet();
			c.setFirstname(firstname);
			c.setLastname(lastname);
			c.setContactnumber(contactnumber);
			c.setEmailid(email);
			c.setPassword(password);
			if (MyDbImpl.customerreg(c) == 1) {
//				out.println("<html><body><b>Successfully Inserted" + "</b></body></html>");
				request.getRequestDispatcher("customerlogin.html").forward(request, response);
			} else {
//				out.println("<html><body><b>Inputs Error" + "</b></body></html>");
				request.getRequestDispatcher("customerreg.html").forward(request, response);
			}
		}

		else if (submitType.equals("Search Services")) {
			String servicetype = request.getParameter("servicetype");
			String city = request.getParameter("city");
			l.setServicetype(servicetype);
			l.setCity(city);
			request.setAttribute("servicetype", servicetype);
			request.setAttribute("city", city);
			request.setAttribute("custid", l.getCustomerid());
//			if (MyDbImpl.customersearch(servicetype,city) == 1) {
//				out.println("<html><body><b>Successfully Inserted" + "</b></body></html>");
			request.getRequestDispatcher("customerafterlogin1.jsp").forward(request, response);
//			} else {
//				out.println("<html><body><b>Inputs Error" + "</b></body></html>");
//				request.getRequestDispatcher("customerreg.html").forward(request, response);
//			}
		}
		
		
		else if(submitType.equals("Total Service")) {
			request.setAttribute("customerid", l.getCustomerid());
			request.getRequestDispatcher("totalservice.jsp").forward(request, response);
		}
		
		
		
		else if (submitType.equals("Book")) {
			String cvendorid = request.getParameter("cvendorid");
			String cservicetype = request.getParameter("cservicetype");
			String ccategory = request.getParameter("ccategory");
			String ccategory1 = request.getParameter("ccategory1");
			String cname = request.getParameter("cname");
			String cnum = request.getParameter("cnum");
			String address = request.getParameter("address");
			String amount = request.getParameter("payment1");
			System.out.println(amount);
			String customerid = l.getCustomerid();
			String vendornumber = request.getParameter("vendornum");
			if(ccategory=="") {
				ccategory=ccategory1;
			}
			l.setCvendorid(cvendorid);
			l.setCservicetype(cservicetype);
			l.setCcategory(ccategory);
			l.setCname(cname);
			l.setAmount(amount);
			l.setCnum(cnum);
			l.setVendornumber(vendornumber);
			l.setAddress(address);
			
			request.setAttribute("amount", amount);
			System.out.println("in booking sys "+amount);
			request.getRequestDispatcher("payment.jsp").forward(request, response);
		} 
		
		
		
		
		else if (submitType.equals("Paynow")) {
			String cvendorid = l.getCvendorid();
			String cservicetype = l.getCservicetype();
			String ccategory = l.getCcategory();
			String cname = l.getCname();
			String cnum = l.getCnum();
			String address = l.getAddress();
			String customerid = l.getCustomerid();
			String name = request.getParameter("firstname");
			String email = request.getParameter("email");
			l.setCustomerid(email);
			String address1 = request.getParameter("address");
			String city = request.getParameter("city");
			String state = request.getParameter("state");
			String zip = request.getParameter("zip");
			String cardname = request.getParameter("cardname");
			String cardnum = request.getParameter("cardnumber");
			String expmonth = request.getParameter("expmonth");
			String expyear = request.getParameter("expyear");
			String cvv = request.getParameter("cvv");
			String amount = l.getAmount();
			request.setAttribute("amount", amount);
			if (MyDbImpl.customerbooking(cvendorid, customerid, cname, cnum, cservicetype, ccategory, address) > 0) {
				MyDbImpl.payment(name, email, address1, city, state, zip, cardname, cardnum, expmonth, expyear, cvv,amount);
				request.setAttribute("servicetype", l.getServicetype());
				request.setAttribute("city", l.getCity());
				request.setAttribute("amount", amount);
				request.getRequestDispatcher("otp.html").forward(request, response);
//				out.println("<html><body><b>Payment success" + "</b></body></html>");
			} else {
				out.println("<html><body><b>Payment Error in paynow" + "</b></body></html>");
//				request.getRequestDispatcher("customerreg.html").forward(request, response);
			}
		}
		
		
		
		else if (submitType.equals("Notifications")) {
			String emailid = l.getCustomerid();
			request.setAttribute("customerid", emailid);
			request.getRequestDispatcher("customernotification.jsp").forward(request, response);
		} 
		
		
		else if (submitType.equals("Verify")) {
			String custname = l.getCname();
			String custemail = l.getCustomerid();
			String custnum = l.getCnum();
			String vendorid = l.getCvendorid();
			String vendornum = l.getVendornumber();
			String servicetype = l.getCservicetype();
			String category = l.getCcategory();
			String address = l.getAddress();
			String amount = l.getAmount();
			request.setAttribute("custname", l.getCname());
			request.setAttribute("custemailid", l.getCustomerid());
			request.setAttribute("custnum", l.getCnum());
			request.setAttribute("vendorid", l.getCvendorid());
			request.setAttribute("servicetype", l.getCservicetype());
			request.setAttribute("category", l.getCcategory());
			request.setAttribute("address", l.getAddress());
			request.setAttribute("vendornum", l.getVendornumber());
			request.setAttribute("amount", l.getAmount());
//			System.out.println(l.getVendornumber());
			SecureRandom random = new SecureRandom();
			int num = random.nextInt(100000);
			String formatted = String.format("%05d", num); 
			l.setRand("MCJNS"+formatted);
			String rand = l.getRand();
			request.setAttribute("random", l.getRand());
			request.setAttribute("amount", amount);
			if(MyDbImpl.bill(custname,custemail,custnum,vendorid,vendornum,servicetype,category,address,rand,amount)>0) {
				request.getRequestDispatcher("bill.jsp").forward(request, response);
			}else {
				out.println("<html><body><b>Payment not success in verify" + "</b></body></html>");
			}
			
		}else if(submitType.equals("HOME")) {
			request.getRequestDispatcher("customerafterlogin.jsp").forward(request, response);
		}
		else if(submitType.equals("LOGOUT")) {
			request.getRequestDispatcher("HomeService1stPage.html").forward(request, response);
		}
		else if (submitType.equals("Service Complete")) {
			String vendorid = request.getParameter("vendorid");
			String servicetype= request.getParameter("servicetype");
			String category = request.getParameter("category");
			String category1 = request.getParameter("category1");
			String review = request.getParameter("review");
			request.setAttribute("vid", l.getCustomerid());
			String custid = l.getCustomerid();
			request.setAttribute("customerid", l.getCustomerid());
			if(MyDbImpl.adminnotify(vendorid,servicetype,category,review,custid)>0) {
				request.getRequestDispatcher("customernotification.jsp").forward(request, response);
			}
		}
		else if(submitType.equals("Total Services")) {
			request.setAttribute("custemailid", l.getCustomerid());
			request.getRequestDispatcher("totalservice.jsp").forward(request, response);
		}
		
		
		
		
		else if(submitType.equals("Check")){
			String cvendorid = l.getCvendorid();
			String cservicetype = l.getCservicetype();
			String ccategory = l.getCcategory();
			String cname = l.getCname();
			String cnum = l.getCnum();
			String address = l.getAddress();
			String customerid = l.getCustomerid();
			String amount = l.getAmount();
			String upi = request.getParameter("upiid");
			String upiname = request.getParameter("firstname1");
			String upiemail = request.getParameter("email1");
			SecureRandom random = new SecureRandom();
			int num = random.nextInt(100000);
			String formatted = String.format("%05d", num); 
			l.setRand(formatted);
			String rand = l.getRand();
			request.setAttribute("amount", amount);
			request.setAttribute("random", l.getRand());
			if (MyDbImpl.customerbooking(cvendorid, customerid, cname, cnum, cservicetype, ccategory, address) > 0) {
				System.out.println("sai charan reddy nahkbskbskjgefnkjdfkjf");
				MyDbImpl.upipayment(upiname,upiemail,upi,rand,amount);
				request.setAttribute("servicetype", l.getServicetype());
				request.setAttribute("city", l.getCity());
				request.getRequestDispatcher("otp.html").forward(request, response);
//				out.println("<html><body><b>Payment success" + "</b></body></html>");
			} else {
				out.println("<html><body><b>Payment Error" + "</b></body></html>");
//				request.getRequestDispatcher("customerreg.html").forward(request, response);
			}
		}
		out.close();
	}
	
	
}