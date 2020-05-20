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


<!-- animated.css -->
<link rel="stylesheet" href="assets/css/animated.css">


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
	  
	  


	<style>
	
		.active {
		 
		  background-color: #F8CE46;
		  border-bottom:2px solid brown;
		  transition:all .4s ease;
		
		 
		}
		@media only screen and (max-width: 1300px){
			.card__collection {
			 padding: 10px;
			}

			.mapp{
				width: 340px;
				height: 200px;
			}
			.cards{
			  
			  transform: scale(0.8);

			}
			.cards:hover{
			  cursor: pointer;
			  box-shadow:   0 0 10px rgba(0,0,0,.999);
			  transition: all .3s ease;
			  transform: scale(0.8);
			}
			.card__collection .cards {
			  width: 300px;
			  height: 400px;
			  display: block;
			  background-size: cover;
			  float: left;
			  border-radius: 15px;
			  position: relative;
			  overflow: hidden;
			  background-position: center;
			  margin: 0px;
			  margin-left: -5px;
			  border: 1px solid #BC7F2F;

			}
			.offretext{
				font-size: 12px;
				font-style: initial;
				background-color: rgba(255, 193, 7,0.5);

				  position: relative;
				  z-index: 10;
				  margin-top: -72px;
				  text-align: center;
				  color: #63221d;
				  
			}
			
			
		}
		@media only screen and (min-width: 768px) and (max-width: 1000px){
			.card__collection {
			 padding: 15px;
			}
			.mapp{
				width: 700px;
				height: 250px;
			}
			.card__collection .cards {
			transform: scale(1.5);
			  width: 300px;
			  height: 400px;
			  display: block;
			  background-size: cover;
			  float: left;
			  border-radius: 15px;
			  position: relative;
			  overflow: hidden;
			  background-position: center;
			  margin: 130px;
			  margin-left: 170px;
			  border: 1px solid #BC7F2F;


			}
			.offretext{
				font-size: 25px;
				font-style: initial;
				background-color: rgba(255, 193, 7,0.5);

				position: relative;
				z-index: 10;
				margin-top: -150px;
				text-align: center;
				 color: #63221d;
				  
			}
			#usericon{
			  margin-top: 10px;
			}
			
		}


		/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
	@media screen and (max-width: 600px) {
	  .col-25, .col-75, input[type=submit] {
	    width: 100%;
	    margin-top: 0;
	  }
	  input[type=submit] {
	  background-color: #FFC107;
	  color: white;
	  padding: 12px 20px;
	  width: 100%;
	  border-radius: 4px;
	  cursor: pointer;
	  float: right;
	  margin-left: 0px;
	  margin-top: 30px;

	}
	  .container {
	  
	 
	  padding: 20px; 
	  width: 340px;
	  
	}
	.tableAchats{
		padding: 20px; 
	  width: 303px;
	}
	/*RESEAUX SOCIAUX*/

			a#facebook{
			  /*border-radius:50%;*/
			  padding: 10px;
			  padding-right: 15px;
			   padding-left: 16px;
			  font-size:12px;
			  text-align:center;
			  color:#fff;
			  background: rgba(64, 100, 173, 0.7);
			  position:fixed;
			  right:0px;
			  opacity:1;
			  z-index:99999;
			  transition:all ease-in 0.4s;
			  backface-visibility: hidden;
			  -webkit-backface-visibility: hidden;
			  text-decoration: none;
			}

			a#facebook:hover{
			  background: #4064AD;
			  transition:all ease-in 0.2s;
			}
			a#facebook.facebookicon{
			  bottom:-35px;
			  opacity:0;
			  transition:all ease-in 0.5s;
			}

			a#facebook.facebookicon{
			  bottom:200px;
			  opacity:1;
			}

			a#instagram{
			  /*border-radius:50%;*/
			  padding: 10px;
			  padding-right: 14px;
			   padding-left: 14px;
			  font-size:12px;
			  text-align:center;
			  color:#fff;
			  background: rgba(203, 43, 72, 0.7);
			  position:fixed;
			  right:0px;
			  opacity:1;
			  z-index:99999;
			  transition:all ease-in 0.4s;
			  backface-visibility: hidden;
			  -webkit-backface-visibility: hidden;
			  text-decoration: none;
			}

			a#instagram:hover{
			  background: #CB2B48;
			  transition:all ease-in 0.2s;
			}
			a#instagram.instagramicon{
			  bottom:-35px;
			  opacity:0;
			  transition:all ease-in 0.5s;
			}

			a#instagram.instagramicon{
			  bottom:238.5px;
			  opacity:1;
			}


			a#linkedin{
			  /*border-radius:50%;*/
			  padding: 10px;
			  padding-right: 14px;
			   padding-left: 14px;
			  font-size:12px;
			  text-align:center;
			  color:#fff;
			  background: rgba(2, 113, 174, 0.7);
			  position:fixed;
			  right:0px;
			  opacity:1;
			  z-index:99999;
			  transition:all ease-in 0.4s;
			  backface-visibility: hidden;
			  -webkit-backface-visibility: hidden;
			  text-decoration: none;
			}

			a#linkedin:hover{
			  background: #0271AE;
			  transition:all ease-in 0.1s;
			}
			a#linkedin.linkedinicon{
			  bottom:-35px;
			  opacity:0;
			  transition:all ease-in 0.2s;
			}

			a#linkedin.linkedinicon{
			  bottom:276px;
			  opacity:1;
			}
			/*FIN RESEAUX SOCIAUX*/

			#usericon{
			  margin-top: 10px;
			}
	} 

	@media screen and (min-width: 768px) and (max-width: 1000px) {
	  .col-25, .col-75, input[type=submit] {
	    width: 100%;
	    margin-top: 0;
	  }
	  input[type=submit] {
	  background-color: #FFC107;
	  color: white;
	  padding: 12px 20px;
	  width: 100%;
	  border-radius: 4px;
	  cursor: pointer;
	  float: right;
	  margin-left: 0px;
	  margin-top: 30px;

	}
	  .container {
	  
	 
	  padding: 15px; 
	  width: 700px;
	  
	}
	.tableAchats{
		padding: 15px; 
		width: 670px;
	}
	
	}

	@media screen and (max-width: 600px){
		div#slider figure img {
		  width: 20%;
		  float: left;
		  height: 400px;
		}
	}

	@media screen and (min-width: 768px) and (max-width: 1000px){
		div#slider figure img {
		  width: 20%;
		  float: left;
		  height: 550px;
		}
	}

	</style>
