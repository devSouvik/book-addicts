

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
 * Servlet implementation class booksBoughtservlet
 */
@WebServlet("/booksBoughtservlet")
public class booksBoughtservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
//    /**
//     * @see HttpServlet#HttpServlet()
//     */
//    public booksBoughtservlet() {
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String issued_to = request.getParameter("idNumber");
        
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/admin", "root", "");
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("select * from customer_data where issued_to = ? ");
			ps.setString(1, issued_to);
			ResultSet rs = ps.executeQuery();
			out.println("<html><body><center><table align=center border ='10'><tr><td>USER Id</td><td>ISSSUED ON</td><td>BOOK ID</td><td>BOOK NAME</td></tr>");
			
			while (rs.next()) {

				out.println("<tr><td>"+ rs.getString(1) +"</td><td>"+ rs.getString(2) +"</td><td>"+ rs.getString(3) +"</td><td>"+ rs.getString(4) +"</td></tr>");
				
				out.println("<script src=\"https://cdn.jsdelivr.net/npm/darkmode-js@1.5.5/lib/darkmode-js.min.js\"></script>\r\n" + 
						"<script src=\"script.js\"></script>");
			} 
			out.println("</body></html></center>");

		} catch (Exception e) {
			e.printStackTrace();
		} 
	
		
	}

}
