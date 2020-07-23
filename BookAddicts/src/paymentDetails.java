

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class paymentDetails
 */
@WebServlet("/paymentDetails")
public class paymentDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
//    /**
//     * @see HttpServlet#HttpServlet()
//     */
//    public paymentDetails() {
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
//		// TODO Auto-generated method stub
//		doGet(request, response);
		
try {
			
			response.setContentType("text/html");
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/admin", "root", "");
			PreparedStatement ps = conn.prepareStatement("select * from payment");
			ResultSet rs = ps.executeQuery();
		
			PrintWriter out=response.getWriter();
			out.println("<html><body><table align=center border ='10'><tr><td>CARD NUMBER</td><td>NAME</td><td>EMAIL</td><td>ADDRESS</td><td>CITY</td><td>STATE</td><td>ZIP</td></tr>");
		
			while(rs.next()) {
				
				out.println("<tr><td>"+ rs.getString(1) +"</td><td>"+ rs.getString(2) +"</td><td>"+ rs.getString(3) +"</td><td>"+ rs.getString(4) +"</td><td>"+ rs.getString(5) +"</td><td>"+ rs.getString(6) +"</td><td>" + rs.getString(7) +"</td></tr>");
				
			}
			
			out.println("</table></body></html>");
		
		}
		 
		catch (Exception e){
			e.printStackTrace();
		}
		
	}

}