</head>
<body>



 
 <%
 
 int result = 0;
 int status = 0;
 int statusde1 = 0;
 double total=0;
 try {
	 Class.forName("com.mysql.jdbc.Driver");
	 } catch (ClassNotFoundException e) {
	 e.printStackTrace();
	 }
 Connection con = null;
 Statement state = null;
 ResultSet resultSet = null;
 Statement state2 = null;
 ResultSet resultSet2 = null;	
 
 
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd", "root", "");
 state=con.createStatement();
	String sql_1 ="SELECT * FROM usersession u,utilisateurs s WHERE s.email=u.email AND s.nom=u.nom";
	
	resultSet2 = state.executeQuery(sql_1);
	while(resultSet2.next()){
		String name=resultSet2.getString("nom");
		String prenom=resultSet2.getString("prenom");
	
		String email=resultSet2.getString("email");
  
 %>
 <header style="position: fixed;top:0;width:100%;z-index: 11;box-shadow:  0 0 2px rgba(255, 193, 7,0.3);">
	
 <nav class="navbar navbar-expand-lg navbar " style="background-color: rgba(255,255,255,0.98);">
        <img src="Images\logo.png"  style="width:20%" id="imgEMILOC">
		
        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbar">
            <div style="color: #6e393e;"><span class="fa fa-navicon" style="font-size: 2em;"></span></div>

        </button>
		
        <div class="collapse navbar-collapse" id="navbar">
            <div class="navbar-nav" id="navglob">
            	<hr>
            	<a  href="#factures" class="nav-item nav-link active" id="navfact" style="color: #6e393e;">Facture</a>
                <a href="main.jsp" class="nav-item nav-link " id="navaccueil" style="color: #6e393e;">Catalogue</a>
                
                <a  href="#partenaires" class="nav-item nav-link" id="navpartenaires" style="color: #6e393e;">Partenaires</a>
				
                <a  href="#contacter" class="nav-item nav-link " id="navcontact" style="color: #6e393e;">Contact</a>
                
            </div>
           	
          
             
          
           <div class="btn-group dropleft" style="float:right;margin-left:50%;">
          	<button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"  aria-expanded="false" style="background-color:white;"><i class="fa fa-user " id="usericon"  style="font-size: 1.8em;color: brown; border: 1px solid brown;
 			 border-radius: 50%;padding: 10px;padding-right: 13px;padding-left: 13px;background-color:white;"></i></button>
			  <div class="dropdown-menu" style="padding: 10px;text-align: center;">
			  	<div>
			  	<% out.print("<p>"+name+" "+prenom+"</p>");%>
			  	<% out.print("<p>"+email+"</p>");%>
			  	<%}
 					%>
			  	</div>
			  	<hr>
			   
			    <a  href="deconnexion.jsp" style='color:#F49181;'><i class="fa fa-lock" style="color: black;"></i><b>  Déconnexion</b></a>
			  
			  </div>
          	
			  </div>
        
       <!--   <a href="panier.jsp" ><img src="Images/panier.png" width=40 height=40></a> -->
            
        </div>
        
    </nav>
			
	
