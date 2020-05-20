<!-- ======================================================================
====================================================================== -->

<!-- *************Pour chaque ajout d'un nouveau produit vous devez continuer à partir du produit22,
et dans chaque catalogue, il est préfèrable de ne pas dépasser 9 produits :) **********************-->

<!-- ======================================================================
====================================================================== -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    
<!DOCTYPE html>
<html lang="en">
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
	  
	  


	<style>
		body{
	  		background-image: url('Images\\background.png');
	  		background-size: cover;
	  		font-family: "Times New Roman", Georgia, Serif;
	  	}
	  	#imgEMILOC{
	  		cursor: pointer;
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
			 padding: 10px;
			}
			.mapp{
				width: 700px;
				height: 250px;
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
			  margin-left: 15px;
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
		  height: 200px;
		}
	}

	@media screen and (min-width: 768px) and (max-width: 1000px){
		div#slider figure img {
		  width: 20%;
		  float: left;
		  height: 350px;
		}
	}

	</style>



</head>
<body>


<header style="position: fixed;top:0;width:100%;z-index: 11;box-shadow:  0 0 2px rgba(255, 193, 7,0.3);">
	
 <nav class="navbar navbar-expand-lg navbar " style="background-color: rgba(255,255,255,0.98);">
        <img src="Images\logo.png"  style="width:20%" id="imgEMILOC">
		
        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbar">
            <div style="color: #6e393e;"><span class="fa fa-navicon" style="font-size: 2em;"></span></div>

        </button>
		
        <div class="collapse navbar-collapse" id="navbar">
            <div class="navbar-nav" >
            	<hr>
                <a href="main.jsp" class="nav-item nav-link " id="navaccueil" style="color: #6e393e;">Catalogue</a>
                
                <a  href="#partenaires" class="nav-item nav-link" id="navpartenaires" style="color: #6e393e;">Partenaires</a>

                <a  href="#contacter" class="nav-item nav-link " id="navcontact" style="color: #6e393e;">Contact</a>
                
            </div>
           
          
           <div class="btn-group dropleft" style="float:right;margin-left:35%;">
          	<button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"  aria-expanded="false" style="background-color:white;"><i class="fa fa-user " id="usericon"  style="font-size: 1.8em;color: brown; border: 1px solid brown;
 			 border-radius: 50%;padding: 10px;padding-right: 13px;padding-left: 13px;background-color:white;"></i></button>

			  <div class="dropdown-menu" style="padding: 10px;text-align: center;">
			  	<div>
			  	<p>John Smith</p>
			  	<p>john@gmail.com</p>
			  	</div>
			  	<hr>
			   
			    <a  href="index.jsp" style='color:#F49181;'><i class="fa fa-lock" style="color: black;"></i><b>  D�connexion</b></a>
			  
			  </div>
          	
			  </div>
        
            
            
        </div>
        
    </nav>
			
	
</header>



 <div class="produits">
     
	 


<!-- Table d'achats -->
<div class="container tableAchats ">
	<h4  style="text-align: center;margin-top: 30px; font-style: initial;color: #9E241A;margin-bottom: 30px;">Table de vos achats</h4>

	
		<table id="table" class="table table-hover table-striped t table-bordered table-responsive-sm">
		  <thead>
		    <tr>
		      
		      <th scope="col">Produit</th>
		      
		      <th scope="col">Quantit�</th>
		      <th scope="col">Prix/unit�</th>
		      <th scope="col">Eliminer</th>
		    </tr>
		  </thead>
		  <tbody id="ensembleachats">
		    
		    
		  </tbody>
		</table>
		
		  <div style="text-align: center;" id="total"></div>
	<!-- <a href="gestionDeStock.php" id="confirmer"> --><button type="submit" name="submit" class="btn btn-primary" style="text-align: center;max-width: 100%;float: right; background-color: rgba(255, 193, 7,1);padding-right: 30px;padding-left: 30px;margin-bottom: 20px;margin-top: 30px;border: 1px solid rgba(255, 193, 7,1);margin-left: 10px;" id="Confirmer_Cmd" ><b>Confirmer</b></button><!-- </a> -->
	
	
	<button class="btn btn-primary" style="text-align: center;max-width: 100%;float: right; background-color: brown;padding-right: 30px;padding-left: 30px;margin-bottom: 20px;margin-top: 30px;border: 1px solid brown;" id="totalbutton"><b>Total</b></button>
	  

