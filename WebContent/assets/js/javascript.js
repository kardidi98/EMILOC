var compteur=1;
var compteurPourAchats=0;
var total=0;
var compteur_total=0;
var nbre_elt_table=0;
var nombre_prdt_vendus=0;
var nbre_elt_table2=0;var nbre_elt_table3=0;var nbre_elt_table4=0;var nbre_elt_table5=0;var nbre_elt_table6=0;var nbre_elt_table7=0;
var nbre_elt_table8=0;var nbre_elt_table9=0;var nbre_elt_table10=0;var nbre_elt_table11=0;var nbre_elt_table12=0;var nbre_elt_table13=0;
var nbre_elt_table14=0;var nbre_elt_table15=0;var nbre_elt_table16=0;var nbre_elt_table17=0;var nbre_elt_table18=0;var nbre_elt_table19=0;
var nbre_elt_table20=0;var nbre_elt_table21=0;
$(function(){

$(".achat1").click(function(){
  
  var exist=0;
  
	compteurPourAchats++;
		$(".tableAchats").fadeIn();

		if(compteurPourAchats==1){
			
			Swal.fire({
			  title: 'Salut!',
			  text: 'Vous pouvez consulter la table de vos achats ci-dessus.',
			  type: 'info',
			  confirmButtonColor: "rgba(255, 193, 7,1)",
			 
			  animation:true
			 
			  
			 
		});
		}
		if(nbre_elt_table>0){
			
				if((document.getElementById('nomprdt_tab1').innerHTML==document.getElementById('nomprdt1').innerHTML)&&($("#quantite1").val()=='')){
						total=total-Number(document.getElementById("qte1").innerHTML)*parseFloat(document.getElementById("prixprdt1").innerHTML);
						exist=1;
						
						document.getElementById('qte1').innerHTML=''+(parseInt(document.getElementById("qte1").innerHTML)+1);
						
					}

					if((document.getElementById('nomprdt_tab1').innerHTML==document.getElementById('nomprdt1').innerHTML)&&($("#quantite1").val()!='')){
						total=total-Number(document.getElementById("qte1").innerHTML)*parseFloat(document.getElementById("prixprdt1").innerHTML);
						exist=1;
						
						document.getElementById('qte1').innerHTML=''+(parseInt(document.getElementById("qte1").innerHTML)+Number($("#quantite1").val()));
						
					}

			
		}
		
		else{
			if(exist==0){
				if($("#quantite1").val()==''){
					nbre_elt_table++;
					
					$("#ensembleachats").append('<tr id="detailcmd1"><td><p><strong id="nomprdt_tab1">'+document.getElementById("nomprdt1").innerHTML+'</strong></p></td><td><p id="qte1" name="qte1">1</p></td><td><p>'+document.getElementById("prixprdt1").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat1"><b>X</b> Supprimer</p></td> </tr>');
					nombre_prdt_vendus++;
				}

				else{
					nbre_elt_table++;
					$("#ensembleachats").append('<tr id="detailcmd1"><td><p><strong  id="nomprdt_tab1">'+document.getElementById("nomprdt1").innerHTML+'</strong></p></td><td><p id="qte1" name="qte1">'+''+$("#quantite1").val()+''+'</p></td><td><p>'+document.getElementById("prixprdt1").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat1"><b>X</b> Supprimer</p></td> </tr>');
					nombre_prdt_vendus++;
				}
			}
		}
		
			

		total=total+Number(document.getElementById("qte1").innerHTML)*parseFloat(document.getElementById("prixprdt1").innerHTML);
		if(compteur_total>=1){
			$("#montant_total").remove();

			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}
		document.getElementById("quantite1").value='';
});

$(".achat2").click(function(){

	var exist=0;
  
	compteurPourAchats++;
		$(".tableAchats").fadeIn();

		if(compteurPourAchats==1){
			Swal.fire({
			  title: 'Salut!',
			  text: 'Vous pouvez consulter la table de vos achats ci-dessus.',
			  type: 'info',
			  confirmButtonColor: "rgba(255, 193, 7,1)",
			 
			  animation:true
			 
			  
			 
		});
		}
		if(nbre_elt_table2>0){
			

				if((document.getElementById('nomprdt_tab2').innerHTML==document.getElementById('nomprdt2').innerHTML)&&($("#quantite2").val()=='')){
						total=total-Number(document.getElementById("qte2").innerHTML)*parseFloat(document.getElementById("prixprdt2").innerHTML);
						exist=1;
						
						document.getElementById('qte2').innerHTML=''+(parseInt(document.getElementById("qte2").innerHTML)+1);
						
					}
					if((document.getElementById('nomprdt_tab2').innerHTML==document.getElementById('nomprdt2').innerHTML)&&($("#quantite2").val()!='')){
						total=total-Number(document.getElementById("qte2").innerHTML)*parseFloat(document.getElementById("prixprdt2").innerHTML);
						exist=1;
						
						document.getElementById('qte2').innerHTML=''+(parseInt(document.getElementById("qte2").innerHTML)+Number($("#quantite2").val()));
						
					}
			
		}
		
		else{
			if(exist==0){
				if($("#quantite2").val()==''){
					$("#ensembleachats").append('<tr id="detailcmd2"><td><p><strong id="nomprdt_tab2">'+document.getElementById("nomprdt2").innerHTML+'</strong></p></td><td><p id="qte2" name="qte2">1</p></td><td><p>'+document.getElementById("prixprdt2").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat2"><b>X</b> Supprimer</p></td> </tr>');
					nbre_elt_table2++;
				}
				else{
					$("#ensembleachats").append('<tr id="detailcmd2"><td><p><strong id="nomprdt_tab2">'+document.getElementById("nomprdt2").innerHTML+'</strong></p></td><td><p id="qte2" name="qte2">'+''+$("#quantite2").val()+''+'</p></td><td><p>'+document.getElementById("prixprdt2").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat2"><b>X</b> Supprimer</p></td> </tr>');
					nbre_elt_table2++;
				}
			}
		}
		
		
		total=total+Number(document.getElementById("qte2").innerHTML)*parseFloat(document.getElementById("prixprdt2").innerHTML);
		if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}
		document.getElementById("quantite2").value='';
});

$(".achat3").click(function(){
	var exist=0;
  
	compteurPourAchats++;
		$(".tableAchats").fadeIn();

		if(compteurPourAchats==1){
			Swal.fire({
			  title: 'Salut!',
			  text: 'Vous pouvez consulter la table de vos achats ci-dessus.',
			  type: 'info',
			  confirmButtonColor: "rgba(255, 193, 7,1)",
			 
			  animation:true
			 
			  
			 
		});
		}
		if(nbre_elt_table3>0){
			

				if((document.getElementById('nomprdt_tab3').innerHTML==document.getElementById('nomprdt3').innerHTML)&&($("#quantite3").val()=='')){
						total=total-Number(document.getElementById("qte3").innerHTML)*parseFloat(document.getElementById("prixprdt3").innerHTML);
						exist=1;
						
						document.getElementById('qte3').innerHTML=''+(parseInt(document.getElementById("qte3").innerHTML)+1);
						
					}
					if((document.getElementById('nomprdt_tab3').innerHTML==document.getElementById('nomprdt3').innerHTML)&&($("#quantite3").val()!='')){
						total=total-Number(document.getElementById("qte3").innerHTML)*parseFloat(document.getElementById("prixprdt3").innerHTML);
						exist=1;
						
						document.getElementById('qte3').innerHTML=''+(parseInt(document.getElementById("qte3").innerHTML)+Number($("#quantite3").val()));
						
					}
			
		}
		
		else{
			if(exist==0){
				if($("#quantite3").val()==''){
					$("#ensembleachats").append('<tr id="detailcmd3"><td><p><strong id="nomprdt_tab3">'+document.getElementById("nomprdt3").innerHTML+'</strong></p></td><td><p id="qte3">1</p></td><td><p>'+document.getElementById("prixprdt3").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat3"><b>X</b> Supprimer</p></td> </tr>');
					nbre_elt_table3++;
				}
				else{
				nbre_elt_table3++;
				$("#ensembleachats").append('<tr id="detailcmd3"><td><p><strong id="nomprdt_tab3">'+document.getElementById("nomprdt3").innerHTML+'</strong></p></td><td><p id="qte3">'+''+$("#quantite3").val()+''+'</p></td><td><p>'+document.getElementById("prixprdt3").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat3"><b>X</b> Supprimer</p></td> </tr>');
				}
			}
		}
		
		total=total+Number(document.getElementById("qte3").innerHTML)*parseFloat(document.getElementById("prixprdt3").innerHTML);
		if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}
		document.getElementById("quantite3").value='';

});
$(".achat4").click(function(){
	var exist=0;
  
	compteurPourAchats++;
		$(".tableAchats").fadeIn();

		if(compteurPourAchats==1){
			Swal.fire({
			  title: 'Salut!',
			  text: 'Vous pouvez consulter la table de vos achats ci-dessus.',
			  type: 'info',
			  confirmButtonColor: "rgba(255, 193, 7,1)",
			 
			  animation:true
			 
			  
			 
		});
		}
		if(nbre_elt_table4>0){
			

				if((document.getElementById('nomprdt_tab4').innerHTML==document.getElementById('nomprdt4').innerHTML)&&($("#quantite4").val()=='')){
						total=total-Number(document.getElementById("qte4").innerHTML)*parseFloat(document.getElementById("prixprdt4").innerHTML);
						exist=1;
						
						document.getElementById('qte4').innerHTML=''+(parseInt(document.getElementById("qte4").innerHTML)+1);
						
					}
					if((document.getElementById('nomprdt_tab4').innerHTML==document.getElementById('nomprdt4').innerHTML)&&($("#quantite4").val()!='')){
						total=total-Number(document.getElementById("qte4").innerHTML)*parseFloat(document.getElementById("prixprdt4").innerHTML);
						exist=1;
						
						document.getElementById('qte4').innerHTML=''+(parseInt(document.getElementById("qte4").innerHTML)+Number($("#quantite4").val()));
						
					}
			
		}
		
		else{
			if(exist==0){
				if($("#quantite4").val()==''){
					$("#ensembleachats").append('<tr id="detailcmd4"><td><p><strong id="nomprdt_tab4">'+document.getElementById("nomprdt4").innerHTML+'</strong></p></td><td><p id="qte4">1</p></td><td><p>'+document.getElementById("prixprdt4").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat4"><b>X</b> Supprimer</p></td> </tr>');
				nbre_elt_table4++;
				}
				else{
				nbre_elt_table4++;
				$("#ensembleachats").append('<tr id="detailcmd4"><td><p><strong id="nomprdt_tab4">'+document.getElementById("nomprdt4").innerHTML+'</strong></p></td><td><p id="qte4">'+''+$("#quantite4").val()+''+'</p></td><td><p>'+document.getElementById("prixprdt4").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat4"><b>X</b> Supprimer</p></td> </tr>');
				}
			}
		}
		
		total=total+Number(document.getElementById("qte4").innerHTML)*parseFloat(document.getElementById("prixprdt4").innerHTML);
		if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}
		document.getElementById("quantite4").value='';
});

$(".achat5").click(function(){
	var exist=0;
  
	compteurPourAchats++;
		$(".tableAchats").fadeIn();

		if(compteurPourAchats==1){
			Swal.fire({
			  title: 'Salut!',
			  text: 'Vous pouvez consulter la table de vos achats ci-dessus.',
			  type: 'info',
			  confirmButtonColor: "rgba(255, 193, 7,1)",
			 
			  animation:true
			 
			  
			 
		});
		}
		if(nbre_elt_table5>0){
			

				if((document.getElementById('nomprdt_tab5').innerHTML==document.getElementById('nomprdt5').innerHTML)&&($("#quantite5").val()=='')){
						total=total-Number(document.getElementById("qte5").innerHTML)*parseFloat(document.getElementById("prixprdt5").innerHTML);
						exist=1;
						
						document.getElementById('qte5').innerHTML=''+(parseInt(document.getElementById("qte5").innerHTML)+1);
						
					}
					if((document.getElementById('nomprdt_tab5').innerHTML==document.getElementById('nomprdt5').innerHTML)&&($("#quantite5").val()!='')){
						total=total-Number(document.getElementById("qte5").innerHTML)*parseFloat(document.getElementById("prixprdt5").innerHTML);
						exist=1;
						
						document.getElementById('qte5').innerHTML=''+(parseInt(document.getElementById("qte5").innerHTML)+Number($("#quantite5").val()));
						
					}
			
		}
		
		else{
			if(exist==0){
				if($("#quantite5").val()==''){
					$("#ensembleachats").append('<tr id="detailcmd5"><td><p><strong id="nomprdt_tab5">'+document.getElementById("nomprdt5").innerHTML+'</strong></p></td><td><p id="qte5">1</p></td><td><p>'+document.getElementById("prixprdt5").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat5"><b>X</b> Supprimer</p></td> </tr>');
					nbre_elt_table5++;
				}
				else{
					nbre_elt_table5++;
				$("#ensembleachats").append('<tr id="detailcmd5"><td><p><strong id="nomprdt_tab5">'+document.getElementById("nomprdt5").innerHTML+'</strong></p></td><td><p id="qte5">'+''+$("#quantite5").val()+''+'</p></td><td><p>'+document.getElementById("prixprdt5").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat5"><b>X</b> Supprimer</p></td> </tr>');
				}
			}
		}
		
		total=total+Number(document.getElementById("qte5").innerHTML)*parseFloat(document.getElementById("prixprdt5").innerHTML);
		if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}
		document.getElementById("quantite5").value='';

});

$(".achat6").click(function(){
	var exist=0;
  
	compteurPourAchats++;
		$(".tableAchats").fadeIn();

		if(compteurPourAchats==1){
			Swal.fire({
			  title: 'Salut!',
			  text: 'Vous pouvez consulter la table de vos achats ci-dessus.',
			  type: 'info',
			  confirmButtonColor: "rgba(255, 193, 7,1)",
			 
			  animation:true
			 
			  
			 
		});
		}
		if(nbre_elt_table6>0){
			

				if((document.getElementById('nomprdt_tab6').innerHTML==document.getElementById('nomprdt6').innerHTML)&&($("#quantite6").val()=='')){
						total=total-Number(document.getElementById("qte6").innerHTML)*parseFloat(document.getElementById("prixprdt6").innerHTML);
						exist=1;
						
						document.getElementById('qte6').innerHTML=''+(parseInt(document.getElementById("qte6").innerHTML)+1);
						
					}
					if((document.getElementById('nomprdt_tab6').innerHTML==document.getElementById('nomprdt6').innerHTML)&&($("#quantite6").val()!='')){
						total=total-Number(document.getElementById("qte6").innerHTML)*parseFloat(document.getElementById("prixprdt6").innerHTML);
						exist=1;
						
						document.getElementById('qte6').innerHTML=''+(parseInt(document.getElementById("qte6").innerHTML)+Number($("#quantite6").val()));
						
					}
			
		}
		
		else{
			if(exist==0){
				if($("#quantite6").val()==''){
					$("#ensembleachats").append('<tr id="detailcmd6"><td><p><strong id="nomprdt_tab6">'+document.getElementById("nomprdt6").innerHTML+'</strong></p></td><td><p id="qte6">1</p></td><td><p>'+document.getElementById("prixprdt6").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat6"><b>X</b> Supprimer</p></td> </tr>');
					nbre_elt_table6++;
				}
				else{
				nbre_elt_table6++;
				$("#ensembleachats").append('<tr id="detailcmd6"><td><p><strong id="nomprdt_tab6">'+document.getElementById("nomprdt6").innerHTML+'</strong></p></td><td><p id="qte6">'+''+$("#quantite6").val()+''+'</p></td><td><p>'+document.getElementById("prixprdt6").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat6"><b>X</b> Supprimer</p></td> </tr>');
				}
			}
		}
		total=total+Number(document.getElementById("qte6").innerHTML)*parseFloat(document.getElementById("prixprdt6").innerHTML);
		if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}
		
		document.getElementById("quantite6").value='';

});

$(".achat7").click(function(){
	var exist=0;
  
	compteurPourAchats++;
		$(".tableAchats").fadeIn();

		if(compteurPourAchats==1){
			Swal.fire({
			  title: 'Salut!',
			  text: 'Vous pouvez consulter la table de vos achats ci-dessus.',
			  type: 'info',
			  confirmButtonColor: "rgba(255, 193, 7,1)",
			 
			  animation:true
			 
			  
			 
		});
		}
		if(nbre_elt_table7>0){
			

				if((document.getElementById('nomprdt_tab7').innerHTML==document.getElementById('nomprdt7').innerHTML)&&($("#quantite7").val()=='')){
						total=total-Number(document.getElementById("qte7").innerHTML)*parseFloat(document.getElementById("prixprdt7").innerHTML);
						exist=1;
						
						document.getElementById('qte7').innerHTML=''+(parseInt(document.getElementById("qte7").innerHTML)+1);
						
					}
					if((document.getElementById('nomprdt_tab7').innerHTML==document.getElementById('nomprdt7').innerHTML)&&($("#quantite7").val()!='')){
						total=total-Number(document.getElementById("qte7").innerHTML)*parseFloat(document.getElementById("prixprdt7").innerHTML);
						exist=1;
						
						document.getElementById('qte7').innerHTML=''+(parseInt(document.getElementById("qte7").innerHTML)+Number($("#quantite7").val()));
						
					}
			
		}
		
		else{
			if(exist==0){
				if($("#quantite7").val()==''){
					$("#ensembleachats").append('<tr id="detailcmd7"><td><p><strong id="nomprdt_tab7">'+document.getElementById("nomprdt7").innerHTML+'</strong></p></td><td><p id="qte7">1</p></td><td><p>'+document.getElementById("prixprdt7").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat7"><b>X</b> Supprimer</p></td> </tr>');
					nbre_elt_table7++;
				}
				else{
					nbre_elt_table7++;
				$("#ensembleachats").append('<tr id="detailcmd7"><td><p><strong id="nomprdt_tab7">'+document.getElementById("nomprdt7").innerHTML+'</strong></p></td><td><p id="qte7">'+''+$("#quantite7").val()+''+'</p></td><td><p>'+document.getElementById("prixprdt7").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat7"><b>X</b> Supprimer</p></td> </tr>');
				}
			}
		}
		total=total+Number(document.getElementById("qte7").innerHTML)*parseFloat(document.getElementById("prixprdt7").innerHTML);
		if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}
		document.getElementById("quantite7").value='';

});

$(".achat8").click(function(){
	var exist=0;
  
	compteurPourAchats++;
		$(".tableAchats").fadeIn();

		if(compteurPourAchats==1){
			Swal.fire({
			  title: 'Salut!',
			  text: 'Vous pouvez consulter la table de vos achats ci-dessus.',
			  type: 'info',
			  confirmButtonColor: "rgba(255, 193, 7,1)",
			 
			  animation:true
			 
			  
			 
		});
		}
		if(nbre_elt_table8>0){
			

				if((document.getElementById('nomprdt_tab8').innerHTML==document.getElementById('nomprdt8').innerHTML)&&($("#quantite8").val()=='')){
						total=total-Number(document.getElementById("qte8").innerHTML)*parseFloat(document.getElementById("prixprdt8").innerHTML);
						exist=1;
						
						document.getElementById('qte8').innerHTML=''+(parseInt(document.getElementById("qte8").innerHTML)+1);
						
					}
					if((document.getElementById('nomprdt_tab8').innerHTML==document.getElementById('nomprdt8').innerHTML)&&($("#quantite8").val()!='')){
						total=total-Number(document.getElementById("qte8").innerHTML)*parseFloat(document.getElementById("prixprdt8").innerHTML);
						exist=1;
						
						document.getElementById('qte8').innerHTML=''+(parseInt(document.getElementById("qte8").innerHTML)+Number($("#quantite8").val()));
						
					}
			
		}
		
		else{
			if(exist==0){
				if($("#quantite8").val()==''){
					$("#ensembleachats").append('<tr id="detailcmd8"><td><p><strong id="nomprdt_tab8">'+document.getElementById("nomprdt8").innerHTML+'</strong></p></td><td><p id="qte8">1</p></td><td><p>'+document.getElementById("prixprdt8").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat8"><b>X</b> Supprimer</p></td> </tr>');
					nbre_elt_table8++;
				}
				else{
					nbre_elt_table8++;
				$("#ensembleachats").append('<tr id="detailcmd8"><td><p><strong id="nomprdt_tab8">'+document.getElementById("nomprdt8").innerHTML+'</strong></p></td><td><p id="qte8">'+''+$("#quantite8").val()+''+'</p></td><td><p>'+document.getElementById("prixprdt8").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat8"><b>X</b> Supprimer</p></td> </tr>');
				}
			}
		}
		total=total+Number(document.getElementById("qte8").innerHTML)*parseFloat(document.getElementById("prixprdt8").innerHTML);
		if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}
		document.getElementById("quantite8").value='';

});

$(".achat9").click(function(){
	var exist=0;
  
	compteurPourAchats++;
		$(".tableAchats").fadeIn();

		if(compteurPourAchats==1){
			Swal.fire({
			  title: 'Salut!',
			  text: 'Vous pouvez consulter la table de vos achats ci-dessus.',
			  type: 'info',
			  confirmButtonColor: "rgba(255, 193, 7,1)",
			 
			  animation:true
			 
			  
			 
		});
		}
		if(nbre_elt_table9>0){
			

				if((document.getElementById('nomprdt_tab9').innerHTML==document.getElementById('nomprdt9').innerHTML)&&($("#quantite9").val()=='')){
						total=total-Number(document.getElementById("qte9").innerHTML)*parseFloat(document.getElementById("prixprdt9").innerHTML);
						exist=1;
						
						document.getElementById('qte9').innerHTML=''+(parseInt(document.getElementById("qte9").innerHTML)+1);
						
					}
					if((document.getElementById('nomprdt_tab9').innerHTML==document.getElementById('nomprdt9').innerHTML)&&($("#quantite9").val()!='')){
						total=total-Number(document.getElementById("qte9").innerHTML)*parseFloat(document.getElementById("prixprdt9").innerHTML);
						exist=1;
						
						document.getElementById('qte9').innerHTML=''+(parseInt(document.getElementById("qte9").innerHTML)+Number($("#quantite9").val()));
						
					}
			
		}
		
		else{
			if(exist==0){
				if($("#quantite9").val()==''){
					$("#ensembleachats").append('<tr id="detailcmd9"><td><p><strong id="nomprdt_tab9">'+document.getElementById("nomprdt9").innerHTML+'</strong></p></td><td><p id="qte9">1</p></td><td><p>'+document.getElementById("prixprdt9").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat9"><b>X</b> Supprimer</p></td> </tr>');
					nbre_elt_table9++;
				}
				else{
					nbre_elt_table9++;
				$("#ensembleachats").append('<tr id="detailcmd9"><td><p><strong id="nomprdt_tab9">'+document.getElementById("nomprdt9").innerHTML+'</strong></p></td><td><p id="qte9">'+''+$("#quantite9").val()+''+'</p></td><td><p>'+document.getElementById("prixprdt9").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat9"><b>X</b> Supprimer</p></td> </tr>');
				}
			}
		}
		total=total+Number(document.getElementById("qte9").innerHTML)*parseFloat(document.getElementById("prixprdt9").innerHTML);
		if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}
		document.getElementById("quantite9").value='';

});

$(".achat10").click(function(){
	var exist=0;
  
	compteurPourAchats++;
		$(".tableAchats").fadeIn();

		if(compteurPourAchats==1){
			Swal.fire({
			  title: 'Salut!',
			  text: 'Vous pouvez consulter la table de vos achats ci-dessus.',
			  type: 'info',
			  confirmButtonColor: "rgba(255, 193, 7,1)",
			 
			  animation:true
			 
			  
			 
		});
		}
		if(nbre_elt_table10>0){
			

				if((document.getElementById('nomprdt_tab10').innerHTML==document.getElementById('nomprdt10').innerHTML)&&($("#quantite10").val()=='')){
						total=total-Number(document.getElementById("qte10").innerHTML)*parseFloat(document.getElementById("prixprdt10").innerHTML);
						exist=1;
						
						document.getElementById('qte10').innerHTML=''+(parseInt(document.getElementById("qte10").innerHTML)+1);
						
					}
					if((document.getElementById('nomprdt_tab10').innerHTML==document.getElementById('nomprdt10').innerHTML)&&($("#quantite10").val()!='')){
						total=total-Number(document.getElementById("qte10").innerHTML)*parseFloat(document.getElementById("prixprdt10").innerHTML);
						exist=1;
						
						document.getElementById('qte10').innerHTML=''+(parseInt(document.getElementById("qte10").innerHTML)+Number($("#quantite10").val()));
						
					}
			
		}
		
		else{
			if(exist==0){
				if($("#quantite10").val()==''){
					$("#ensembleachats").append('<tr id="detailcmd10"><td><p><strong id="nomprdt_tab10">'+document.getElementById("nomprdt10").innerHTML+'</strong></p></td><td><p id="qte10">1</p></td><td><p>'+document.getElementById("prixprdt10").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat10"><b>X</b> Supprimer</p></td> </tr>');
					nbre_elt_table10++;
				}
				else{
					nbre_elt_table10++;
				$("#ensembleachats").append('<tr id="detailcmd10"><td><p><strong id="nomprdt_tab10">'+document.getElementById("nomprdt10").innerHTML+'</strong></p></td><td><p id="qte10">'+''+$("#quantite10").val()+''+'</p></td><td><p>'+document.getElementById("prixprdt10").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat10"><b>X</b> Supprimer</p></td> </tr>');
				}
			}
		}
		total=total+Number(document.getElementById("qte10").innerHTML)*parseFloat(document.getElementById("prixprdt10").innerHTML);
		if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}
		document.getElementById("quantite10").value='';

});

$(".achat11").click(function(){
	var exist=0;
  
	compteurPourAchats++;
		$(".tableAchats").fadeIn();

		if(compteurPourAchats==1){
			Swal.fire({
			  title: 'Salut!',
			  text: 'Vous pouvez consulter la table de vos achats ci-dessus.',
			  type: 'info',
			  confirmButtonColor: "rgba(255, 193, 7,1)",
			 
			  animation:true
			 
			  
			 
		});
		}
		if(nbre_elt_table11>0){
			

				if((document.getElementById('nomprdt_tab11').innerHTML==document.getElementById('nomprdt11').innerHTML)&&($("#quantite11").val()=='')){
						total=total-Number(document.getElementById("qte11").innerHTML)*parseFloat(document.getElementById("prixprdt11").innerHTML);
						exist=1;
						
						document.getElementById('qte11').innerHTML=''+(parseInt(document.getElementById("qte11").innerHTML)+1);
						
					}
					if((document.getElementById('nomprdt_tab11').innerHTML==document.getElementById('nomprdt11').innerHTML)&&($("#quantite11").val()!='')){
						total=total-Number(document.getElementById("qte11").innerHTML)*parseFloat(document.getElementById("prixprdt11").innerHTML);
						exist=1;
						
						document.getElementById('qte11').innerHTML=''+(parseInt(document.getElementById("qte11").innerHTML)+Number($("#quantite11").val()));
						
					}
			
		}
		
		else{
			if(exist==0){
				if($("#quantite11").val()==''){
					nbre_elt_table11++;
					$("#ensembleachats").append('<tr id="detailcmd11"><td><p><strong id="nomprdt_tab11">'+document.getElementById("nomprdt11").innerHTML+'</strong></p></td><td><p id="qte11">1</p></td><td><p>'+document.getElementById("prixprdt11").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat11"><b>X</b> Supprimer</p></td> </tr>');
				
				}
				else{
					nbre_elt_table11++;
				$("#ensembleachats").append('<tr id="detailcmd11"><td><p><strong id="nomprdt_tab11">'+document.getElementById("nomprdt11").innerHTML+'</strong></p></td><td><p id="qte11">'+''+$("#quantite11").val()+''+'</p></td><td><p>'+document.getElementById("prixprdt11").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat11"><b>X</b> Supprimer</p></td> </tr>');
				}
			}
		}
		total=total+Number(document.getElementById("qte11").innerHTML)*parseFloat(document.getElementById("prixprdt11").innerHTML);
		if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}
		document.getElementById("quantite11").value='';

});

$(".achat12").click(function(){
	var exist=0;
  
	compteurPourAchats++;
		$(".tableAchats").fadeIn();

		if(compteurPourAchats==1){
			Swal.fire({
			  title: 'Salut!',
			  text: 'Vous pouvez consulter la table de vos achats ci-dessus.',
			  type: 'info',
			  confirmButtonColor: "rgba(255, 193, 7,1)",
			 
			  animation:true
			 
			  
			 
		});
		}
		if(nbre_elt_table12>0){
			

				if((document.getElementById('nomprdt_tab12').innerHTML==document.getElementById('nomprdt12').innerHTML)&&($("#quantite12").val()=='')){
						total=total-Number(document.getElementById("qte12").innerHTML)*parseFloat(document.getElementById("prixprdt12").innerHTML);
						exist=1;
						
						document.getElementById('qte12').innerHTML=''+(parseInt(document.getElementById("qte12").innerHTML)+1);
						
					}
					if((document.getElementById('nomprdt_tab12').innerHTML==document.getElementById('nomprdt12').innerHTML)&&($("#quantite12").val()!='')){
						total=total-Number(document.getElementById("qte12").innerHTML)*parseFloat(document.getElementById("prixprdt12").innerHTML);
						exist=1;
						
						document.getElementById('qte12').innerHTML=''+(parseInt(document.getElementById("qte12").innerHTML)+Number($("#quantite12").val()));
						
					}
			
		}
		
		else{
			if(exist==0){
				if($("#quantite12").val()==''){
					nbre_elt_table12++;
					$("#ensembleachats").append('<tr id="detailcmd12"><td><p><strong id="nomprdt_tab12">'+document.getElementById("nomprdt12").innerHTML+'</strong></p></td><td><p id="qte12">1</p></td><td><p>'+document.getElementById("prixprdt12").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat12"><b>X</b> Supprimer</p></td> </tr>');
				
				}
				else{
					nbre_elt_table12++;
				$("#ensembleachats").append('<tr id="detailcmd12"><td><p><strong id="nomprdt_tab12">'+document.getElementById("nomprdt12").innerHTML+'</strong></p></td><td><p id="qte12">'+''+$("#quantite12").val()+''+'</p></td><td><p>'+document.getElementById("prixprdt12").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat12"><b>X</b> Supprimer</p></td> </tr>');
				}
			}
		}
		total=total+Number(document.getElementById("qte12").innerHTML)*parseFloat(document.getElementById("prixprdt12").innerHTML);
		if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}
		document.getElementById("quantite12").value='';

});

$(".achat13").click(function(){
	var exist=0;
  
	compteurPourAchats++;
		$(".tableAchats").fadeIn();

		if(compteurPourAchats==1){
			Swal.fire({
			  title: 'Salut!',
			  text: 'Vous pouvez consulter la table de vos achats ci-dessus.',
			  type: 'info',
			  confirmButtonColor: "rgba(255, 193, 7,1)",
			 
			  animation:true
			 
			  
			 
		});
		}
		if(nbre_elt_table13>0){
			

				if((document.getElementById('nomprdt_tab13').innerHTML==document.getElementById('nomprdt13').innerHTML)&&($("#quantite13").val()=='')){
						total=total-Number(document.getElementById("qte13").innerHTML)*parseFloat(document.getElementById("prixprdt13").innerHTML);
						exist=1;
						
						document.getElementById('qte13').innerHTML=''+(parseInt(document.getElementById("qte13").innerHTML)+1);
						
					}
					if((document.getElementById('nomprdt_tab13').innerHTML==document.getElementById('nomprdt13').innerHTML)&&($("#quantite13").val()!='')){
						total=total-Number(document.getElementById("qte13").innerHTML)*parseFloat(document.getElementById("prixprdt13").innerHTML);
						exist=1;
						
						document.getElementById('qte13').innerHTML=''+(parseInt(document.getElementById("qte13").innerHTML)+Number($("#quantite13").val()));
						
					}
		}
		
		else{
			if(exist==0){
				if($("#quantite13").val()==''){
					nbre_elt_table13++;
					$("#ensembleachats").append('<tr id="detailcmd13"><td><p><strong id="nomprdt_tab13">'+document.getElementById("nomprdt13").innerHTML+'</strong></p></td><td><p id="qte13">1</p></td><td><p>'+document.getElementById("prixprdt13").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat13"><b>X</b> Supprimer</p></td> </tr>');
				
				}
				else{
					nbre_elt_table13++;
				$("#ensembleachats").append('<tr id="detailcmd13"><td><p><strong id="nomprdt_tab13">'+document.getElementById("nomprdt13").innerHTML+'</strong></p></td><td><p id="qte13">'+''+$("#quantite13").val()+''+'</p></td><td><p>'+document.getElementById("prixprdt13").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat13"><b>X</b> Supprimer</p></td> </tr>');
				}
			}
		}
		total=total+Number(document.getElementById("qte13").innerHTML)*parseFloat(document.getElementById("prixprdt13").innerHTML);
		if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}
		document.getElementById("quantite13").value='';

});

$(".achat14").click(function(){
	var exist=0;
  
	compteurPourAchats++;
		$(".tableAchats").fadeIn();

		if(compteurPourAchats==1){
			Swal.fire({
			  title: 'Salut!',
			  text: 'Vous pouvez consulter la table de vos achats ci-dessus.',
			  type: 'info',
			  confirmButtonColor: "rgba(255, 193, 7,1)",
			 
			  animation:true
			 
			  
			 
		});
		}
		if(nbre_elt_table14>0){
			

				if((document.getElementById('nomprdt_tab14').innerHTML==document.getElementById('nomprdt14').innerHTML)&&($("#quantite14").val()=='')){
						total=total-Number(document.getElementById("qte14").innerHTML)*parseFloat(document.getElementById("prixprdt14").innerHTML);
						exist=1;
						
						document.getElementById('qte14').innerHTML=''+(parseInt(document.getElementById("qte14").innerHTML)+1);
						
					}
					if((document.getElementById('nomprdt_tab14').innerHTML==document.getElementById('nomprdt14').innerHTML)&&($("#quantite14").val()!='')){
						total=total-Number(document.getElementById("qte14").innerHTML)*parseFloat(document.getElementById("prixprdt14").innerHTML);
						exist=1;
						
						document.getElementById('qte14').innerHTML=''+(parseInt(document.getElementById("qte14").innerHTML)+Number($("#quantite14").val()));
						
					}
			
		}
		
		else{
			if(exist==0){
				if($("#quantite14").val()==''){
					nbre_elt_table14++;
					$("#ensembleachats").append('<tr id="detailcmd14"><td><p><strong id="nomprdt_tab14">'+document.getElementById("nomprdt14").innerHTML+'</strong></p></td><td><p id="qte14">1</p></td><td><p>'+document.getElementById("prixprdt14").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat14"><b>X</b> Supprimer</p></td> </tr>');
				
				}
				else{
					nbre_elt_table14++;
				$("#ensembleachats").append('<tr id="detailcmd14"><td><p><strong id="nomprdt_tab14">'+document.getElementById("nomprdt14").innerHTML+'</strong></p></td><td><p id="qte14">'+''+$("#quantite14").val()+''+'</p></td><td><p>'+document.getElementById("prixprdt14").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat14"><b>X</b> Supprimer</p></td> </tr>');
				}
			}
		}
		total=total+Number(document.getElementById("qte14").innerHTML)*parseFloat(document.getElementById("prixprdt14").innerHTML);
		if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}
		document.getElementById("quantite14").value='';

});

$(".achat15").click(function(){
	var exist=0;
  
	compteurPourAchats++;
		$(".tableAchats").fadeIn();

		if(compteurPourAchats==1){
			Swal.fire({
			  title: 'Salut!',
			  text: 'Vous pouvez consulter la table de vos achats ci-dessus.',
			  type: 'info',
			  confirmButtonColor: "rgba(255, 193, 7,1)",
			 
			  animation:true
			 
			  
			 
		});
		}
		if(nbre_elt_table15>0){
			

				if((document.getElementById('nomprdt_tab15').innerHTML==document.getElementById('nomprdt15').innerHTML)&&($("#quantite15").val()=='')){
						total=total-Number(document.getElementById("qte15").innerHTML)*parseFloat(document.getElementById("prixprdt15").innerHTML);
						exist=1;
						
						document.getElementById('qte15').innerHTML=''+(parseInt(document.getElementById("qte15").innerHTML)+1);
						
					}
					if((document.getElementById('nomprdt_tab15').innerHTML==document.getElementById('nomprdt15').innerHTML)&&($("#quantite15").val()!='')){
						total=total-Number(document.getElementById("qte15").innerHTML)*parseFloat(document.getElementById("prixprdt15").innerHTML);
						exist=1;
						
						document.getElementById('qte15').innerHTML=''+(parseInt(document.getElementById("qte15").innerHTML)+Number($("#quantite15").val()));
						
					}
			
		}
		
		else{
			if(exist==0){
				if($("#quantite15").val()==''){
					nbre_elt_table15++;
					$("#ensembleachats").append('<tr id="detailcmd15"><td><p><strong id="nomprdt_tab15">'+document.getElementById("nomprdt15").innerHTML+'</strong></p></td><td><p id="qte15">1</p></td><td><p>'+document.getElementById("prixprdt15").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat15"><b>X</b> Supprimer</p></td> </tr>');
				
				}
				else{
					nbre_elt_table15++;
				$("#ensembleachats").append('<tr id="detailcmd15"><td><p><strong id="nomprdt_tab15">'+document.getElementById("nomprdt15").innerHTML+'</strong></p></td><td><p id="qte15">'+''+$("#quantite15").val()+''+'</p></td><td><p>'+document.getElementById("prixprdt15").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat15"><b>X</b> Supprimer</p></td> </tr>');
				}
			}
		}
		total=total+Number(document.getElementById("qte15").innerHTML)*parseFloat(document.getElementById("prixprdt15").innerHTML);
		if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}
		document.getElementById("quantite15").value='';

});

$(".achat16").click(function(){
	var exist=0;
  
	compteurPourAchats++;
		$(".tableAchats").fadeIn();

		if(compteurPourAchats==1){
			Swal.fire({
			  title: 'Salut!',
			  text: 'Vous pouvez consulter la table de vos achats ci-dessus.',
			  type: 'info',
			  confirmButtonColor: "rgba(255, 193, 7,1)",
			 
			  animation:true
			 
			  
			 
		});
		}
		if(nbre_elt_table16>0){
			

				if((document.getElementById('nomprdt_tab16').innerHTML==document.getElementById('nomprdt16').innerHTML)&&($("#quantite16").val()=='')){
						total=total-Number(document.getElementById("qte16").innerHTML)*parseFloat(document.getElementById("prixprdt16").innerHTML);
						exist=1;
						
						document.getElementById('qte16').innerHTML=''+(parseInt(document.getElementById("qte16").innerHTML)+1);
						
					}
					if((document.getElementById('nomprdt_tab16').innerHTML==document.getElementById('nomprdt16').innerHTML)&&($("#quantite16").val()!='')){
						total=total-Number(document.getElementById("qte16").innerHTML)*parseFloat(document.getElementById("prixprdt16").innerHTML);
						exist=1;
						
						document.getElementById('qte16').innerHTML=''+(parseInt(document.getElementById("qte16").innerHTML)+Number($("#quantite16").val()));
						
					}
			
		}
		
		else{
			if(exist==0){
				if($("#quantite16").val()==''){
					nbre_elt_table16++;
					$("#ensembleachats").append('<tr id="detailcmd16"><td><p><strong id="nomprdt_tab16">'+document.getElementById("nomprdt16").innerHTML+'</strong></p></td><td><p id="qte16">1</p></td><td><p>'+document.getElementById("prixprdt16").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat16"><b>X</b> Supprimer</p></td> </tr>');
				
				}
				else{
					nbre_elt_table16++;
				$("#ensembleachats").append('<tr id="detailcmd16"><td><p><strong id="nomprdt_tab16">'+document.getElementById("nomprdt16").innerHTML+'</strong></p></td><td><p id="qte16">'+''+$("#quantite16").val()+''+'</p></td><td><p>'+document.getElementById("prixprdt16").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat16"><b>X</b> Supprimer</p></td> </tr>');
				}
			}
		}
		total=total+Number(document.getElementById("qte16").innerHTML)*parseFloat(document.getElementById("prixprdt16").innerHTML);
		if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}
		document.getElementById("quantite16").value='';
});

$(".achat17").click(function(){
	var exist=0;
  
	compteurPourAchats++;
		$(".tableAchats").fadeIn();

		if(compteurPourAchats==1){
			Swal.fire({
			  title: 'Salut!',
			  text: 'Vous pouvez consulter la table de vos achats ci-dessus.',
			  type: 'info',
			  confirmButtonColor: "rgba(255, 193, 7,1)",
			 
			  animation:true
			 
			  
			 
		});
		}
		if(nbre_elt_table17>0){
			

				if((document.getElementById('nomprdt_tab17').innerHTML==document.getElementById('nomprdt17').innerHTML)&&($("#quantite17").val()=='')){
						total=total-Number(document.getElementById("qte17").innerHTML)*parseFloat(document.getElementById("prixprdt17").innerHTML);
						exist=1;
						
						document.getElementById('qte17').innerHTML=''+(parseInt(document.getElementById("qte17").innerHTML)+1);
						
					}
					if((document.getElementById('nomprdt_tab17').innerHTML==document.getElementById('nomprdt17').innerHTML)&&($("#quantite17").val()!='')){
						total=total-Number(document.getElementById("qte17").innerHTML)*parseFloat(document.getElementById("prixprdt17").innerHTML);
						exist=1;
						
						document.getElementById('qte17').innerHTML=''+(parseInt(document.getElementById("qte17").innerHTML)+Number($("#quantite17").val()));
						
					}
			
		}
		
		else{
			if(exist==0){
				if($("#quantite17").val()==''){
					nbre_elt_table17++;
					$("#ensembleachats").append('<tr id="detailcmd17"><td><p><strong id="nomprdt_tab17">'+document.getElementById("nomprdt17").innerHTML+'</strong></p></td><td><p id="qte17">1</p></td><td><p>'+document.getElementById("prixprdt17").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat17"><b>X</b> Supprimer</p></td> </tr>');
				
				}
				else{
					nbre_elt_table17++;
				$("#ensembleachats").append('<tr id="detailcmd17"><td><p><strong id="nomprdt_tab17">'+document.getElementById("nomprdt17").innerHTML+'</strong></p></td><td><p id="qte17">'+''+$("#quantite17").val()+''+'</p></td><td><p>'+document.getElementById("prixprdt17").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat17"><b>X</b> Supprimer</p></td> </tr>');
				}
			}
		}
		total=total+Number(document.getElementById("qte17").innerHTML)*parseFloat(document.getElementById("prixprdt17").innerHTML);
		if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}
		document.getElementById("quantite17").value='';

});

$(".achat18").click(function(){
	var exist=0;
  
	compteurPourAchats++;
		$(".tableAchats").fadeIn();

		if(compteurPourAchats==1){
			Swal.fire({
			  title: 'Salut!',
			  text: 'Vous pouvez consulter la table de vos achats ci-dessus.',
			  type: 'info',
			  confirmButtonColor: "rgba(255, 193, 7,1)",
			 
			  animation:true
			 
			  
			 
		});
		}
		if(nbre_elt_table18>0){
			

				if((document.getElementById('nomprdt_tab18').innerHTML==document.getElementById('nomprdt18').innerHTML)&&($("#quantite18").val()=='')){
						total=total-Number(document.getElementById("qte18").innerHTML)*parseFloat(document.getElementById("prixprdt18").innerHTML);
						exist=1;
						
						document.getElementById('qte18').innerHTML=''+(parseInt(document.getElementById("qte18").innerHTML)+1);
						
					}
					if((document.getElementById('nomprdt_tab18').innerHTML==document.getElementById('nomprdt18').innerHTML)&&($("#quantite18").val()!='')){
						total=total-Number(document.getElementById("qte18").innerHTML)*parseFloat(document.getElementById("prixprdt18").innerHTML);
						exist=1;
						
						document.getElementById('qte18').innerHTML=''+(parseInt(document.getElementById("qte18").innerHTML)+Number($("#quantite18").val()));
						
					}
			
		}
		
		else{
			if(exist==0){
				if($("#quantite18").val()==''){
					nbre_elt_table18++;
					$("#ensembleachats").append('<tr id="detailcmd18"><td><p><strong id="nomprdt_tab18">'+document.getElementById("nomprdt18").innerHTML+'</strong></p></td><td><p id="qte18">1</p></td><td><p>'+document.getElementById("prixprdt18").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat18"><b>X</b> Supprimer</p></td> </tr>');
				
				}
				else{
					nbre_elt_table18++;
				$("#ensembleachats").append('<tr id="detailcmd18"><td><p><strong id="nomprdt_tab18">'+document.getElementById("nomprdt18").innerHTML+'</strong></p></td><td><p id="qte18">'+''+$("#quantite18").val()+''+'</p></td><td><p>'+document.getElementById("prixprdt18").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat18"><b>X</b> Supprimer</p></td> </tr>');
				}
			}
		}
		total=total+Number(document.getElementById("qte18").innerHTML)*parseFloat(document.getElementById("prixprdt18").innerHTML);
		if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}
		document.getElementById("quantite18").value='';

});

$(".achat19").click(function(){
	var exist=0;
  
	compteurPourAchats++;
		$(".tableAchats").fadeIn();

		if(compteurPourAchats==1){
			Swal.fire({
			  title: 'Salut!',
			  text: 'Vous pouvez consulter la table de vos achats ci-dessus.',
			  type: 'info',
			  confirmButtonColor: "rgba(255, 193, 7,1)",
			 
			  animation:true
			 
			  
			 
		});
		}
		if(nbre_elt_table19>0){
			

				if((document.getElementById('nomprdt_tab19').innerHTML==document.getElementById('nomprdt19').innerHTML)&&($("#quantite19").val()=='')){
						total=total-Number(document.getElementById("qte19").innerHTML)*parseFloat(document.getElementById("prixprdt19").innerHTML);
						exist=1;
						
						document.getElementById('qte19').innerHTML=''+(parseInt(document.getElementById("qte19").innerHTML)+1);
						
					}
					if((document.getElementById('nomprdt_tab19').innerHTML==document.getElementById('nomprdt19').innerHTML)&&($("#quantite19").val()!='')){
						total=total-Number(document.getElementById("qte19").innerHTML)*parseFloat(document.getElementById("prixprdt19").innerHTML);
						exist=1;
						
						document.getElementById('qte19').innerHTML=''+(parseInt(document.getElementById("qte19").innerHTML)+Number($("#quantite19").val()));
						
					}
			
		}
		
		else{
			if(exist==0){
				if($("#quantite19").val()==''){
					nbre_elt_table19++;
					$("#ensembleachats").append('<tr id="detailcmd19"><td><p><strong id="nomprdt_tab19">'+document.getElementById("nomprdt19").innerHTML+'</strong></p></td><td><p id="qte19">1</p></td><td><p>'+document.getElementById("prixprdt19").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat19"><b>X</b> Supprimer</p></td> </tr>');
				
				}
				else{
					nbre_elt_table19++;
				$("#ensembleachats").append('<tr id="detailcmd19"><td><p><strong id="nomprdt_tab19">'+document.getElementById("nomprdt19").innerHTML+'</strong></p></td><td><p id="qte19">'+''+$("#quantite19").val()+''+'</p></td><td><p>'+document.getElementById("prixprdt19").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat19"><b>X</b> Supprimer</p></td> </tr>');
				}
			}
		}
		total=total+Number(document.getElementById("qte19").innerHTML)*parseFloat(document.getElementById("prixprdt19").innerHTML);
		if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}
		document.getElementById("quantite19").value='';

});

$(".achat20").click(function(){
	var exist=0;
  
	compteurPourAchats++;
		$(".tableAchats").fadeIn();

		if(compteurPourAchats==1){
			Swal.fire({
			  title: 'Salut!',
			  text: 'Vous pouvez consulter la table de vos achats ci-dessus.',
			  type: 'info',
			  confirmButtonColor: "rgba(255, 193, 7,1)",
			 
			  animation:true
			 
			  
			 
		});
		}
		if(nbre_elt_table20>0){
			

				if((document.getElementById('nomprdt_tab20').innerHTML==document.getElementById('nomprdt20').innerHTML)&&($("#quantite20").val()=='')){
						total=total-Number(document.getElementById("qte20").innerHTML)*parseFloat(document.getElementById("prixprdt20").innerHTML);
						exist=1;
						
						document.getElementById('qte20').innerHTML=''+(parseInt(document.getElementById("qte20").innerHTML)+1);
						
					}
					if((document.getElementById('nomprdt_tab20').innerHTML==document.getElementById('nomprdt20').innerHTML)&&($("#quantite20").val()!='')){
						total=total-Number(document.getElementById("qte20").innerHTML)*parseFloat(document.getElementById("prixprdt20").innerHTML);
						exist=1;
						
						document.getElementById('qte20').innerHTML=''+(parseInt(document.getElementById("qte20").innerHTML)+Number($("#quantite20").val()));
						
					}
			
		}
		
		else{
			if(exist==0){
				if($("#quantite20").val()==''){
					nbre_elt_table20++;
					$("#ensembleachats").append('<tr id="detailcmd20"><td><p><strong id="nomprdt_tab20">'+document.getElementById("nomprdt20").innerHTML+'</strong></p></td><td><p id="qte20">1</p></td><td><p>'+document.getElementById("prixprdt20").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat20"><b>X</b> Supprimer</p></td> </tr>');
				
				}
				else{
					nbre_elt_table20++;
				$("#ensembleachats").append('<tr id="detailcmd20"><td><p><strong id="nomprdt_tab20">'+document.getElementById("nomprdt20").innerHTML+'</strong></p></td><td><p id="qte20">'+''+$("#quantite20").val()+''+'</p></td><td><p>'+document.getElementById("prixprdt20").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat20"><b>X</b> Supprimer</p></td> </tr>');
				}
			}
		}
		
		total=total+Number(document.getElementById("qte20").innerHTML)*parseFloat(document.getElementById("prixprdt20").innerHTML);
		if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}
		document.getElementById("quantite20").value='';
});

$(".achat21").click(function(){
	var exist=0;
  
	compteurPourAchats++;
		$(".tableAchats").fadeIn();

		if(compteurPourAchats==1){
			Swal.fire({
			  title: 'Salut!',
			  text: 'Vous pouvez consulter la table de vos achats ci-dessus.',
			  type: 'info',
			  confirmButtonColor: "rgba(255, 193, 7,1)",
			 
			  animation:true
			 
			  
			 
		});
		}
		if(nbre_elt_table21>0){
			

				if((document.getElementById('nomprdt_tab21').innerHTML==document.getElementById('nomprdt21').innerHTML)&&($("#quantite21").val()=='')){
						total=total-Number(document.getElementById("qte21").innerHTML)*parseFloat(document.getElementById("prixprdt21").innerHTML);
						exist=1;
						
						document.getElementById('qte21').innerHTML=''+(parseInt(document.getElementById("qte21").innerHTML)+1);
						
					}
					if((document.getElementById('nomprdt_tab21').innerHTML==document.getElementById('nomprdt21').innerHTML)&&($("#quantite21").val()!='')){
						total=total-Number(document.getElementById("qte21").innerHTML)*parseFloat(document.getElementById("prixprdt21").innerHTML);
						exist=1;
						
						document.getElementById('qte21').innerHTML=''+(parseInt(document.getElementById("qte21").innerHTML)+Number($("#quantite21").val()));
						
					}
			
		}
		
		else{
			if(exist==0){
				if($("#quantite21").val()==''){
					nbre_elt_table21++;
					$("#ensembleachats").append('<tr id="detailcmd21"><td><p><strong id="nomprdt_tab21">'+document.getElementById("nomprdt21").innerHTML+'</strong></p></td><td><p id="qte21">1</p></td><td><p>'+document.getElementById("prixprdt21").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat21"><b>X</b> Supprimer</p></td> </tr>');
				
				}
				else{
					nbre_elt_table21++;
				$("#ensembleachats").append('<tr id="detailcmd21"><td><p><strong id="nomprdt_tab21">'+document.getElementById("nomprdt21").innerHTML+'</strong></p></td><td><p id="qte21">'+''+$("#quantite21").val()+''+'</p></td><td><p>'+document.getElementById("prixprdt21").innerHTML+'</p></td><td style="color:red;" ><p class="suppachat" id="suppachat21"><b>X</b> Supprimer</p></td> </tr>');
				}
			}
		}
		total=total+Number(document.getElementById("qte21").innerHTML)*parseFloat(document.getElementById("prixprdt21").innerHTML);
		if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}
		document.getElementById("quantite21").value='';
});


/*SUPP ELEMENT DE LA TABLE D'ACHATS*/

$("body").on("click","#suppachat1",function(){
nbre_elt_table=0;
nombre_prdt_vendus--;
total=total-parseInt(document.getElementById("qte1").innerHTML)*parseFloat(document.getElementById("prixprdt1").innerHTML);
if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}

$("#detailcmd1").remove();
if(total==0){
	$('.tableAchats').hide();
}
});
$("body").on("click","#suppachat2",function(){
nbre_elt_table2=0;
total=total-parseInt(document.getElementById("qte2").innerHTML)*parseFloat(document.getElementById("prixprdt2").innerHTML);
	if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}

$("#detailcmd2").remove();
if(total==0){
	$('.tableAchats').hide();
}
});
$("body").on("click","#suppachat3",function(){
nbre_elt_table3=0;
total=total-parseInt(document.getElementById("qte3").innerHTML)*parseFloat(document.getElementById("prixprdt3").innerHTML);
	if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}

$("#detailcmd3").remove();
if(total==0){
	$('.tableAchats').hide();
}
});
$("body").on("click","#suppachat4",function(){
nbre_elt_table4=0;
total=total-parseInt(document.getElementById("qte4").innerHTML)*parseFloat(document.getElementById("prixprdt4").innerHTML);
	if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}

$("#detailcmd4").remove();
if(total==0){
	$('.tableAchats').hide();
}
});
$("body").on("click","#suppachat5",function(){
nbre_elt_table5=0;
total=total-parseInt(document.getElementById("qte5").innerHTML)*parseFloat(document.getElementById("prixprdt5").innerHTML);
	if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}

$("#detailcmd5").remove();
if(total==0){
	$('.tableAchats').hide();
}
});
$("body").on("click","#suppachat6",function(){
nbre_elt_table6=0;
total=total-parseInt(document.getElementById("qte6").innerHTML)*parseFloat(document.getElementById("prixprdt6").innerHTML);
	if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}

$("#detailcmd6").remove();
if(total==0){
	$('.tableAchats').hide();
}
});
$("body").on("click","#suppachat7",function(){
nbre_elt_table7=0;
total=total-parseInt(document.getElementById("qte7").innerHTML)*parseFloat(document.getElementById("prixprdt7").innerHTML);
	if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}

$("#detailcmd7").remove();
if(total==0){
	$('.tableAchats').hide();
}
});
$("body").on("click","#suppachat8",function(){
nbre_elt_table8=0;
total=total-parseInt(document.getElementById("qte8").innerHTML)*parseFloat(document.getElementById("prixprdt8").innerHTML);
	if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}

$("#detailcmd8").remove();
if(total==0){
	$('.tableAchats').hide();
}
});
$("body").on("click","#suppachat9",function(){
total=total-parseInt(document.getElementById("qte9").innerHTML)*parseFloat(document.getElementById("prixprdt9").innerHTML);
	if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}

$("#detailcmd9").remove();
if(total==0){
	$('.tableAchats').hide();
}
});
$("body").on("click","#suppachat10",function(){
nbre_elt_table10=0;
total=total-parseInt(document.getElementById("qte10").innerHTML)*parseFloat(document.getElementById("prixprdt10").innerHTML);
	if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}

$("#detailcmd10").remove();
if(total==0){
	$('.tableAchats').hide();
}
});
$("body").on("click","#suppachat11",function(){
nbre_elt_table11=0;
total=total-parseInt(document.getElementById("qte11").innerHTML)*parseFloat(document.getElementById("prixprdt11").innerHTML);
	if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}

$("#detailcmd11").remove();
if(total==0){
	$('.tableAchats').hide();
}
});
$("body").on("click","#suppachat12",function(){
nbre_elt_table12=0;
total=total-parseInt(document.getElementById("qte12").innerHTML)*parseFloat(document.getElementById("prixprdt12").innerHTML);
	if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}

$("#detailcmd12").remove();
if(total==0){
	$('.tableAchats').hide();
}
});
$("body").on("click","#suppachat13",function(){
nbre_elt_table13=0;
total=total-parseInt(document.getElementById("qte13").innerHTML)*parseFloat(document.getElementById("prixprdt13").innerHTML);
	if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}

$("#detailcmd13").remove();
if(total==0){
	$('.tableAchats').hide();
}
});
$("body").on("click","#suppachat14",function(){
nbre_elt_table14=0;
total=total-parseInt(document.getElementById("qte14").innerHTML)*parseFloat(document.getElementById("prixprdt14").innerHTML);
	if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}

$("#detailcmd14").remove();
if(total==0){
	$('.tableAchats').hide();
}
});
$("body").on("click","#suppachat15",function(){
nbre_elt_table15=0;
total=total-parseInt(document.getElementById("qte15").innerHTML)*parseFloat(document.getElementById("prixprdt15").innerHTML);
	if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}

$("#detailcmd15").remove();
if(total==0){
	$('.tableAchats').hide();
}
});
$("body").on("click","#suppachat16",function(){
nbre_elt_table16=0;
total=total-parseInt(document.getElementById("qte16").innerHTML)*parseFloat(document.getElementById("prixprdt16").innerHTML);
	if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}

$("#detailcmd16").remove();
if(total==0){
	$('.tableAchats').hide();
}
});
$("body").on("click","#suppachat17",function(){
nbre_elt_table17=0;
total=total-parseInt(document.getElementById("qte17").innerHTML)*parseFloat(document.getElementById("prixprdt17").innerHTML);
	if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}

$("#detailcmd17").remove();
if(total==0){
	$('.tableAchats').hide();
}
});
$("body").on("click","#suppachat18",function(){
nbre_elt_table18=0;
total=total-parseInt(document.getElementById("qte18").innerHTML)*parseFloat(document.getElementById("prixprdt18").innerHTML);
	if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}

$("#detailcmd18").remove();
if(total==0){
	$('.tableAchats').hide();
}
});
$("body").on("click","#suppachat19",function(){
nbre_elt_table19=0;
total=total-parseInt(document.getElementById("qte19").innerHTML)*parseFloat(document.getElementById("prixprdt19").innerHTML);
	if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}

$("#detailcmd19").remove();
if(total==0){
	$('.tableAchats').hide();
}
});
$("body").on("click","#suppachat20",function(){
nbre_elt_table20=0;
total=total-parseInt(document.getElementById("qte20").innerHTML)*parseFloat(document.getElementById("prixprdt20").innerHTML);
	if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}

$("#detailcmd20").remove();
if(total==0){
	$('.tableAchats').hide();
}
});
$("body").on("click","#suppachat21",function(){
nbre_elt_table21=0;
total=total-parseInt(document.getElementById("qte21").innerHTML)*parseFloat(document.getElementById("prixprdt21").innerHTML);
	if(compteur_total>=1){
			$("#montant_total").remove();
			$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
		}

$("#detailcmd21").remove();
if(total==0){
	$('.tableAchats').hide();
}
});


/* FIN SUPP ELEMENT DE LA TABLE D'ACHATS*/


$("body").on("click","#totalbutton",function(){
compteur_total++;
if(compteur_total==1){
	$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
}
else{
	$("#montant_total").remove();
	$("#total").append("<h4 id='montant_total' style='margin-top:10px;'>Montant total = <b>"+total+" DH</b></h4>");
}

});


$(".cards").fadeIn();



$("body").on("click","#droptous",function(){
	$(".cards").fadeIn();
	
	
});

$("body").on("click","#dropcatalogue1",function(){
	$(".cards").hide();
	$(".art_de_table").fadeIn();
	
});

$("body").on("click","#dropcatalogue2",function(){
	$(".cards").hide();
	$(".lumiere").fadeIn();
	
});

$("body").on("click","#dropcatalogue3",function(){
	$(".cards").hide();
	$(".sonorisation").fadeIn();
	
});

});