package exam1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class validate
 */
@WebServlet("/validate")
public class validate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public validate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		
		String url="jdbc:mysql://localhost:3306/vinit1143";
		String pwd="";
		String uname="root";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,uname,pwd);
			String sql="select username,password from jdbc where username=? and password=?";
			PreparedStatement st=(PreparedStatement) con.prepareStatement(sql);
			st.setString(1, username);
			st.setString(2, password);
			
			ResultSet rs=st.executeQuery();
			String orguname="",orgpass = "";
		 
			while(rs.next())
			{
				orguname =rs.getString("username");
				orgpass=rs.getString("password");
			}
			if(orgpass.equals(password)&&(orguname.equals(username)))

			{
				response.sendRedirect("home.jsp");
				rs.close();
			}
			else
			{
				response.sendRedirect("login.jsp");
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
