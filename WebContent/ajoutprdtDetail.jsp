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

 <jsp:useBean id="prdt" class="bean.ajoutProduit" />

 <jsp:setProperty property="*" name="prdt" />

 <%
 	
  ajoutProduitDao prdtdao = new ajoutProduitDao();
  int status = prdtdao.registerproduct(prdt);
  if (status > 0) {
   	response.sendRedirect("admin.jsp"); 
  }
 %>
</body>
</html>