/**
 * 
 */
/*การทำงานในส่วนของการ Reset ค่า*/
function ResetGame() {
	var  NumBox = document.getElementById("NumBox").value;
	if(NumBox == 3){
		for(var i = 0 ; i < 3 ; i++){
			for(var j = 0 ; j < 3 ; j++){
				document.getElementById("square"+i+j).value = "";
				document.getElementById("square"+i+j).disabled = false;
			}
		}
	}else{
		for(var i = 0 ; i < 4 ; i++){
			for(var j = 0 ; j < 4 ; j++){
				document.getElementById("four"+i+j).value = "";
				document.getElementById("four"+i+j).disabled = false;
			}
		}
	}
	
}