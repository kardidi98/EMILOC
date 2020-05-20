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
<html lan="en">
<head>
	<title>EMILOC: Accueil</title>
	<link rel="shortcut icon" type="text/css" href="Images\KD.ico">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<!-- animated.css -->
<link rel="stylesheet" href="assets/css/animated.css">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<!-- ALERT -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
	<script src="sweetalert2.min.js"></script>
	<link rel="stylesheet" href="sweetalert2.min.css">
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


	<script src="jquery-3.4.1.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		  <!-- Bootstrap core CSS -->
	  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

	  <!-- Custom styles for this template -->
	  <link href="assets/css/style_choix.css" rel="stylesheet">
	  
	  	

	

	  <link href="vendor\jquery-ui-1.12.1\jquery-ui.min.css">
	  <link rel="stylesheet" href="vendor\jquery-ui-1.12.1\jquery-ui.theme.css">

	  <link rel="stylesheet" type="text/css" href="vendor/select2/dist/css/select2.min.css">

	  <!-- ICON  font-awesome -->
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	  <link rel="shortcut icon" href="Images/favicon.png">
	  <style >
	  	body{
	  		background-image: url('Images\\background.png');
	  		background-size: cover;
	  		font-style: italic;
	  		font-family: "Times New Roman", Georgia, Serif;
	  	}
	  	#imgEMILOC:hover{
	  		cursor: pointer;
	  	}
	  	.help:hover{
	  		cursor:pointer;
	  	}
	  	
	  	@media only screen and (max-width: 1300px){
			

			.mapp{
				width: 800px;
				height: 300px;
			}
			
		}
	

	  	
		
	  </style>
</head>
<body>

<%
 

 try {
	 Class.forName("com.mysql.jdbc.Driver");
	 } catch (ClassNotFoundException e) {
	 e.printStackTrace();
	 }

 	
	 String create = "CREATE TABLE IF NOT EXISTS usersession(matricule varchar(255) primary key,"+"Role varchar(255),"+
			"nom varchar(255)," 
			+"prenom varchar(255),"
			+"email varchar(255),"
			+"mdp varchar(255))ENGINE=InnoDB";

     int result = 0;

   

     try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd", "root", "");

         
         PreparedStatement preparedStatement = connection.prepareStatement(create)) {


         System.out.println(preparedStatement);
       
         result = preparedStatement.executeUpdate();  
     } catch (Exception e) {
			e.printStackTrace();
			}
  
 %>

<div class="content">
<div style="background-image:url('Images\\Accueil.png');background-repeat:no-repeat; background-size:100% 100%;background-position:center bottom;">
	<header>
	
		<dir class="w3-container" style="box-shadow: 0 0 10px rgba(0,0,0,0.4);margin-top: -1px;z-index: 4;position: fixed;top: 0;width: 100%;background-color: rgba(255,255,255,0.99);">

		<img src="Images\logo.png"  style="width:20%;" id="imgEMILOC" >
		<div id="conn_insc" style="float: right;margin-top: 40px;color: gray; text-decoration: none;font-size:17px;" >
			<span  class="help"  style="margin-right: 10px;"><i class="fa fa-info-circle"></i>   Guide</span>
			<span  class="inscrire" data-toggle="modal" data-target="#inscription" style="margin-right: 10px;">S'inscrire</span>
			<span class="connexion" data-toggle="modal" data-target="#connexion">Se connecter</span>
		</div >
		<h4 id="conn_reussie" style="float: right;margin-top: 25px;color: gray; text-decoration: none;display: none;" >
			
		</h4 >
	</dir>
	</header>
		

	
<!-- <div style="margin-top:90px;"><img src="Images\Accueil.png" class="image-responsive"  ></div> -->
 

<div  style="padding: 40px;padding-top:150px;padding-bottom:200px;font-style:normal;">
	<h1 class="animated fadeInRightBig" style="font-size: 70px;color: #FFD23A;">
		A Propos de nous
	</h1>
	<br>
	<div  >
		<p class="animated fadeInLeftBig" style="font-size: 25px;margin-right:60%;padding:10px;color:white;">
		<span>Bienvenue à votre organisateur d'événement, fait par les emistes et pour les emistes, qui s'engage à vous offrir un service haut de gamme.
		Pour votre soutenance, votre gala ou pour tout autre événement,</span><span><b style="color: rgba(246, 135, 54,1);"> EMILOC</b></span><span>  vous suggére un catalogue unique et sur mesure de différentes catégories.Faites-nous part de vos envies, nous vous concocterons le menu idéal pour tout événement.</span>
	</p>
	</div>
	
</div>
</div>
	
<center><img src="Images\p.png" style="margin-top: 40px;"></center>
	