</header>
 
 <div class="container tableAchats animated bounceInRight" id="factures">
	<h4  style="text-align: center;margin-top: 30px; font-style: initial;color: #9E241A;margin-bottom: 30px;">Facture</h4>

	
		<table id="table" class="table table-hover table-striped t table-bordered table-responsive-sm">
		  <thead>
		    <tr>
		      
		      <th scope="col">Produit</th>
		      
		      <th scope="col">Quantité</th>
		      <th scope="col">Prix/unité (DH)</th>
		     
		    </tr>
		  </thead>
		  <tbody id="ensembleachats">
		    <%
				try{ 
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd", "root", "");
				state=con.createStatement();
				String sql ="SELECT * FROM commandes c,stock s where s.nom_produit=c.nomProduit";
				
				resultSet = state.executeQuery(sql);
				while(resultSet.next()){
					total=total+Double.valueOf(resultSet.getString("prix_unitaire"))*resultSet.getInt("QteProduit");
			%>
			<tr>

				
				<td><%=resultSet.getString("nomProduit") %></td>
				<td><%=resultSet.getInt("QteProduit") %></td>
				<td><%=resultSet.getDouble("PrixUnitaire") %></td>
				
				
			</tr>
		    <%}
		    %>
				<tr>
    			<td id="total" >
    				<strong style="color: bleu;text-align: center;"><h3>Montant total</h3></strong>
    			</td>
    			<td id="total" colspan="2">
    				<strong style="text-align:center;"><span><h1><%=total %> DH</h1></span></strong>
    			</td>
    		</tr>
				
		  </tbody>
		</table>
		<div class="row">
				<div class="col-sm-10">
				
			</div>
			<div class="col-sm-2">


				
			<form class="justify-content-center" action="" method="post">
				
				<a href="newmain.jsp"><button  type="button" name="mailform" class="btn btn-primary " style="text-align: center;max-width: 100%;float: right; background-color: brown;padding-right: 15px;padding-left: 15px;margin-bottom: 20px;margin-top: 20px;border: 1px solid brown;" id="tPayement"><i class="fa fa-credit-card" style="color: white;"></i><b>  Payer</b></button>
			</a>
			</form>
				
				
	
			</div>
			
			</div>
		  
</div>
			<%
			
			
			} catch (Exception e) {
			e.printStackTrace();
			}
		    
		    
			
			
			    	PreparedStatement preparedStatement = con.prepareStatement("DELETE FROM commandes");
			    	
			        
			        
			
			        System.out.println(preparedStatement);
			    
			        statusde1 = preparedStatement.executeUpdate();
			        con.close();
			
			    %>
			    
	
   
    <!-- Partenaires -->

 <h3 id="partenaires" style="padding: 30px;text-align: center;font-style: initial;color: #9E241A; ">Nos partenaires</h3>
    <form  style="background-color: #fff;  box-shadow:  0 0 2px rgba(0,0,0,20);">

	<hr>

	   <marquee class="marquee" direction="left" scrollAmount="6" : Vitesse 6 >
	    			<img name="titre"  src="Images\partenaire1.jpg">
	    			<img name="titre"  src="Images\partenaire2.jpg">
	    			<img name="titre"  src="Images\partenaire3.jpg" style="margin-left: 130px;">
	    			<img name="titre"  src="Images\partenaire1.jpg">
	    			<img name="titre"  src="Images\partenaire2.jpg">
	    			<img name="titre"  src="Images\partenaire3.jpg" style="margin-left: 130px;">
	    			<img name="titre"  src="Images\partenaire1.jpg">
	    			<img name="titre"  src="Images\partenaire2.jpg">
	    			<img name="titre"  src="Images\partenaire3.jpg" style="margin-left: 130px;">
	    			<img name="titre"  src="Images\partenaire1.jpg">
	    			<img name="titre"  src="Images\partenaire2.jpg">
	    			<img name="titre"  src="Images\partenaire3.jpg" style="margin-left: 130px;">
	    			<img name="titre"  src="Images\partenaire1.jpg">
	    			<img name="titre"  src="Images\partenaire2.jpg">
	    			<img name="titre"  src="Images\partenaire3.jpg" style="margin-left: 130px;">
	    			<img name="titre"  src="Images\partenaire1.jpg">
	    			<img name="titre"  src="Images\partenaire2.jpg">
	    			<img name="titre"  src="Images\partenaire3.jpg" style="margin-left: 130px;">
	    			<img name="titre"  src="Images\partenaire1.jpg">
	    			<img name="titre"  src="Images\partenaire2.jpg">
	    			<img name="titre"  src="Images\partenaire3.jpg" style="margin-left: 130px;">
	    			<img name="titre"  src="Images\partenaire1.jpg">
	    			<img name="titre"  src="Images\partenaire2.jpg">
	    			<img name="titre"  src="Images\partenaire3.jpg" style="margin-left: 130px;">
	    </marquee>

	    <hr>
    </form>
 <!-- /Partenaires -->
