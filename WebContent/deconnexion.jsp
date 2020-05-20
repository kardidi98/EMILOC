<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="utf-8"%>


<!DOCTYPE html>
<html>
<head>


<meta charset="utf-8">
	<title>EMILOC</title>
	<link rel="shortcut icon" type="text/css" href="Images\KD.ico">



	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>


<!-- SWEETALERT -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
	<script src="sweetalert2.min.js"></script>
	<link rel="stylesheet" href="sweetalert2.min.css">
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

	<script src="jquery-3.4.1.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		  <!-- Bootstrap core CSS -->
	  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

	  <!-- Custom styles for this template -->
	  <link href="assets/css/style.css" rel="stylesheet">
	  
	  <script type="text/javascript" src="assets/js/javascript.js"></script>

	

	  <link href="vendor\jquery-ui-1.12.1\jquery-ui.min.css">
	  <link rel="stylesheet" href="vendor\jquery-ui-1.12.1\jquery-ui.theme.css">

	  <link rel="stylesheet" type="text/css" href="vendor/select2/dist/css/select2.min.css">

	  <!-- ICON  font-awesome -->
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	  <link rel="shortcut icon" href="Images/favicon.png">
	  
	  


	
</head>
<body>


<%
 try {
	 Class.forName("com.mysql.jdbc.Driver");
	 } catch (ClassNotFoundException e) {
	 e.printStackTrace();
	 }

 	
	 String drop = "DROP TABLE usersession";

     int result = 0;

   

     try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd", "root", "");

         
         PreparedStatement preparedStatement = connection.prepareStatement(drop)) {


         System.out.println(preparedStatement);
       
         result = preparedStatement.executeUpdate();
         
         PreparedStatement preparedStatement1 = connection.prepareStatement("DELETE FROM commandes");
      	
         
         
 		
         System.out.println(preparedStatement);
     
         result= preparedStatement1.executeUpdate();
         
         response.sendRedirect("index.jsp");
         connection.close();
     } catch (Exception e) {
			e.printStackTrace();
			}
     
   
  
 %>
 
</body>
</html>