<div class="container rounded" style="background-color: white;padding: 30px;box-shadow: 0 0 10px rgba(0,0,0,0.4);margin-top: 70px;">
	<div class="w3-row-padding w3-section">

  <div class="w3-half event rounded">
    <div class="w3-card" style="cursor: pointer;">
      <img src="Images\gala.jpg" alt="gala" style="width:100%;" class="img_ev img_ev1 rounded">
      <div class="w3-container rounded" style="background-color: white;height: 180px;">
        <p style="margin-top: 20px;">Soirée 100% Réussite avec une ambiance de ouf !</p>
        <p>Voulez-vous organiser une soirée Gala réussite?<br/>Cliquez ici pour réserver tout le matériel nécessaire sans avoir à se déplacer.</p>
      
      </div>
    </div>
  </div>

  <div class="w3-half event rounded">
    <div class="w3-card" style="cursor: pointer;">
      <img src="Images\soutenance.jpg" alt="soutenance" style="width:100%;" class="img_ev img_ev2 rounded">
      <div class="w3-container rounded" style="background-color: white;height: 180px;">
        <p style="margin-top: 20px;">Evènements Emiste à la portée de tous !</p>
        <p>Voulez-vous organiser un évènement au sein de l'Emi? <br/>Soyez un Emiste intelligent et utiliser nos options divers pour un évènement réussi.</p>
        

      </div>
    </div>
  </div>

</div>	
</div>

 
<hr>

<!-- The Modal -->
  <div class="modal fade" id="connexion" >
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h2 class="modal-title">Connexion</h2>
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          
			  
			  <form action="<%=request.getContextPath()%>/login" method="post" class="needs-validation" novalidate>
			     <div class="form-group">
			 
			      Matricule: <input type="text" class="form-control" id="matricule" placeholder="matricule" name="matricule" maxlength="7" minlenght="7" required>
			      <div class="valid-feedback">Valid.</div>
			      <div class="invalid-feedback">Champ obligatoire.</div>
			    </div>
			    <div class="form-group">
				      
				      Mot de passe: <input type="password" class="form-control" id="pswd" placeholder="************" name="password" required>
				      <div class="valid-feedback">Valid.</div>
				      <div class="invalid-feedback">Champ obligatoire.</div>
		   		 </div>
			     <button id="conn_modal" type="submit" name="submit" class="btn btn-secondary"  style="background-color:#FFD23A;color: black;border: 1px solid #FFD23A;width: 100%;"><b>Se connecter</b></button>
			    
			</form>
			
        </div>
        
        
         	
       
        
      </div>
    </div>
  </div>


 <!-- The Modal -->
  <div class="modal fade cacher" id="inscription">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h2 class="modal-title">Inscription</h2>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          <form action="userdetail.jsp" method="post" class="needs-validation" novalidate>
          <div class="row">
		    	<div class="col-sm-12">
				    <div class="form-group">
				      
				      Matricule: <input type="text" class="form-control" id="matricule" placeholder="matricule" name="matricule" maxlength="7" minlenght="7" required>
				      <div class="valid-feedback">Valid.</div>
				      <div class="invalid-feedback">Champ obligatoire.</div>
				    </div>
			</div>
		    	<!-- <div class="col-sm-6">
		    	<div class="form-group">
				    
				      Rôle: <input type="text" class="form-control" id="role" placeholder="Ex: Utilisateur" name="role" required>
				      <div class="valid-feedback">Valid.</div>
				      <div class="invalid-feedback">Champ obligatoire.</div>
		   		 </div>
		   		</div> -->
		   	</div>
		    <div class="row">
		    	<div class="col-sm-6">
		    		<div class="form-group">
				     
				      Nom: <input type="text" class="form-control" id="name" placeholder="Nom" name="nom" required>
				      <div class="valid-feedback">Valid.</div>
				      <div class="invalid-feedback">Champ obligatoire.</div>
		    </div>
		    	</div>
		    	<div class="col-sm-6">
		    	<div class="form-group">
				    
				      Prénom: <input type="text" class="form-control" id="prenom" placeholder="Prénom" name="prenom" required>
				      <div class="valid-feedback">Valid.</div>
				      <div class="invalid-feedback">Champ obligatoire.</div>
		   		 </div>
		    	</div>
		    </div>
		    	
		    	<div class="form-group">
				     
				      E-mail: <input type="email" class="form-control" id="mail" placeholder="Ex: Nassima_Loubna@gmail.com" name="email" required>
				      <div class="valid-feedback">Valid.</div>
				      <div class="invalid-feedback">Champ obligatoire.</div>
		   		 </div>
		    	<div class="form-group">
				      
				     Mot de passe: <input type="password" class="form-control" id="pswd" placeholder="***********" name="password" required>
				      <div class="valid-feedback">Valid.</div>
				      <div class="invalid-feedback">Champ obligatoire.</div>
		   		 </div>
		    
		    <hr>
		   <button id="insc_modal" type="submit" name="submit" class="btn btn-secondary"  style="background-color: #FFD23A;color: black;;border: 1px solid #FFD23A;width: 100%;"><b>S'inscrire</b></button>
		    
		    
		    
		  </form>
        </div>
        
       
        
      </div>
    </div>
  </div>
</div>
	


