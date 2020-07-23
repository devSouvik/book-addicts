

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
 * Servlet implementation class myServlet
 */
@WebServlet("/myServlet")
public class myServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
//    /**
//     * @see HttpServlet#HttpServlet()
//     */
//    public myServlet() {
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
		//doGet(request, response);
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String ID = request.getParameter("idNumber");
        
		try { 
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/admin", "root", "");
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("select * from admin where ID=?");
			ps.setString(1, ID);
			ResultSet rs = ps.executeQuery();
			out.println("<html><body>");
			while (rs.next()) {

//				out.println("<h2 style=\"text-align: right;\"><strong><a href=\"login.jsp\" target=\"_blank\" rel=\"noopener\">logout</a></strong></h2>");
//				out.println("<p>&nbsp;</p>\r\n" + 
//						"");
//				out.println("<p><strong>go to <a href=\"homepage.jsp\" target=\"_blank\" rel=\"noopener\">home</a></strong></p>\r\n" + 
//						"");
//				out.println("<p><strong>check your <a href=\"paymentCheck.jsp\" target=\"_blank\" rel=\"noopener\">payments</a><br /></strong></p>\r\n" + 
//						"");
//				out.println("<p><strong>check your <a href=\"booksBought.jsp\" target=\"_blank\" rel=\"noopener\">books</a><br /><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://banner2.cleanpng.com/20180521/ocp/kisspng-computer-icons-user-profile-avatar-french-people-5b0365e4f1ce65.9760504415269493489905.jpg\" alt=\"\" width=\"183\" height=\"146\" /></strong></p>");
//				out.println("<center><h2><strong>welcome :&nbsp </strong><strong>" + rs.getString(2)+"</strong></h2></center>");
//				out.println("<script src=\"https://cdn.jsdelivr.net/npm/darkmode-js@1.5.5/lib/darkmode-js.min.js\"></script>\r\n" + 
//						"<script src=\"script.js\"></script>");
			
				out.println("<p style=\"text-align: center;\">&nbsp;</p>\r\n" + 
						"<p style=\"text-align: center;\">&nbsp;</p>\r\n" + 
						"<p style=\"text-align: center;\">&nbsp;</p>\r\n" + 
						"<p style=\"text-align: center;\"><img src=\"https://image.flaticon.com/icons/png/512/87/87141.png\" alt=\"avatar\" width=\"214\" height=\"214\" /></p>\r\n" + 
						"<p style=\"text-align: center;\">&nbsp;</p>\r\n" + 
						"<p style=\"text-align: center;\">Welcome : <strong>"+ rs.getString(2) +"</strong></p>\r\n" + 
						"<p style=\"text-align: center;\">Your registered E-mail address is : "+ rs.getString(4)+"</p>\r\n" + 
						"<p style=\"text-align: center;\">Your User ID is : " + rs.getString(1) +"</p>\r\n" + 
						"<p style=\"text-align: center;\">Your registered Phone Number is : " + rs.getString(5)+ "</p>\r\n" + 
						"");
			}
			out.println("</center></body></html>");

		} catch (Exception e) {
			e.printStackTrace();
		} 
	
	}

	}


