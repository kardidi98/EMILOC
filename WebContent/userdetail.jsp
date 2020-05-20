<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="database.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insertion</title>
</head>
<body>

 <jsp:useBean id="user" class="bean.user" />

 <jsp:setProperty property="*" name="user" />

 <%
 	
  userDao userdao = new userDao();
  int status = userdao.registeruser(user);
  if (status > 0) {
   	response.sendRedirect("choix_ev_inscrit.jsp"); 
  }
 %>
</body>
</html>