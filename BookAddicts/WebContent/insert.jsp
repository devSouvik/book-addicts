<%@ page import ="java.sql.*"%>

<% 

   String book_id = request.getParameter("rid");
   String book_Name = request.getParameter("rname");
   String author = request.getParameter("rauthor");
   String genre = request.getParameter("rgenre");
   String book_url = request.getParameter("raddress");   
   try{
	   
		Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/admin", "root", "");
		PreparedStatement ps = conn.prepareStatement("insert into books values(?,?,?,?,?)");
		ps.setString(1,book_id);
		ps.setString(2,book_Name);
		ps.setString(3,author);
		ps.setString(4,genre);
		ps.setString(5,book_url);

		int x= ps.executeUpdate();
        
	   if(x!=0){
		   
		   out.print("table updated successfully !! ");
	   
	   } else{
		  
		   out.print(" something went wrong ...table isn't updated !!");
		   
	   }
	   
   } catch (Exception e){
	   out.print(e);
   }
   %>