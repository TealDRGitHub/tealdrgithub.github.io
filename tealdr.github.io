<!DOCTYPE html>
<HTML>
<head>
	<title>Power Game</title>
</head>
<style>
.stuff{
	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-khtml-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

.items {
	background-color: rgb(238, 238, 238);
	width: 50%;
	padding: 10px;
	border-radius: 25px;
	font-size: 35px;
	font-weight: bold;
}

.sectionLeft {
	float: left;
	width: 80%;
}
.sectionRight {
	float: right;
	width: 20%;
}

.shopButton {
	background-color: #EEEEEE;
	transition: all .2s ease-in-out;
	border-radius: 25px;
	width: 100%;
	margin: 10px 0px 10px 0px;
}
			
.shopButton:hover {
	background-color: #DDDDDD	;
	transition: all .2s ease-in-out;
}

.shopButton #nameAndCost p {
	margin: 0px;
	width: 60%;
}
			
.shopButton #nameAndCost p:first-of-type {
	font-size: 24px;
}
			
.shopButton #amount {
	font-size: 48px;
	color: #595959;
	font-family: roboto;
	width: 15%;
}
</style>

<body>
<div class="stuff">
<div class="sectionLeft">
<div class="items">
	<span id="money">75</span> Credits<br>
	<span id="electricity">0</span> Electricity<br>
	<span id="coal">0</span> Coal<br>
	<table class="shopButton" onclick="sellElectricity()">
		<tr>
				<td id="nameAndCost">
				<p>Sell Electricity</p>
				<p><span>3</span> Credits</td></p>
					</td>
		</tr>
	</table>
	<table class="shopButton" onclick="sellCoal()">
		<tr>
				<td id="nameAndCost">
				<p>Sell Coal</p>
				<p><span>1.5</span> Credits</td>
					</td>
		</tr>
	</table>
</div>
</div>
<div class="sectionRight">

	<table class="shopButton" onclick="buyAuto()">
		<tr>
				<td id="nameAndCost">
				<p>Buy Autoseller</p>
				<p><span>10</span> Credits</td>
					</td>
				<td id="amount"><span id="auto">0</span></td>
		</tr>
	</table>
	<br>
	<br>
	<table class="shopButton" onclick="buyCoal()">
		<tr>
				<td id="nameAndCost">
				<p>Coal</p>
				<p><span id="coalcost">2</span> Credits</td>
					</td>
					<td id="amount"><span id="coalshop">0</span></td>
		</tr>
	</table>
	<table class="shopButton" onclick="buyCoalGen()">
		<tr>
				<td id="nameAndCost">
				<p>Coal Generator</p>
				<p><span id="coalgencost">25</span> Credits</td>
					</td>
					<td id="amount"><span id="coalgen">0</span></td>
		</tr>
	</table>
	<table class="shopButton" onclick="buyPanel()">
		<tr>
				<td id="nameAndCost">
				<p>Solar Farm</p>
				<p><span id="panelcost">100</span> Credits</td>
					</td>
					<td id="amount"><span id="panels">0</span></td>
		</tr>
	</table>
	<table class="shopButton" onclick="buyWheel()">
		<tr>
				<td id="nameAndCost">
				<p>Water Wheels</p>
				<p><span id="wheelcost">150</span> Credits</td>
					</td>
					<td id="amount"><span id="wheels">0</span></td>
		</tr>
	</table>
	<table class="shopButton" onclick="buyTurbine()">
		<tr>
				<td id="nameAndCost">
				<p>Wind Turbines</p>
				<p><span id="turbinecost">300</span> Credits</td>
					</td>
					<td id="amount"><span id="turbines">0</span></td>
		</tr>
	</table>
</div>
</div></body>


