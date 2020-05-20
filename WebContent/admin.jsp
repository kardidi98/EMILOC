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
		.tableproduits_tableuser{
  
  
		  background: #fff;
		  background-color: #fff;
		 
		  box-shadow: 0 0 10px rgba(0,0,0,.4);
		  /*padding-left: 150px;*/
		  font-family: 'Do Hyeon', sans-serif;
		  overflow: hidden;
		  margin-top: 20px;
		  transition-delay: .10s;
		  max-width: 1110px;
		}
		#revue{
			margin-top: 150px;
		}
		#revue i{
			border-right: 1px solid #BC7F2F;
			padding-right: 20px;
			font-size: 55px;
			color:#185FA8;
		}
		#revue i:hover{
			cursor:pointer;
		}
		
		
		
		
		/* Style the active class (and buttons on mouse-over) */
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
	.tableproduits_tableuser{
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
	.tableproduits_tableuser{
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

 Statement state3 = null;
 ResultSet resultSet3 = null;
 
 Statement state4 = null;
 ResultSet resultSet4 = null;
 
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
                <a href="#" class="nav-item nav-link active" id="navprdt" style="color: #6e393e;">Produits</a>
                <a  href="#" class="nav-item nav-link" id="navusers" style="color: #6e393e;">Commandes</a>
                <a  href="#" class="nav-item nav-link" id="navfourni" style="color: #6e393e;">Fournisseurs</a>
                <a  href="#partenaires" class="nav-item nav-link" id="navpartenaires" style="color: #6e393e;" >Partenaires</a>

                <a  href="#contacter" class="nav-item nav-link " id="navcontact" style="color: #6e393e;">Contact</a>
                
            </div>
           	
          
             
          
           <div class="btn-group dropleft" style="float:right;margin-left:35%;">
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
 
 			 <%
				try{ 
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd", "root", "");
				state=con.createStatement();
				String sql ="SELECT count(*) FROM utilisateurs WHERE Role='"+("utilisateur").toLowerCase()+"'";
				
				resultSet = state.executeQuery(sql);
				
				while(resultSet.next()){
					
			%>
 
 <div  class="container-fluid">
	<div class="row justify-content-center" id="revue">
 	<div class="col-sm-1">
 		
 	</div>
 	<div class="col-sm-3 rounded animated fadeInLeftBig" style="margin-right:10px;text-align: center;margin-bottom: 25px;margin-top: 10px;box-shadow: 0 0 4px rgba(0,0,0,.5);padding: 20px;background-color: white;">
 		<div class="row">
 			<div class="col-sm-4">
 				<i class="fa fa-user" ></i>
 			</div>
 			<div class="col-sm-6">
 				<div>
 					<div style="font-size:22px;">
 						<%=resultSet.getInt("count(*)") %>
 					</div>
 					<div style="font-size:22px;color:#243569;">
 						<strong>Utilisateurs</strong>
 					</div>
 				</div>
 			</div>
 		</div>
 	</div>
 			<%}
			
				} catch (Exception e) {
					e.printStackTrace();
					}
		  	
				try{ 
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd", "root", "");
				state=con.createStatement();
				
				String sql ="SELECT count(*) FROM stock";
				
				resultSet = state.executeQuery(sql);
				while(resultSet.next()){
					
			%>
				
			
			
 	<div class="col-sm-3 rounded animated fadeInDownBig" style=" margin-right:10px;text-align: center;margin-bottom: 25px;margin-top: 10px;box-shadow: 0 0 4px rgba(0,0,0,.5);padding: 20px;background-color: white;">
 		<div class="row">
 			<div class="col-sm-4">
 				<i class="fa fa-product-hunt" aria-hidden="true" ></i>
 			</div>
 			<div class="col-sm-6">
 				<div>
 					<div>
 						<div style="font-size:22px;">
 						<%=resultSet.getInt("count(*)") %>
 						</div>
 					</div>
 					<div style="font-size:22px;color:#243569;">
 						<strong>Produits</strong>
 					</div>
 				</div>
 			</div>
 		</div>
 	</div>
 	<%}
			
			} catch (Exception e) {
					e.printStackTrace();
					}
		  	
				try{ 
					con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd", "root", "");
					state=con.createStatement();
					
					String sql ="SELECT count(*) FROM utilisateurs WHERE Role='"+("fournisseur").toLowerCase()+"'";
					
					resultSet = state.executeQuery(sql);
					while(resultSet.next()){
				%>
 	<div class="col-sm-3 rounded animated fadeInRightBig" style="margin-right:10px;text-align: center;margin-bottom: 25px;margin-top: 10px;box-shadow: 0 0 4px rgba(0,0,0,.5);padding: 20px;background-color: white;">
 		<div class="row">
 			<div class="col-sm-4">
 				<i class="fa fa-users" ></i>
 			</div>
 			<div class="col-sm-7">
 				<div>
 					<div style="font-size:22px;">
 						<%=resultSet.getInt("count(*)") %>
 						</div>
 					<div style="font-size:22px;color:#243569;">
 						<strong>Fournisseurs</strong>
 					</div>
 				</div>
 			</div>
 		</div>
 	</div>
 	<%}
					} catch (Exception e) {
						e.printStackTrace();
						}
 	%>
 	<div class="col-sm-1">
 		
 	</div>
 </div>
</div>
			 
 
 <div class="container tableproduits_tableuser animated fadeInUpBig" id="tableproduits" >
	<h4 id="produits"  style="text-align: center;margin-top: 30px; font-style: initial;color: #9E241A;margin-bottom: 30px;">Produits en stock</h4>
			<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Chercher parmi les produits.." title="Type in a name" style="background-color: rgb(246, 249, 252);">
	
		<table id="prdtTable" class="table table-hover table-striped t table-bordered table-responsive-sm">
		  <thead>
		    <tr>
		      
		      <th scope="col">Produit</th>
		      
		      <th scope="col">Quantité</th>
		      <th scope="col">Catégorie</th>
		      <th scope="col">Prix/unité (DH)</th>
		      <th scope="col">Eliminier ?</th>
		     
		    </tr>
		  </thead>
		  <tbody id="ensemblelement">
		    <%
				try{ 
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd", "root", "");
				state=con.createStatement();
				String sql ="SELECT * FROM stock";
				
				resultSet = state.executeQuery(sql);
				while(resultSet.next()){
					int i=resultSet.getInt("id");
			%>
			<tr>

				
				<td><%=resultSet.getString("nom_produit") %></td>
				<td><%=resultSet.getInt("qte_stock") %></td>
				<td><%=resultSet.getString("categorie") %></td>
				<td><%=resultSet.getDouble("prix_unitaire") %></td>
				<td  style="text-align:center;" class="tdsupp"><%out.print("<button  type='button' class='btn btn-danger supprimer' id='"+i+"'>Supprimer</button>"); %></td>
				
			</tr>
		    <%}
		  
				con.close();
				
				} catch (Exception e) {
				e.printStackTrace();
				}
  	
			
			    %>
				
		  </tbody>
		</table>
			<div style="text-align:center;margin:25px;"><button data-toggle="modal" data-target="#ajoutDeProduit" id="ajout_produit" type="button" class="btn btn-info">Ajouter un produit</button></div>
		  
</div>

 <div class="container tableproduits_tableuser cacher animated fadeInUpBig" id="tablefourni" >
	<h4 id="fournisseurs"  style="text-align: center;margin-top: 30px; font-style: initial;color: #9E241A;margin-bottom: 30px;">Fournisseurs</h4>
			<input type="text" id="myInput3" onkeyup="myFunction3()" placeholder="Chercher parmi les fournisseurs.." title="Type in a name" style="background-color: rgb(246, 249, 252);">
	
		<table id="fourniTable" class="table table-hover table-striped t table-bordered table-responsive-sm">
		  <thead>
		    <tr>
		      
		      <th scope="col">Matricule</th>
		      <th scope="col">Nom</th>
		      
		      <th scope="col">Prénom</th>
		      <th scope="col">Email</th>
		     
		    </tr>
		  </thead>
		  <tbody id="ensemblelement">
		    <%
				try{ 
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd", "root", "");
				state=con.createStatement();
				String sql ="SELECT * FROM utilisateurs WHERE matricule!='admin' AND Role='fournisseur'";
				
				resultSet = state.executeQuery(sql);
				while(resultSet.next()){
					
			%>
			<tr>

				
				<td><%=resultSet.getString("Matricule") %></td>
				<td><%=resultSet.getString("nom") %></td>
				<td><%=resultSet.getString("prenom") %></td>
				<td><%=resultSet.getString("email") %></td>
				
				
			</tr>
		    <%}
		  
				con.close();
				
				} catch (Exception e) {
				e.printStackTrace();
				}
  	
			
			    %>
				
		  </tbody>
		</table>
			
</div>

<!-- The Modal -->
  <div class="modal fade" id="ajoutDeProduit" >
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h2 class="modal-title">Ajout de produit</h2>
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          
			  
			  <form action="ajoutprdtDetail.jsp" method="post" class="needs-validation" novalidate>
			     <div class="form-group">
			 
			      Numero du Produit: <input type="text" class="form-control" id="numprdt" placeholder="Ex: 123" name="id" required>
			      <div class="valid-feedback">Valid.</div>
			      <div class="invalid-feedback">Champ obligatoire.</div>
			    </div>
			    <div class="form-group">
				      
				      Nom du Produit: <input type="text" class="form-control" id="nomprdt" placeholder="Nom" name="nom" required>
				      <div class="valid-feedback">Valid.</div>
				      <div class="invalid-feedback">Champ obligatoire.</div>
		   		 </div>
		   		 
		   		 <div class="form-group">
				      
				      Catégorie: <input type="text" class="form-control" id="categorie" placeholder="Ex: art_de_atble" name="categorie" required>
				      <div class="valid-feedback">Valid.</div>
				      <div class="invalid-feedback">Champ obligatoire.</div>
		   		 </div>
		   		 <div class="row">
		   		 <div class="col-sm-6">
		   		 <div class="form-group">
				      
				      Quantité: <input type="text" class="form-control" id="qte" placeholder="Ex: 12" name="qte" required>
				      <div class="valid-feedback">Valid.</div>
				      <div class="invalid-feedback">Champ obligatoire.</div>
		   		 </div>
		   		 </div>
		   		 <div class="col-sm-6">
		   		  <div class="form-group">
				      
				      Prix Unitaire: <input type="text" class="form-control" id="prix" placeholder="Ex: 150" name="prix" required>
				      <div class="valid-feedback">Valid.</div>
				      <div class="invalid-feedback">Champ obligatoire.</div>
		   		 </div>
		   		 </div>
		   		 </div>
		   		 <div class="form-group">
				      
				      Description: <textarea class="form-control" id="description" placeholder="A propos du produit.." name="description" cols="40" rows="3" style="width:100%;"></textarea>
				      <div class="valid-feedback">Valid.</div>
				      <div class="invalid-feedback">Champ obligatoire.</div>
		   		 </div>
			     <button id="ajout_modal" type="submit" name="submit" class="btn btn-secondary"  style="background-color: rgba(79, 14, 20,0.8);color: white;border: 1px solid rgba(79, 14, 20,1);width: 100%;"><b>Ajouter</b></button>
			    
			</form>
			
        </div>
        
        
         	
       
        
      </div>
    </div>
  </div>


<div class="container tableproduits_tableuser cacher animated fadeInUpBig" id="tableusers" >
	<h4 id="produits"  style="text-align: center;margin-top: 30px; font-style: initial;color: #9E241A;margin-bottom: 30px;">Commandes</h4>
	<input type="text" id="myInput2" onkeyup="myFunction2()" placeholder="Chercher parmi les utilisateurs.." title="Type in a name" style="background-color: rgb(246, 249, 252);">
	
		<table id="userTable" class="table table-hover table-striped t table-bordered table-responsive-sm">
		  <thead>
		    <tr>
		      <th scope="col">Matricule</th>
		      <th scope="col">Nom</th>
		      
		      <th scope="col">Prénom</th>
		      <th scope="col">Email</th>
		      <th scope="col">Commande</th>
		      
		     
		    </tr>
		  </thead>
		  <tbody id="ensemblelement">
		    <%
				 
		    try{ 
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd", "root", "");
				state2=con.createStatement();
				String sql2 ="SELECT DISTINCT matricule,nom,prenom,email,numcli FROM utilisateurs, revue WHERE numcli=matricule";
				int i=0;
				resultSet2 = state2.executeQuery(sql2);
				while(resultSet2.next()){
					i=resultSet2.getInt("numcli");
			%>
			<tr>

		
		  	
				<td><%=resultSet2.getString("Matricule") %></td>
				<td><%=resultSet2.getString("nom") %></td>
				<td><%=resultSet2.getString("prenom") %></td>
				<td><%=resultSet2.getString("email") %></td>
				<td style="text-align:center;"><%out.print("<button data-toggle='modal' data-target='#datailcommande"+i+"' type='button' class='btn btn-primary commande' id='"+i+"'>Commande</button>"); %></td>
				
				
			</tr>
		    
				  	<% }
			
			
			} catch (Exception e) {
			e.printStackTrace();
			}
  	
			
			    %>
		  </tbody>
		</table>
		
		
</div>
<%
try{ 
	//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd", "root", "");
	state2=con.createStatement();
	String sql2 ="SELECT DISTINCT numcli,delais FROM revue";
	int j=0;
	resultSet2 = state2.executeQuery(sql2);
	while(resultSet2.next()){
		j=resultSet2.getInt("numcli");
%>
<!-- The Modal -->
				  <% out.print("<div class='modal fade' id='datailcommande"+j+"' style='display:none;'>");%> 
				    <div class="modal-dialog modal-dialog-centered">
				      <div class="modal-content">
				      
				        <!-- Modal Header -->
				        <div class="modal-header">
				          <h2 class="modal-title">Détails de la commande</h2>
				          <button type="button" class="close" data-dismiss="modal">×</button>
				        </div>
		        
				        <!-- Modal body -->
				        <div class="modal-body">
				         <%out.print("<h6 style='color:#EC6955;'><i class='fa fa-info-circle'></i>  Commandé pour: "+resultSet2.getDate("delais")+"</h6>"); %> 
							  
							  <table id="cmdtable" class="table table-hover table-striped t table-bordered table-responsive-sm">
									  <thead>
									    <tr>
									      <th scope="col">Nom du produit</th>
									      <th scope="col">Quantité</th>
									      
									      <th scope="col">Prix unitaire (DH)</th>
									      
									      
									     
									    </tr>
									  </thead>
									  <tbody id="detailcmd">
									    <%
											 
									    try{ 
									    	//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd", "root", "");
											state4=con.createStatement();
											String sql4 ="SELECT * FROM revue WHERE numcli="+j;
											
											resultSet4 = state4.executeQuery(sql4);
											while(resultSet4.next()){
												
										%>
										<tr>
							
											
											<td><%=resultSet4.getString("nomProduit") %></td>
											<td><%=resultSet4.getInt("QteProduit") %></td>
											<td><%=resultSet4.getString("PrixUnitaire") %></td>
											
											
											
											
										</tr>
									     <%}
								
										} catch (Exception e) {
										e.printStackTrace();
										}
							  	
										
										    %>
											
									  </tbody>
						</table>
							<%out.print("<button  id="+j+" type='button' class='btn btn-success servie' style='float:right;''>Servie</button>"); %>
				       
				        </div>
				        
				        
				         	
				       
				        
				      </div>
				    </div>
				  </div>
				  
				  	<!-- The Modal -->
<%}
								
		} catch (Exception e) {
	e.printStackTrace();
	}
							  	
										
					 %>
			
  <div>
  	<form class="myform cacher" action="supprimer_prdt.jsp" method="post">
  		<input  type="text" name="input_delete" id="input_delete"/>
  		<input  type="submit" name="button_delete" id="button_delete"/>
  	</form>	
  		
  	<form class="myform2 cacher" action="commande_servie.jsp" method="post">
  		<input  type="text" name="input_cmd_servie" id="input_cmd_servie"/>
  		<input  type="submit" name="button_cmd_servie" id="button_cmd_servie"/>
  	</form>	
  </div> 
  
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
  
 <script>
 $("#navusers").click(function(){
	 $(".tableproduits_tableuser").hide();
	 $("#tableusers").fadeIn();
 });
 $("#navprdt").click(function(){
	 $(".tableproduits_tableuser").hide();
	 $("#tableproduits").fadeIn();
 });
 
 $("#navfourni").click(function(){
	 $(".tableproduits_tableuser").hide();
	 $("#tablefourni").fadeIn();
 });
 
 function myFunction() {
	  var input, filter, table, tr, td, i, txtValue;
	  input = document.getElementById("myInput");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("prdtTable");
	  tr = table.getElementsByTagName("tr");
	  for (i = 0; i < tr.length; i++) {
	    td = tr[i].getElementsByTagName("td")[0];
	    if (td) {
	      txtValue = td.textContent || td.innerText;
	      if (txtValue.toUpperCase().indexOf(filter) > -1) {
	        tr[i].style.display = "";
	      } else {
	        tr[i].style.display = "none";
	      }
	    }       
	  }
	}
 
 function myFunction2() {
	  var input, filter, table, tr, td, i, txtValue;
	  input = document.getElementById("myInput2");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("userTable");
	  tr = table.getElementsByTagName("tr");
	  for (i = 0; i < tr.length; i++) {
	    td = tr[i].getElementsByTagName("td")[0];
	    if (td) {
	      txtValue = td.textContent || td.innerText;
	      if (txtValue.toUpperCase().indexOf(filter) > -1) {
	        tr[i].style.display = "";
	      } else {
	        tr[i].style.display = "none";
	      }
	    }       
	  }
	}
 
 function myFunction3() {
	  var input, filter, table, tr, td, i, txtValue;
	  input = document.getElementById("myInput3");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("fourniTable");
	  tr = table.getElementsByTagName("tr");
	  for (i = 0; i < tr.length; i++) {
	    td = tr[i].getElementsByTagName("td")[0];
	    if (td) {
	      txtValue = td.textContent || td.innerText;
	      if (txtValue.toUpperCase().indexOf(filter) > -1) {
	        tr[i].style.display = "";
	      } else {
	        tr[i].style.display = "none";
	      }
	    }       
	  }
	}
 
$("button").click(function(){
	 var id = $(this).attr('id');
	 var classe = $(this).attr('class');
	 
	if(classe === "btn btn-danger supprimer"){
		document.getElementById("input_delete").value=id;
		$('#button_delete').trigger('click');
	}
	else if(classe==="btn btn-success servie"){
		document.getElementById("input_cmd_servie").value=id;
		$('#button_cmd_servie').trigger('click');
	}
	
});

	
(function() {
	  'use strict';
	  window.addEventListener('load', function() {
	    // Get the forms we want to add validation styles to
	    var forms = document.getElementsByClassName('needs-validation');
	    // Loop over them and prevent submission
	    var validation = Array.prototype.filter.call(forms, function(form) {
	      form.addEventListener('submit', function(event) {
	        if (form.checkValidity() === false) {
	          event.preventDefault();
	          event.stopPropagation();
	        }
	        form.classList.add('was-validated');
	        
	      }, false);
	    });
	  }, false);
	})();	
 



//Add active class to the current button (highlight it)
var header = document.getElementById("navglob");
var btns = header.getElementsByClassName("nav-link");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function() {
  var current = document.getElementsByClassName("active");
  current[0].className = current[0].className.replace(" active", "");
  this.className += " active";
  });
}
 	</script>
</body>
</html>