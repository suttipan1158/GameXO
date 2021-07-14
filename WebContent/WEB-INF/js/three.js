/**
 * 
 */

function three(){
	 document.getElementById("sectionThree").style.display = "block";
	 document.getElementById("sectionFour").style.display = "none";
	 document.getElementById("NumBox").value = "3";
 }
/*การทำงานในส่วนของหน้ากระดาน 3x3*/
var player = 1;
var listWinThree = [];
function myFunction(i,j) {
	var random01 = Math.floor(Math.random() * 3);
	var random02 = Math.floor(Math.random() * 3);
	console.log("randomFind ="+random01);
	console.log("randomFind ="+random02);

		document.getElementById("square"+i+j).value = "x";
		document.getElementById("square"+i+j).disabled = true;

		
		if(player ==1){
			document.getElementById("square"+i+j).value = "x";
			document.getElementById("square"+i+j).disabled = true;
		}
		
		for(var i = 0 ; i<1 ;i++){
			if(document.getElementById("square"+random01+random02).value == ""){
				document.getElementById("square"+random01+random02).value = "o";
				document.getElementById("square"+random01+random02).disabled = true;
				i++;
			}else{
			
				random01 = Math.floor(Math.random() * 3);
				random02 = Math.floor(Math.random() * 3);
				i--;
			}
		}
	console.log("square"+i+j);
	console.log("random01"+random01);
	console.log("random02"+random02);
		var  box00 = document.getElementById("square00").value;
		var  box01 = document.getElementById("square01").value;
		var  box02 = document.getElementById("square02").value;
		
		var  box10 = document.getElementById("square10").value;
		var  box11 = document.getElementById("square11").value;
		var  box12 = document.getElementById("square12").value;
		
		var  box20 = document.getElementById("square20").value;
		var  box21 = document.getElementById("square21").value;
		var  box22 = document.getElementById("square22").value;
		var win = 0;
		var tests = "";
			if(box00 == "x" && box01 == "x" && box02 == "x"){
				tests = 'คุณชนะแล้ว 00 ,01 ,02';
				win = 1;
			}else if(box00 == "x" && box10 == "x" && box20 == "x"){
				tests = 'คุณชนะแล้ว 00 ,10 ,20';
				win = 1;
			}else if(box00 == "x" && box11 == "x" && box22 == "x"){
				tests = 'คุณชนะแล้ว 00 ,11 ,22';
				win = 1;
			}else if(box02 == "x" && box12 == "x" && box22 == "x"){
				tests = 'คุณชนะแล้ว 02 ,12 ,22';
				win = 1;
			}else if(box02 == "x" && box11 == "x" && box20 == "x"){
				tests = 'คุณชนะแล้ว 02 ,11 ,20';
				win = 1;
			}else if(box20 == "x" && box21 == "x" && box22 == "x"){
				tests = 'คุณชนะแล้ว 20 ,21 ,22';
				win = 1;
			}else if(box01 == "x" && box11 == "x" && box21 == "x"){
				tests = 'คุณชนะแล้ว 01 ,11 ,21';
				win = 1;
			}else if(box10 == "x" && box11 == "x" && box12 == "x"){
				tests = 'คุณชนะแล้ว 10 ,11 ,12';
				win = 1;
			}
			
			if(box00 == "o" && box01 == "o" && box02 == "o"){
				tests = 'Bot ชนะแล้ว 00 ,01 ,02';
				win = 1;
			}else if(box00 == "o" && box10 == "o" && box20 == "o"){
				tests = 'Bot ชนะแล้ว 00 ,10 ,20';
				win = 1;
			}else if(box00 == "o" && box11 == "o" && box22 == "o"){
				tests = 'Bot ชนะแล้ว 00 ,11 ,22';
				win = 1;
			}else if(box02 == "o" && box12 == "o" && box22 == "o"){
				tests = 'Bot ชนะแล้ว 02 ,12 ,22';
				win = 1;
			}else if(box02 == "o" && box11 == "o" && box20 == "o"){
				tests = 'Bot ชนะแล้ว 02 ,11 ,20';
				win = 1;
			}else if(box20 == "o" && box21 == "o" && box22 == "o"){
				tests = 'Bot ชนะแล้ว 20 ,21 ,22';
				win = 1;
			}else if(box01 == "o" && box11 == "o" && box21 == "o"){
				tests = 'Bot ชนะแล้ว 01 ,11 ,21';
				win = 1;
			}else if(box10 == "o" && box11 == "o" && box12 == "o"){
				tests = 'Bot ชนะแล้ว 10 ,11 ,12';
				win = 1;
			}
		
		if(win == 1){
			for(var i = 0 ; i < 3 ; i++){
				for(var j = 0 ; j < 3 ; j++){
					document.getElementById("square"+i+j).disabled = true;
				}
			}
			listWinThree.push(tests);
		}
		let text = "";
		for (var i = 0; i < listWinThree.length; i++) {
		  text += listWinThree[i] + "<br>";
		}
		document.getElementById("listWin").innerHTML = text;
}