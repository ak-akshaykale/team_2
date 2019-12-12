package in.socionet.server;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MainServer
 */
@WebServlet("/sociomain")
public class MainServer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String uname = request.getParameter("name");
		String upassword = request.getParameter("password");
		String uemail = request.getParameter("email");
		String umobileno = request.getParameter("mobileno");
		User u = new User();
		u.setUname(uname);
		u.setUpass(upassword);
		u.setUmobileno(umobileno);
		u.setUemail(uemail);
		boolean isAdd = SignupService.newUser(u);
		if(isAdd)
		session.setAttribute("VCODE", "User Register Successfully..!");
		else
		session.setAttribute("VCODE", "User Registration Failed..!");
			
		//RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		//rd.forward(request, response);
		response.sendRedirect("index.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
