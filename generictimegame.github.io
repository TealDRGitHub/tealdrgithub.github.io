<HTML>
<head>
	<title>Wait a minute...</title>
</head>
<style>
.stats{
	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-khtml-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	background-color: rgb(238, 238, 238);
	width: 100%;
	padding: 10px;
	text-align: center;
	border-radius: 25px;
	font-size: 35px;
	font-weight: bold;
}
#container {
		text-align: center;
		font-size: 56px;
		-webkit-touch-callout: none;
		-webkit-user-select: none;
		-khtml-user-select: none;
		-moz-user-select: none;
		-ms-user-select: none;
		user-select: none;
}

</style>
<body>
<div class="stats">

<span id="time">0</span> Seconds<br>

</div>
<div id='container'>

</div>
</body>

<script>
var time = 0
var minute = 60

let UnlockStage1 = () => {
        let ele = document.getElementById('container');
        ele.innerHTML += 'Why have you waited this long?<br><br>';
    }
let UnlockStage2 = () => {
        let ele = document.getElementById('container');
        ele.innerHTML += 'Stop. This is getting out of hand.<br><br>';
    }
let UnlockStage3 = () => {
        let ele = document.getElementById('container');
        ele.innerHTML += 'What are you doing here?<br><br>';
    }
let UnlockStage4 = () => {
        let ele = document.getElementById('container');
        ele.innerHTML += 'Why are you still here?<br><br>';
    }
let UnlockStage5 = () => {
        let ele = document.getElementById('container');
        ele.innerHTML += 'Get out. Seriously.<br><br>';
    }
let UnlockStage6 = () => {
        let ele = document.getElementById('container');
        ele.innerHTML += 'I told you to get out.<br><br>';
    }
let UnlockStage7 = () => {
        let ele = document.getElementById('container');
        ele.innerHTML += 'What is wrong with you?<br><br>';
    }
let UnlockStage8 = () => {
        let ele = document.getElementById('container');
        ele.innerHTML += '...<br><br>';
    }
let UnlockStage9 = () => {
        let ele = document.getElementById('container');
        ele.innerHTML += '...<br><br>';
    }
let UnlockStage10 = () => {
        let ele = document.getElementById('container');
        ele.innerHTML += 'Go play infscroll.github.io or funnigameslol.github.io instead.<br><br>';
    }





setInterval(function() {
				time = time + 1;
				document.getElementById("time").innerHTML = time;
				if (time == minute * 1) {
				UnlockStage1()
				}
				if (time == minute * 2) {
				UnlockStage2()
				}
				if (time == minute * 3) {
				UnlockStage3()
				}
				if (time == minute * 4) {
				UnlockStage4()
				}
				if (time == minute * 5) {
				UnlockStage5()
				}
				if (time == minute * 6) {
				UnlockStage6()
				}
				if (time == minute * 7) {
				UnlockStage7()
				}
				if (time == minute * 8) {
				UnlockStage8()
				}
				if (time == minute * 9) {
				UnlockStage9()
				}
				if (time == minute * 10) {
				UnlockStage10()
				}
			}, 1000);
</script>