<div  >
	<div class="row justify-content-center" id="contacter">
 	<div class="col-sm-1">
 		
 	</div>
 	<div class="col-sm-4 adresse rounded" style="text-align: center;margin-bottom: 25px;margin-top: 10px;box-shadow: 0 0 4px rgba(0,0,0,.5);padding: 20px;background-color: white;">
 		<p></p>
 		<p>
 			<i class="fa fa-map" style="font-size: 2.5em;color: rgba(246, 135, 54,0.9);border-bottom: 3px solid rgba(158, 36, 26);padding-bottom : 10px;border-radius: 5px;"></i>
 		</p>
 			<h4>Adresse</h4>
 			<br>
 		<div>
 			
 			<div style="text-decoration: none;color: black;font-size: 15px;">
 				10005 RABAT TOUR HASSAN BP 4490, RABAT
 			</div>
 			<br>
 			<div style="text-decoration: none;color: black;font-size: 15px;">
 				<b>T : </b>06 52 74 98 74
 			</div>
 		</div>
 	</div>
 	<div class="col-sm-1">
 		
 	</div>
 	<div class="col-sm-4 rounded" style="text-align: center;margin-bottom: 25px;margin-top: 10px;box-shadow: 0 0 4px rgba(0,0,0,.5);padding: 20px;background-color: white;">
 		<p></p>
 		<p>
 			<i class="fa fa-envelope" style="font-size: 2.5em;color: rgba(246, 135, 54,0.9);border-bottom: 3px solid rgba(158, 36, 26);padding-bottom : 10px;border-radius: 4px;"></i>
 		</p>
 			<h4>E-mail</h4>
 			<br>
 		<div>
 			
 			<div>
 				<a href="mailto:EMILOC2020@gmail.com" style="text-decoration: none;color: black;font-size: 15px;">EMILOC2020@gmail.com</a>
 			</div>
 			<p></p>
 			<div class="reseaux_sociaux justify-content-center">
 				<span><a href="https://www.facebook.com/abdo.karmilo.1"><i class="fa fa-facebook" style="font-size: 1.5em;color: #F38270;"></i></a></span><span><a href="https://www.instagram.com/abdo_kd/?hl=en"><i class="fa fa-instagram" style="font-size: 1.5em;color: #F38270;margin-left: 25px;"></i></a></span><span><a href="https://www.linkedin.com/in/abdellatif-kardidi-78aab0177/"><i class="fa fa-linkedin" style="font-size: 1.5em;color: #F38270;margin-left: 25px;"></i></a></span>
 			</div>
 		</div>
 	</div>
 	<div class="col-sm-1">
 		
 	</div>
 </div>
</div>
 


<!-- BOUTON POUR REVENIR EN HAUT -->
<div><a id="cRetour" class="cInvisible" href="#imgEMILOC">Haut</a></div>
<!-- /BOUTON POUR REVENIR EN HAUT -->
<a id="facebook" class="facebookicon" href="https://www.facebook.com/abdo.karmilo.1"><i class="fa fa-facebook"></i></a>
<a id="instagram" class="instagramicon" href="https://www.instagram.com/abdo_kd/?hl=en"><i class="fa fa-instagram"></i></a>
<a id="linkedin" class="linkedinicon" href="https://www.linkedin.com/in/abdellatif-kardidi-78aab0177/"><i class="fa fa-linkedin"></i></a>

  <!-- Footer -->
<footer class="page-footer font-small  pt-3">
<h4  style="color: white; padding: 30px;text-align: center;font-style: initial;">CONTACTEZ-NOUS</h4>
  <div class="container content " style="padding: 35px;width: 1000px;border:1px solid white;border-radius: 5px;" >
<center>
	<form action="//submit.form" id="ContactUs100" method="post" onsubmit="return ValidateForm(this);">
