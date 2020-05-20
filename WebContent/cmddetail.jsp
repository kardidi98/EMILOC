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
 

	//out.print(Integer.parseInt(request.getParameter("len")));
 	for(int i=1;i<= Integer.parseInt(request.getParameter("len"));i++){
 		/* out.print(Integer.parseInt(request.getParameter("len")));
 		out.print((request.getParameter("num"+""+i)));
 		out.print(request.getParameter("element_vendu"+""+i));
 		out.print(request.getParameter("qte_vendue"+""+i));
 		out.print( request.getParameter("prix"+""+i));  */
 		String INSERT1 = "INSERT INTO commandes" +
 	            "  (numC,nomProduit,QteProduit,PrixUnitaire,date) VALUES " +
 	            " (?, ?, ?, ?,?);";
 	     
 	    String INSERT2 = "INSERT INTO revue" +
 	   	            "  (numC,nomProduit,QteProduit,PrixUnitaire,numcli,delais) VALUES " +
 	   	            " (?, ?, ?, ?, ?,?);";
 	   	            
 	   	String max="SELECT MAX(numC) FROM revue";
 	   	
 	   String matricule="SELECT matricule FROM usersession";
 	            
 	    String sql_verifier_stock="SELECT * FROM stock WHERE nom_produit='"+request.getParameter("element_vendu"+""+i)+"'";
 	     
 	    String update ="UPDATE stock SET qte_stock=qte_stock-"+Integer.parseInt(request.getParameter("qte_vendue"+""+i))+" WHERE nom_produit='"+request.getParameter("element_vendu"+""+i)+"'";
 	   
 	        Class.forName("com.mysql.jdbc.Driver");

 	        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd", "root", "");)

 	        	 {	 int j = 1;
	 	        	Statement preparedStatement3 = connection.createStatement();
	 	        	ResultSet resultSet3 = preparedStatement3.executeQuery(max);
	 	        	
	 	        	while(resultSet3.next()){
	 	        		j = resultSet3.getInt("MAX(numC)");
	 	        	}
	 	        	
	 	        	
	 	        	
	 	        	Statement preparedStatement4 = connection.createStatement();
	 	        	ResultSet resultSet4 = preparedStatement4.executeQuery(matricule);
	 	        	String mat="";
	 	        	while(resultSet4.next()){
	 	        		mat=resultSet4.getString("matricule");
	 	        	}
 	        	
 	        		Statement preparedStatement1 = connection.createStatement();
 	        		ResultSet resultSet = preparedStatement1.executeQuery(sql_verifier_stock);
 	        	
 	        	while(resultSet.next()){
 	        		
 	        		if(resultSet.getInt("qte_stock") < Integer.parseInt(request.getParameter("qte_vendue"+""+i))){
 	        			
 	        			
 	        			
 	        			   status++;
 	        			continue;
 	        		}
 	        		else{
 	        				
		 	        			PreparedStatement preparedStatement = connection.prepareStatement(INSERT1);
		 	    	        	
		 	    	            preparedStatement.setInt(1, Integer.parseInt(request.getParameter("num"+""+i)));
		 	    	          
		 	    	            preparedStatement.setString(2, request.getParameter("element_vendu"+""+i));
		 	    	            preparedStatement.setInt(3, Integer.parseInt(request.getParameter("qte_vendue"+""+i)));
		 	    	           preparedStatement.setDouble(4, Double.valueOf(request.getParameter("prix"+""+i)));
		 	    	          preparedStatement.setString(5, request.getParameter("date"));
		 	    	            
		
		 	    	            System.out.println(preparedStatement);
		 	    	        
		 	    	            result = preparedStatement.executeUpdate();
		 	    	            
		 	    	            
		 	    	            
		 	    	           PreparedStatement preparedStatement5 = connection.prepareStatement(INSERT2);
		 	    	        	
		 	    	            preparedStatement5.setInt(1, j+1);
		 	    	          
		 	    	            preparedStatement5.setString(2, request.getParameter("element_vendu"+""+i));
		 	    	            preparedStatement5.setInt(3, Integer.parseInt(request.getParameter("qte_vendue"+""+i)));
		 	    	            preparedStatement5.setDouble(4, Double.valueOf(request.getParameter("prix"+""+i)));
		 	    	         	 preparedStatement5.setString(5, mat);
		 	    	         	preparedStatement5.setString(6, request.getParameter("date"));
		
		 	    	            System.out.println(preparedStatement5);
		 	    	        
		 	    	            result = preparedStatement5.executeUpdate();
		 	    	           
 	        			
 	        				 
		 	    	           PreparedStatement preparedStatement2 = connection.prepareStatement(update);
		 	    	           result = preparedStatement2.executeUpdate();
		 	    	          
 	        		}
 	        	}
 	        	 
 	        	
 	        	
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
 	        
 	       
 	       
 	      
 		
 		  
 	}
 	
 	if((status==1)&&(result<=0)){
 		response.sendRedirect("cmd_insuffisante.jsp");
 	}
 	
 	if(result>0){
		   	response.sendRedirect("cmdfacture.jsp"); 
 	}
 	
  
  
 %>
</body>
</html>