</div>









	<!-- pagination -->
<hr>
<div class="pagination justify-content-center" >
  <div id="precedent">&laquo;</div>
  <div class="page active" id="page1">1</div>
  <div class="page" id="page2" >2</div>
  <div class="page" id="page3">3</div>
  <div id="suivant">&raquo;</div>
</div>



<!-- /pagination -->
    </div> 

    <!-- Acceuil -->
    
    	<!-- <div class="container acceuil cacher">
    		<p>
    			Ce site vous offre la possibilité de voir tout nos produits avec des offres interessantes afin d'avoir une idée claire de ce que vous voulez avant même de vouloir acheter.</p>
    			<p>De nos jours les site catalogue sont très répandus à cause de leur importance dans la facilitation d'experer et même de choisir à distance.
    		</p>
    	</div> -->
    

<!-- /Acceuil -->   	

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
 				<a href="mailto:abdokardidi44@gmail.com" style="text-decoration: none;color: black;font-size: 15px;">cataloguekd@gmail.com</a>
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



  <!-- Contact us -->
  <h4  style="color: white; padding: 30px;text-align: center;font-style: initial;">CONTACTEZ-NOUS</h4>
  <div class="container content "  style="padding:25px;">
  <form action="mailto:abdokardidi44@gmail.com">
    <div class="row">
      <div class="col-25">
        <label for="fname">Pr�nom</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="firstname" placeholder="Votre pr�nom..">
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
</div> 

<!-- /Contact us -->

<!-- Map -->
  <div class="map-responsive map" style="margin-top: 40px;">
    <iframe class="mapp" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d386950.6511603643!2d-73.70231446529533!3d40.738882125234106!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNueva+York!5e0!3m2!1ses-419!2sus!4v1445032011908" width="1000" height="300"  frameborder="0" allowfullscreen></iframe>
</div>
<!-- /Map -->

  <!-- Copyright -->
  <div  class="footer-copyright text-center py-3 footer-cpr">� 2019 Copyright <a class="catalogue" href="#imgKD" style="text-decoration: none;color: blue;"> EMILOC</a>

  </div>
 
  <!-- Copyright -->

</footer>
<!-- Footer -->

<script>
/* $("body").on("click","#usericon",function(){
	Swal.fire({
			  title: 'John Smith',
			  text: 'john@gmail.com',
			  footer:"<button class='btn btn-primary' style='background-color:rgba(255, 193, 7,1);padding:5px;'><a href='index.html' style='background-color:rgba(255, 193, 7,1);text-decoration:none;color:white;'><b>Déconnexion</b></a></button>",
			  showConfirmButton:false,
			  
			  
			  animation:true
			 
			  
			 
	});

}); */
/*FIN Déconnexion*/
 
 $("#catalogue1").fadeIn();
	$("#catalogue2").fadeIn();
	$("#catalogue3").fadeIn();
	$(".pagination").hide();
	
	$("body").on("click","#droptous",function(){
		$(".catalogue").fadeIn();
		$(".pagination").hide();
		
	});

	$("body").on("click","#dropcatalogue1",function(){
		$(".catalogue").hide();
		$("#catalogue1").fadeIn();
		$(".pagination").fadeIn();
	});

	$("body").on("click","#dropcatalogue2",function(){
		$(".catalogue").hide();
		$("#catalogue1").fadeIn();
		$(".pagination").fadeIn();
	});

	$("body").on("click","#dropcatalogue2",function(){
		$(".catalogue").hide();
		$("#catalogue1").fadeIn();
		$(".pagination").fadeIn();
	});
</script>

</body>
</html>