<script type="text/javascript">
function ValidateForm(frm) {
if (frm.Name.value == "") { alert('Name is required.'); frm.Name.focus(); return false; }
if (frm.FromEmailAddress.value == "") { alert('Email address is required.'); frm.FromEmailAddress.focus(); return false; }
if (frm.FromEmailAddress.value.indexOf("@") < 1 || frm.FromEmailAddress.value.indexOf(".") < 1) { alert('Please enter a valid email address.'); frm.FromEmailAddress.focus(); return false; }
if (frm.Comments.value == "") { alert('Please enter comments or questions.'); frm.Comments.focus(); return false; }
return true; }
</script>
<table style="width:550px;border:0;" cellpadding="8" cellspacing="0">
<tr> <td>
<label for="Name"><span>Nom</span><span style="color:red;">*</span><span>:</span></label>
</td> <td>
<input name="Name" type="text"  style="width:100%;" placeholder="Votre nom.."/>
</td> </tr> <tr> <td>
<label for="PhoneNumber">Téléphone:</label>
</td> <td>
<input name="PhoneNumber" type="text"  style="width:100%;" placeholder="Votre Tél.."/>
</td> </tr> <tr> <td>
<label for="FromEmailAddress"><span>Email</span><span style="color:red;">*</span><span>:</span></label>
</td> <td>
<input name="FromEmailAddress" type="text" maxlength="90" style="width:100%;" placeholder="Votre email.."/>
</td> </tr> <tr> <td>
<label for="Comments"><span>Message</span><span style="color:red;">*</span><span>:</span></label>
</td> <td>
<textarea name="Comments" rows="7" cols="40" style="width:100%;" placeholder="Ecrivez.."></textarea>
</td> </tr> <tr> <td style="color:red;">
*: Obligatoire
</td> <td>
<div style="float:right" class="cacher"><a href="https://www.100forms.com" id="lnk100" title="form to email">form to email</a></div>
<input name="skip_Submit" type="submit"  value="Envoyer" class="btn btn-outline-light buttonsubmit" style="background-color: rgba(246, 135, 54,0.8);" />
<script src="https://www.100forms.com/js/FORMKEY:W2C8U65XB3GZ/SEND:my@email.com" type="text/javascript"></script>
</td> </tr>
</table>
</form>
</center>
</div>


  <!-- Contact us -->
 <!--  <h4  style="color: white; padding: 30px;text-align: center;font-style: initial;">CONTACTEZ-NOUS</h4>
  <div class="container content "  style="padding:25px;">
  <form action="mailto:abdokardidi44@gmail.com">
    <div class="row">
      <div class="col-25">
        <label for="fname">Prénom</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="firstname" placeholder="Votre prénom..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Nom</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="lastname" placeholder="Votre nom..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="email">Email</label>
      </div>
      <div class="col-75">
        <input type="email" id="email" name="email" placeholder="Votre email..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="subject">Sujet</label>
      </div>
      <div class="col-75">
        <textarea id="subject" name="subject" placeholder="Ecrivez.." style="height:200px"></textarea>
      </div>
    </div>
    <div class="row">
      <input type="submit" value="Envoyer" class="btn btn-outline-light buttonsubmit" style="background-color: rgba(246, 135, 54,0.8);">
    </div>
  </form>
</div>  -->

<!-- /Contact us -->

<!-- Map -->
  <div class="map-responsive map" style="margin-top: 40px;">
    <iframe class="mapp" src="https://maps.google.com/maps?q=Ecole%20Mohammadia%20d&t=&z=13&ie=UTF8&iwloc=&output=embed" width="1000" height="300"  frameborder="0" allowfullscreen></iframe>
</div>
<!-- /Map -->

  <!-- Copyright -->
  <div  class="footer-copyright text-center py-3 footer-cpr">© 2020 Copyright <a class="catalogue" href="#imgKD" style="text-decoration: none;color: blue;"> EMILOC</a>

  </div>
 
  <!-- Copyright -->

</footer>
<!-- Footer -->
  
 
</body>
<script >
Swal.fire({
    title: "Pour votre information !",
    text: 'La facture contient juste les produits disponibles dans le stock.',
    type: 'info',
    confirmButtonColor: "rgba(255, 193, 7,1)",
   
    animation:true
   
    
   
});



//Add active class to the current button (highlight it)
var header = document.getElementById("navglob");
var btns = header.getElementsByClassName("nav-link");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function() {
  var current = document.getElementsByClassName("active");
  if (current.length > 0) { 
    current[0].className = current[0].className.replace(" active", "");
  }
  this.className += " active";
  });
}
</script>

</html>