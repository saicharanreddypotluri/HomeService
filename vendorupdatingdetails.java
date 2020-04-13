

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class vendorupdatingdetails
 */
@WebServlet("/vendorupdatingdetails")
public class vendorupdatingdetails extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.getRequestDispatcher("vendorafterlogin.jsp").forward(request, response);
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		login l = new login();
		String submitType = request.getParameter("submit");
		if (submitType.equals("Add Personal Details")) {
//			String vendorid = request.getParameter("loginname1");
			String vendorid = "v001";
			String email = request.getParameter("email1");
			String address = request.getParameter("address");
			if (MyDbImpl.vendorreg(vendorid,email,address) == 1) {
				out.println("<html><body><b>Successfully Insert" + "</b></body></html>");
//				request.getRequestDispatcher("welcom.html").forward(request, response);
			} else {
				request.getRequestDispatcher("HomeService1stPage.html").forward(request, response);
			}
		}


		out.close();
	}
}
