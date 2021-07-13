<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style type="text/css">
/*	Css สี่เหลี่ยม '*/
 .square {
	width: 140px;
	height: 140px;
	font-size: 60px;
	}

</style>
<script type="text/javascript">
 function three(){
	 document.getElementById("sectionThree").style.display = "block";
	 document.getElementById("sectionFour").style.display = "none";
	 document.getElementById("NumBox").value = "3";
 }
 function four(){
	 document.getElementById("sectionFour").style.display = "block";
	 document.getElementById("sectionThree").style.display = "none";
	 document.getElementById("NumBox").value = "4";
 }
</script>
</head>
<body>
	<div class="container"><br>
		<button id="reset" class="btn btn-primary btn-lg" onclick="ResetGame()">Reset</button>
		<button id="three" class="btn btn-primary btn-lg" onclick="three()" value="3">3x3</button>
		<button id="four" class="btn btn-primary btn-lg" onclick="four()">4x4</button>
		<input type="hidden" id="NumBox" value="3">
		<section id="sectionThree">
			<br><div class="row">
			  <div class="input-group col-md-6">
				<%for(int i = 0 ; i < 3 ; i++){ %>
					<%for(int j = 0 ; j < 3 ; j++){ %>
						<input type="button" class="square" id="square<%=i%><%=j%>"  value="" onclick="myFunction(<%=i%>,<%=j%>)" >
					<%} %>
					<br>
				<%} %>
			</div>
			<div class="col-mb-3">
				<h1>รายการแข่งขัน :</h1>
				<div id="listWin" >
					
				</div>
			</div>
		    </div><br>
		 </section>
		 <section id="sectionFour" style="display: none;">
		    <br><div class="row">
			  <div class="input-group col-md-7">
				<%for(int i = 0 ; i < 4 ; i++){ %>
					<%for(int j = 0 ; j < 4 ; j++){ %>
						<input type="button" class="square" id="four<%=i%><%=j%>"  value="" onclick="myFunctionFour(<%=i%>,<%=j%>)" >
					<%} %>
					<br>
				<%} %>
			</div>
			<div class="col-mb-2">
				<h3>รายการแข่งขัน :</h3>
				<div id="listWinFour" >
				</div>
			</div>
		    </div><br>
		 </section>
	</div>
