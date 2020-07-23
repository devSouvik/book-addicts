

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
//    /**
//     * @see HttpServlet#HttpServlet()
//     */
//    public register() {
//        super();
//        // TODO Auto-generated constructor stub
//    }
//
//	/**
//	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		
		try
		{

			String id = request.getParameter("id");
			String firstName = request.getParameter("first_name");
			String lastName = request.getParameter("last_name");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			

			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/admin", "root", "");
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement("insert into admin values(?,?,?,?,?)");
			ps.setString(1, id);
			ps.setString(2, firstName);
			ps.setString(3, lastName);
			ps.setString(4, email);
			ps.setString(5, phone);

			PrintWriter out = response.getWriter();
			int x= ps.executeUpdate();
	        
			   if(x!=0){
				   
				   response.sendRedirect("payment.jsp");
			   
			   } else{
				  
				   out.println(" user ID already taken ...try using another ID number ");
				   
			   }
		}catch(
		Exception e)
		{
			e.printStackTrace();


		}
	
	}

}