<script>
	var money = 75
	var auto = 0
	var autocost = 10
	var electricity = 0
	var coal = 0
	var coalcost = 2
	var coalshop = 0
	
	var coalgen = 0
	var coalgencost = 25
	var panels = 0
	var panelcost = 100
	var panelpower = 1
	var wheels = 0
	var wheelcost = 150
	var wheelpower = 2
	var turbines = 0
	var turbinecost = 300
	var turbinepower = 5
	

	setInterval(function() {
				if (coalgen > 0, coal >= coalgen) {
					electricity = electricity + coalgen;
					coal = coal - coalgen;
					coalshop = coalshop - coalgen;
					document.getElementById("electricity").innerHTML = electricity;
					document.getElementById("coal").innerHTML = coal;
					document.getElementById("coalshop").innerHTML = coalshop;
				} else if (coalgen > 0, coal < coalgen) {
					electricity = electricity + coal;
					coal = 0;
					coalshop = 0;
					document.getElementById("electricity").innerHTML = electricity;
					document.getElementById("coal").innerHTML = coal;
					document.getElementById("coalshop").innerHTML = coalshop;
				}
				if (auto > 0, electricity >= auto) {
					money = money + auto * 3;
					electricity = electricity - auto;
					document.getElementById("electricity").innerHTML = electricity;
					document.getElementById("money").innerHTML = money;
					document.getElementById("auto").innerHTML = auto;
				} else if (auto > 0, electricity < auto) {
					money = money + electricity * 3;
					electricity = 0;
					document.getElementById("electricity").innerHTML = electricity;
					document.getElementById("money").innerHTML = money;
					document.getElementById("auto").innerHTML = auto;
				} 
				electricity = electricity + panels * panelpower + wheels * wheelpower + turbines * turbinepower
			}, 1000);
	
	function loadGame() {
				var savedGame = JSON.parse(localStorage.getItem("gameSave"));
				if (typeof savedGame.money !== "undefined") money = savedGame.money;
				if (typeof savedGame.auto !== "undefined") auto = savedGame.auto;
				if (typeof savedGame.electricity !== "undefined") electricity = savedGame.electricity;
				if (typeof savedGame.coal !== "undefined") coal = savedGame.coal;
				if (typeof savedGame.coalshop !== "undefined") coalshop = savedGame.coalshop;
				if (typeof savedGame.coalgen !== "undefined") coalgen = savedGame.coalgen;
				if (typeof savedGame.panels !== "undefined") panels = savedGame.panels;
				if (typeof savedGame.wheels !== "undefined") wheels = savedGame.wheels;
				if (typeof savedGame.turbines !== "undefined") turbines = savedGame.turbines;
			}
			
	window.onload = function() {
				loadGame();
				document.getElementById("money").innerHTML = money;
				document.getElementById("auto").innerHTML = auto;
				document.getElementById("electricity").innerHTML = electricity;
				document.getElementById("coal").innerHTML = coal;
				document.getElementById("coalshop").innerHTML = coalshop;
				document.getElementById("coalgen").innerHTML = coalgen;
				document.getElementById("panels").innerHTML = panels;
				document.getElementById("wheels").innerHTML = wheels;
				document.getElementById("turbines").innerHTML = turbines;
			};
			
	function saveGame() {
				var gameSave = {
					money: money,
					auto: auto,
					electricity: electricity,
					coal: coal,
					coalshop: coalshop,
					coalgen: coalgen,
					panels: panels,
					wheels: wheels,
					turbines: turbines
				};
				localStorage.setItem("gameSave", JSON.stringify(gameSave));
			}
			
	function buyAuto() {
				if (money >= autocost) {
					money = money - autocost;
					auto = auto + 1;
					document.getElementById("money").innerHTML = money;
					document.getElementById("autocost").innerHTML = autocost;
					document.getElementById("auto").innerHTML = auto;
				}
			};
	function buyCoal() {
				if (money >= coalcost) {
					money = money - coalcost;
					coal = coal + 1;
					coalshop = coalshop + 1;
					document.getElementById("money").innerHTML = money;
					document.getElementById("coalcost").innerHTML = coalcost;
					document.getElementById("coal").innerHTML = coal;
					document.getElementById("coalshop").innerHTML = coalshop;
				}
			};
	function buyCoalGen() {
				if (money >= coalgencost) {
					money = money - coalgencost;
					coalgen = coalgen + 1;
					
					document.getElementById("money").innerHTML = money;
					document.getElementById("coalgencost").innerHTML = coalgencost;
					document.getElementById("coalgen").innerHTML = coalgen;
				}
			};
	function buyPanel() {
				if (money >= panelcost) {
					money = money - panelcost;
					panels = panels + 1;
					
					document.getElementById("money").innerHTML = money;
					document.getElementById("panelcost").innerHTML = panelcost;
					document.getElementById("panels").innerHTML = panels;
				}
			};
	function buyWheel() {
				if (money >= wheelcost) {
					money = money - wheelcost;
					wheels = wheels + 1;
					
					document.getElementById("money").innerHTML = money;
					document.getElementById("wheelcost").innerHTML = wheelcost;
					document.getElementById("wheels").innerHTML = wheels;
				}
			};
	function buyTurbine() {
				if (money >= turbinecost) {
					money = money - turbinecost;
					turbines = turbines + 1;
					
					document.getElementById("money").innerHTML = money;
					document.getElementById("turbinecost").innerHTML = turbinecost;
					document.getElementById("turbines").innerHTML = turbines;
				}
			};


	function sellElectricity() {
				if (electricity > 0) {
					money = money + 3;
					electricity = electricity - 1;
					
					document.getElementById("money").innerHTML = money;
					document.getElementById("coalcost").innerHTML = coalcost;
					document.getElementById("electricity").innerHTML = electricity;
				}	
			};
	function sellCoal() {
				if (coal > 0) {
					money = money + 1.5;
					coal = coal - 1;
					coalshop = coalshop - 1;
					document.getElementById("money").innerHTML = money;
					document.getElementById("coalcost").innerHTML = coalcost;
					document.getElementById("coal").innerHTML = coal;
					document.getElementById("coalshop").innerHTML = coalshop;
				}	
			};
	
	setInterval(function() {
		saveGame()
	}, 10000);
</script>
