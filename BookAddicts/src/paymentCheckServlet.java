
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class paymentCheckServlet
 */
@WebServlet("/paymentCheckServlet")
public class paymentCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

//	/**
//	 * @see HttpServlet#HttpServlet()
//	 */
//	public paymentCheckServlet() {
//		super();
//		// TODO Auto-generated constructor stub
//	}
//
//	/**
//	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
//	 *      response)
//	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
//	 *      response)
//	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String cardNumber = request.getParameter("cardNumber");
        
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/admin", "root", "");
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("select * from payment where cardNumber = ? ");
			ps.setString(1,cardNumber);
			ResultSet rs = ps.executeQuery();
			out.println("<html><body><table align=center border ='10'><tr><td>CARD NUMBER</td><td>NAME</td><td>EMAIL</td><td>ADDRESS</td><td>CITY</td><td>STATE</td><td>ZIP</td></tr>");
			while (rs.next()) 
				
				out.println("<tr><td>"+ rs.getString(1) +"</td><td>"+ rs.getString(2) +"</td><td>"+ rs.getString(3) +"</td><td>"+ rs.getString(4) +"</td><td>"+ rs.getString(5) +"</td><td>"+ rs.getString(6) +"</td><td>"+ rs.getString(7) +"</td></tr>");

				
				out.println("<script src=\"https://cdn.jsdelivr.net/npm/darkmode-js@1.5.5/lib/darkmode-js.min.js\"></script>\r\n" + 
						"<script src=\"script.js\"></script>");
			out.println("<center><p>*do not consider your payment to be successfull if you haven't received an invoice of your payment in your email address provided during registration </p></center>");
			
			
			out.println("</body></html><center>");

		} catch (Exception e) {
			e.printStackTrace();
		} 
	
	}
}
