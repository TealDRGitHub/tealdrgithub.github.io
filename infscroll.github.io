<!DOCTYPE html>
<html>
<head>
    <title>SCROLL</title>
</head>
<style>
	#container {
		text-align: center;
		font-size: 96px;
	}
</style>
<body>
	
    
  	<div id='container'>

    </div>
</body>
<body onload="fillData(); fillData(); fillData(); fillData(); fillData(); fillData(); fillData(); fillData(); fillData(); fillData(); fillData(); fillData(); fillData(); fillData(); fillData(); fillData(); ">
</body>
<element onscroll="fillData()">
<script>
	let fillData = () => {
        let ele = document.getElementById('container');
        ele.innerHTML += 'SCROLL!<br>';
    }
	window.onscroll = function(e) {
    if ((window.innerHeight + window.scrollY) <= document.body.offsetHeight) {
		if ((window.innerHeight + window.scrollY) >= (document.body.offsetHeight - 250)) {
        fillData()
		fillData()
		fillData()
		fillData()
		fillData()
		fillData()
		fillData()
		fillData()
		fillData()
		}
	}
};


	setInterval(function() {
 }, 1 );
</script>
</html>
