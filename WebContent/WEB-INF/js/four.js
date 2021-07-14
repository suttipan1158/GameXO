/**
 * 
 */

function four(){
	 document.getElementById("sectionFour").style.display = "block";
	 document.getElementById("sectionThree").style.display = "none";
	 document.getElementById("NumBox").value = "4";
 }

var player = 1;
var listWinFour = [];

/*การทำงานในส่วนของหน้ากระดาน 4x4*/
function myFunctionFour(i,j) {
	var random01 = Math.floor(Math.random() * 3);
	var random02 = Math.floor(Math.random() * 3);

		document.getElementById("four"+i+j).value = "x";
		document.getElementById("four"+i+j).disabled = true;

		
		if(player ==1){
			player = 2;
			document.getElementById("four"+i+j).value = "x";
			document.getElementById("four"+i+j).disabled = true;
		}
		for(var i = 0; i< 1 ; i++){
			if(document.getElementById("four"+random01+random02).value == ""){
				document.getElementById("four"+random01+random02).value = "o";
				document.getElementById("four"+random01+random02).disabled = true;
				i++;
			}else{
				random01 = Math.floor(Math.random() * 3);
				random02 = Math.floor(Math.random() * 3);
				i--;
			}
		}
		var  box00 = document.getElementById("four00").value;
		var  box01 = document.getElementById("four01").value;
		var  box02 = document.getElementById("four02").value;
		var  box03 = document.getElementById("four03").value;
		
		var  box10 = document.getElementById("four10").value;
		var  box11 = document.getElementById("four11").value;
		var  box12 = document.getElementById("four12").value;
		var  box13 = document.getElementById("four13").value;
		
		var  box20 = document.getElementById("four20").value;
		var  box21 = document.getElementById("four21").value;
		var  box22 = document.getElementById("four22").value;
		var  box23 = document.getElementById("four23").value;
		
		var  box30 = document.getElementById("four30").value;
		var  box31 = document.getElementById("four31").value;
		var  box32 = document.getElementById("four32").value;
		var  box33 = document.getElementById("four33").value;
		
		var win = 0;
		var tests = "";
		var check_X = "x";
		var check_O = "o";
			if(box00 == check_X && box01 == check_X && box02 == check_X && box03 == check_X){
				tests = 'คุณชนะแล้ว 00 ,01 ,02,03';
				win = 1;
			}else if(box00 == check_X&& box10 == check_X && box20 == check_X && box30 == check_X){
				tests = 'คุณชนะแล้ว 00 ,10 ,20,30';
				win = 1;
			}else if(box00 == check_X && box11 == check_X && box22 == check_X && box33 == check_X){
				tests = 'คุณชนะแล้ว 00 ,11 ,22,33';
				win = 1;
			}else if(box02 == check_X && box12 == check_X && box22 == check_X  && box32 == check_X){
				tests = 'คุณชนะแล้ว 02 ,12 ,22,32';
				win = 1;
			}else if(box03 == check_X && box12 == check_X && box21 == check_X && box30 == check_X){
				tests = 'คุณชนะแล้ว 02 ,11 ,20,30';
				win = 1;
			}else if(box20 == check_X && box21 == check_X && box22 == check_X && box23 == check_X){
				tests = 'คุณชนะแล้ว 20 ,21 ,22,23';
				win = 1;
			}else if(box01 == check_X && box11 == check_X && box21 == check_X && box31 == check_X){
				tests = 'คุณชนะแล้ว 01 ,11 ,21,31';
				win = 1;
			}else if(box10 == check_X && box11 == check_X && box12 == check_X && box13 == check_X){
				tests = 'คุณชนะแล้ว 10 ,11 ,12,13';
				win = 1;
			}else if(box03 == check_X && box13 == check_X && box23 == check_X && box33 == check_X){
				tests = 'คุณชนะแล้ว 03 ,13 ,23,33';
				win = 1;
			}
			else if(box30 == check_X && box31 == check_X && box32 == check_X && box33 == check_X){
				tests = 'คุณชนะแล้ว 30 ,31 ,32,33';
				win = 1;
			}
			
			if(box00 == check_O && box01 == check_O && box02 == check_O && box03 == check_O){
				tests = 'Bot ชนะแล้ว 00 ,01 ,02,03';
				win = 1;
			}else if(box00 == check_O && box10 == check_O && box20 == check_O && box30 == check_O){
				tests = 'Bot ชนะแล้ว 00 ,10 ,20,30';
				win = 1;
			}else if(box00 == check_O && box11 == check_O && box22 == check_O  && box33 == check_O){
				tests = 'Bot ชนะแล้ว 00 ,11 ,22,33';
				win = 1;
			}else if(box02 == check_O && box12 == check_O && box22 == check_O && box32 == check_O){
				tests = 'Bot ชนะแล้ว 02 ,12 ,22,32';
				win = 1;
			}else if(box03 == check_O && box12 == check_O && box21 == check_O && box30 == check_O){
				tests = 'Bot ชนะแล้ว 02 ,11 ,20,30';
				win = 1;
			}else if(box20 == check_O && box21 == check_O && box22 == check_O && box33 == check_O){
				tests = 'Bot ชนะแล้ว 20 ,21 ,22,33';
				win = 1;
			}else if(box01 == check_O && box11 == check_O && box21 == check_O && box31 == check_O){
				tests = 'Bot ชนะแล้ว 01 ,11 ,21,31';
				win = 1;
			}else if(box10 == check_O && box11 == check_O && box12 == check_O && box13 == check_O){
				tests = 'Bot ชนะแล้ว 10 ,11 ,12,13';
				win = 1;
			}else if(box03 == check_O && box13 == check_O && box23 == check_O && box33 == check_O){
				tests = 'คุณชนะแล้ว 03 ,13 ,23,33';
				win = 1;
			}
			else if(box30 == check_O && box31 == check_O && box32 == check_O&& box33 == check_O){
				tests = 'คุณชนะแล้ว 30 ,31 ,32,33';
				win = 1;
			}
		
		if(win == 1){
			for(var i = 0 ; i < 4 ; i++){
				for(var j = 0 ; j < 4 ; j++){
					document.getElementById("four"+i+j).disabled = true;
				}
			}
			listWinFour.push(tests);
		}
		let text = "";
		for (var i = 0; i < listWinFour.length; i++) {
		  text += listWinFour[i] + "<br>";
		}
		document.getElementById("listWinFour").innerHTML = text;
}