<div class="container-fluid" id="contacter">
	<div class="row justify-content-center" >
 	<div class="col-sm-1">
 		
 	</div>
 	<div class="col-sm-4 adresse rounded" style="text-align: center;margin-bottom: 25px;margin-top: 10px;box-shadow: 0 0 10px rgba(0,0,0,.4);padding: 20px;background-color: white;">
 		<p></p>
 		<p>
 			<i class="fa fa-map" style="font-size: 2.5em;color: rgba(79, 14, 20,1);border-bottom: 3px solid rgba(158, 36, 26);padding-bottom : 10px;border-radius: 5px;"></i>
 		</p>
 			<h4>Adresse</h4>
 			<br>
 		<div>
 			
 			<div style="text-decoration: none;color: black;font-size: 15px;">
 				10005 RABAT TOUR HASSAN BP 4490, RABAT
 			</div>
 			<div style="text-decoration: none;color: black;font-size: 15px;">
 				<b>T : </b>06 52 74 98 74
 			</div>
 		</div>
 	</div>
 	<div class="col-sm-1">
 		
 	</div>
 	<div class="col-sm-4 rounded" style="text-align: center;margin-bottom: 25px;margin-top: 10px;box-shadow: 0 0 10px rgba(0,0,0,.4);padding: 20px;background-color: white;">
 		<p></p>
 		<p>
 			<i class="fa fa-envelope" style="font-size: 2.5em;color: rgba(79, 14, 20,1);border-bottom: 3px solid rgba(158, 36, 26);padding-bottom : 10px;border-radius: 4px;"></i>
 		</p>
 			<h4>E-mail</h4>
 			<br>
 		<div>
 			
 			<div>
 				<a href="mailto:EMILOC2020@gmail.com" style="text-decoration: none;color: black;font-size: 20px;">EMILOC2020@gmail.com</a>
 			</div>
 			<p></p>
 			<div class="reseaux_sociaux justify-content-center">
 				<span><a href="#"><i class="fa fa-facebook" style="font-size: 1.5em;color: #F38270;"></i></a></span><span><a href="#"><i class="fa fa-instagram" style="font-size: 1.5em;color: #F38270;margin-left: 25px;"></i></a></span><span><a href="#"><i class="fa fa-linkedin" style="font-size: 1.5em;color: #F38270;margin-left: 25px;"></i></a></span>
 			</div>
 		</div>
 	</div>
 	<div class="col-sm-1">
 		
 	</div>
 </div>
</div>

<!-- Contact us -->

  

  <!-- Footer -->
<footer class=" font-small  pt-3" >
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

 
<!-- /Contact us -->

<!-- Map -->
  <div class="map-responsive map" style="margin-top: 40px;">
    <iframe class="mapp" src="https://maps.google.com/maps?q=Ecole%20Mohammadia%20d&t=&z=13&ie=UTF8&iwloc=&output=embed" width="1000" height="300"  frameborder="0" allowfullscreen></iframe>
</div>
<!-- /Map -->

  <!-- Copyright -->
  <div  class="footer-copyright text-center py-4 footer-cpr">© 2020 Copyright <a class="catalogue" href="#" style="text-decoration: none;color: blue;"> EMILOC</a>

  </div>
  
  <!-- Copyright -->

</footer>
<!-- Footer -->

<script type="text/javascript" src="assets/js/javascript2.js"></script>

<script >
	

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

$(".help").click(function(){
	Swal.mixin({
		  
		  confirmButtonText: 'Suivant &rarr;',
		  showCancelButton: true,
		  progressSteps: ['1', '2', '3','4','5']
		}).queue([
		  {
		    title: 'Il faut d\'abord s\'authentifier',
		    text: 'Inscription ou Connexion.',
		    imageUrl: 'Images/connexion.png',
			  imageWidth: 400,
			  imageHeight: 200,
			  imageAlt: 'inscription'
		  },
		  {title:'Puis choisir un évènement',
			  text: 'Appuyer sur le bouton \'Allez!\'.',
			  imageUrl: 'Images/choix_ev.png',
			  imageWidth: 400,
			  imageHeight: 200,
			  imageAlt: 'choix_ev'  
		  },
		  {title:'Ensuite, consulter eventuellement le catalogue',
			  text: 'Choisir les produits voulus.',
			  imageUrl: 'Images/catalogue.png',
			  imageWidth: 400,
			  imageHeight: 200,
			  imageAlt: 'catalog'  
		  },
		  {title:'Et enfin consulter votre boîte émail',
			  text: 'Récupérer et Valider votre facture et ramener la avec vous',
			  imageUrl: 'Images/gmail.png',
			  imageWidth: 400,
			  imageHeight: 200,
			  imageAlt: 'gmail'  
		  },
		  {title:'Pour nous contacter et nous localiser',
			  text: 'Poser autant de questions que vous voulez pour plus d\'informations',
			  imageUrl: 'Images/contacter.png',
			  imageWidth: 400,
			  imageHeight: 200,
			  imageAlt: 'contact'  
		  }
		]);
});

document.getElementById("role").value="Utilisateur";


</script>
</body>
</html>