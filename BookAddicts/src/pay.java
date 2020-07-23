

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
 * Servlet implementation class pay
 */
@WebServlet("/pay")
public class pay extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
//    /**
//     * @see HttpServlet#HttpServlet()
//     */
//    public pay() {
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
			String cardNumber = request.getParameter("cardnumber");
			String Name = request.getParameter("firstname");
			String lastName = request.getParameter("last_name");
			String email = request.getParameter("email");
			String phone = request.getParameter("address");
			String city = request.getParameter("city");
			String state = request.getParameter("state");
			String zip = request.getParameter("zip");
			

			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/admin", "root", "");
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement("insert into payment values(?,?,?,?,?,?,?)");
			ps.setString(1, cardNumber);
			ps.setString(2, Name);
			ps.setString(3, email);
			ps.setString(4, phone);
			ps.setString(5, city);
			ps.setString(6, state);
			ps.setString(7, zip);

		    ps.executeUpdate();
			PrintWriter out = response.getWriter();
			
            response.sendRedirect("completePayment.jsp");
			
		}catch(Exception e){
			
			e.printStackTrace();


		}
	
	}

}
