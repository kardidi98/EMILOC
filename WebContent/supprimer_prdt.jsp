<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="utf-8"%>
<%@page import="database.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Commandes</title>
<!-- SWEETALERT -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
	<script src="sweetalert2.min.js"></script>
	<link rel="stylesheet" href="sweetalert2.min.css">
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</head>
<body>

 <jsp:useBean id="cmd" class="bean.commande" />

 <jsp:setProperty property="*" name="cmd" />


 
 <%
 
 int result = 0;
 int status = 0;
	 String delete="DELETE FROM stock WHERE id="+Integer.parseInt(request.getParameter("input_delete"))+"";

	 Class.forName("com.mysql.jdbc.Driver");

 	        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd", "root", "");)

 	        	 {
 	        		PreparedStatement preparedStatement = connection.prepareStatement(delete);
		 	    	result = preparedStatement.executeUpdate();
		 	    	
 	        	
 	        	 
 	        	
 	        	
					connection.close();
 	        } catch (SQLException e) {
 	        	for (Throwable ex: e) {
 	               if (e instanceof SQLException) {
 	                   ex.printStackTrace(System.err);
 	                   System.err.println("SQLState: " + ((SQLException) ex).getSQLState());
 	                   System.err.println("Error Code: " + ((SQLException) ex).getErrorCode());
 	                   System.err.println("Message: " + ex.getMessage());
 	                   Throwable t = e.getCause();
 	                   while (t != null) {
 	                       System.out.println("Cause: " + t);
 	                       t = t.getCause();
 	                   }
 	               }
 	           }
 	        }
 	        
 	       
 	       
 	      
 		
 		  
 	
 	
 	
 	
 	if(result>0){
		   	response.sendRedirect("admin.jsp"); 
 	}
 	
  
  
 %>
</body>
</html>