<script>
var player = 1;
var listWinThree = [];
var listWinFour = [];
/*การทำงานในส่วนของหน้ากระดาน 3x3*/
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
		
			if(document.getElementById("square"+random01+random02).value == ""){
				document.getElementById("square"+random01+random02).value = "o";
				document.getElementById("square"+random01+random02).disabled = true;
			}else{
				random01 = Math.floor(Math.random() * 3);
				random02 = Math.floor(Math.random() * 3);
				if(document.getElementById("square"+random01+random02).value == ""){
					document.getElementById("square"+random01+random02).value = "o";
					document.getElementById("square"+random01+random02).disabled = true;
				}else{
					random01 = Math.floor(Math.random() * 3);
					random02 = Math.floor(Math.random() * 3);
					if(document.getElementById("square"+random01+random02).value == ""){
						document.getElementById("square"+random01+random02).value = "o";
						document.getElementById("square"+random01+random02).disabled = true;
					}
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
/*การทำงานในส่วนของหน้ากระดาน 4x4*/
function myFunctionFour(i,j) {
	var random01 = Math.floor(Math.random() * 3);
	var random02 = Math.floor(Math.random() * 3);
	console.log("randomFind ="+random01);
	console.log("randomFind ="+random02);

		document.getElementById("four"+i+j).value = "x";
		document.getElementById("four"+i+j).disabled = true;

		
		if(player ==1){
			player = 2;
			document.getElementById("four"+i+j).value = "x";
			document.getElementById("four"+i+j).disabled = true;
		}
		if(document.getElementById("four"+random01+random02).value == ""){
			document.getElementById("four"+random01+random02).value = "o";
			document.getElementById("four"+random01+random02).disabled = true;
		}else{
			random01 = Math.floor(Math.random() * 3);
			random02 = Math.floor(Math.random() * 3);
			if(document.getElementById("four"+random01+random02).value == ""){
				document.getElementById("four"+random01+random02).value = "o";
				document.getElementById("four"+random01+random02).disabled = true;
			}else{
				random01 = Math.floor(Math.random() * 3);
				random02 = Math.floor(Math.random() * 3);
				if(document.getElementById("four"+random01+random02).value == ""){
					document.getElementById("four"+random01+random02).value = "o";
					document.getElementById("four"+random01+random02).disabled = true;
				}else{
					random01 = Math.floor(Math.random() * 3);
					random02 = Math.floor(Math.random() * 3);
					if(document.getElementById("four"+random01+random02).value == ""){
						document.getElementById("four"+random01+random02).value = "o";
						document.getElementById("four"+random01+random02).disabled = true;
					}
				}
			}
			
		}
	
	console.log("four"+i+j);
	console.log("random01"+random01);
	console.log("random02"+random02);
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
			if(box00 == "x" && box01 == "x" && box02 == "x" && box03 == "x"){
				tests = 'คุณชนะแล้ว 00 ,01 ,02,03';
				win = 1;
			}else if(box00 == "x" && box10 == "x" && box20 == "x" && box30 == "x"){
				tests = 'คุณชนะแล้ว 00 ,10 ,20,30';
				win = 1;
			}else if(box00 == "x" && box11 == "x" && box22 == "x" && box33 == "x"){
				tests = 'คุณชนะแล้ว 00 ,11 ,22,33';
				win = 1;
			}else if(box02 == "x" && box12 == "x" && box22 == "x"  && box32 == "x"){
				tests = 'คุณชนะแล้ว 02 ,12 ,22,32';
				win = 1;
			}else if(box03 == "x" && box12 == "x" && box21 == "x" && box30 == "x"){
				tests = 'คุณชนะแล้ว 02 ,11 ,20,30';
				win = 1;
			}else if(box20 == "x" && box21 == "x" && box22 == "x" && box23 == "x"){
				tests = 'คุณชนะแล้ว 20 ,21 ,22,23';
				win = 1;
			}else if(box01 == "x" && box11 == "x" && box21 == "x" && box31 == "x"){
				tests = 'คุณชนะแล้ว 01 ,11 ,21,31';
				win = 1;
			}else if(box10 == "x" && box11 == "x" && box12 == "x"&& box13 == "x"){
				tests = 'คุณชนะแล้ว 10 ,11 ,12,13';
				win = 1;
			}else if(box03 == "x" && box13 == "x" && box23 == "x"&& box33 == "x"){
				tests = 'คุณชนะแล้ว 03 ,13 ,23,33';
				win = 1;
			}
			else if(box30 == "x" && box31 == "x" && box32 == "x"&& box33 == "x"){
				tests = 'คุณชนะแล้ว 30 ,31 ,32,33';
				win = 1;
			}
			
			if(box00 == "o" && box01 == "o" && box02 == "o"&& box03 == "o"){
				tests = 'Bot ชนะแล้ว 00 ,01 ,02,03';
				win = 1;
			}else if(box00 == "o" && box10 == "o" && box20 == "o" && box30 == "o"){
				tests = 'Bot ชนะแล้ว 00 ,10 ,20,30';
				win = 1;
			}else if(box00 == "o" && box11 == "o" && box22 == "o"  && box33 == "o"){
				tests = 'Bot ชนะแล้ว 00 ,11 ,22,33';
				win = 1;
			}else if(box02 == "o" && box12 == "o" && box22 == "o"  && box32 == "o"){
				tests = 'Bot ชนะแล้ว 02 ,12 ,22,32';
				win = 1;
			}else if(box03 == "o" && box12 == "o" && box21 == "o" && box30 == "o"){
				tests = 'Bot ชนะแล้ว 02 ,11 ,20,30';
				win = 1;
			}else if(box20 == "o" && box21 == "o" && box22 == "o" && box33 == "o"){
				tests = 'Bot ชนะแล้ว 20 ,21 ,22,33';
				win = 1;
			}else if(box01 == "o" && box11 == "o" && box21 == "o" && box31 == "o"){
				tests = 'Bot ชนะแล้ว 01 ,11 ,21,31';
				win = 1;
			}else if(box10 == "o" && box11 == "o" && box12 == "o" && box13 == "o"){
				tests = 'Bot ชนะแล้ว 10 ,11 ,12,13';
				win = 1;
			}else if(box03 == "x" && box13 == "x" && box23 == "x"&& box33 == "x"){
				tests = 'คุณชนะแล้ว 03 ,13 ,23,33';
				win = 1;
			}
			else if(box30 == "x" && box31 == "x" && box32 == "x"&& box33 == "x"){
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
</script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>