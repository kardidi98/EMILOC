var compteur=0;
$(function(){
	$("body").on("click","#login",function(){
		compteur++;
		if(($("#username").val()=='')&&(compteur>=1)){
			
			$("#login").attr("href", "#");
			Swal.fire({
			  title: 'Attention',
			  text: 'Tous les champs doivent être remplis.',
			  type: 'error',
			  confirmButtonColor: "#6E393E",
			  animation: true
			 
			});
		}
		else if(($("#email").val()=='')&&(compteur>=1)){
			$("#login").attr("href", "#");
			Swal.fire({
			  title: 'Attention',
			  text: 'Tous les champs doivent être remplis.',
			  type: 'error',
			  confirmButtonColor: "#6E393E",
			  animation: true
			  
			});
		}
		else if(($("#password").val()=='')&&(compteur>=1)){
			$("#login").attr("href", "#");
			Swal.fire({
			  title: 'Attention',
			  text: 'Tous les champs doivent être remplis.',
			  type: 'error',
			  confirmButtonColor: "#6E393E",
			  animation: true
			  
			});
		}
		/*else if(($("#username").val()=='')&&(compteur>1)){

			$("#login").attr("href", "#");
			
		}
		else if(($("#email").val()=='')&&(compteur>1)){

			$("#login").attr("href", "#");
			
		}
		else if(($("#password").val()=='')&&(compteur>1)){
			$("#login").attr("href", "#");
			
		}*/

		else if(($("#username").val()!='')&&($("#email").val()!='')&&($("#password").val()!='')){
			
			 const Toast = Swal.mixin({
				  toast: true,
				  position: 'top',
				  showConfirmButton: false,
				  timer: 5000,
				  
				});

				Toast.fire({
				  type: 'success',
				  title: 'Connexion réussie',
					
				  footer:'<a href="index.html" id="login"><button type="button" class="btn btn-primary" style="background-color:#6E393E;border: 1px solid #6E393E;"><b>OK </b><i class="fa fa-arrow-right"></i></button></a>'
		     
				});
			

			     /*verif_email($("#email").val());*/
			/*$("#login").attr("href", "index.html");*/
		}


	});

	/*function verif_email(saisie){
		var pattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+*(\.\w{2,3})+$/;
		if(pattern.test(saisie)){
			window.alert('yes');
		}
		else{
			window.alert('no');
		}
	}*/



	

});
