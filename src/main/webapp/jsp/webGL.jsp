
<!doctype html>
<html lang="en">
<head>
<title>Three.js -- Template</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
<style>
body {
	font-family: Monospace;
	font-weight: bold;
	background-color: #ccccff;
	margin: 0px;
	overflow: hidden;
}

#backWindow {
	color: black;
	position: absolute;
	top: 56px;
	left: 4px;
	text-align: left;
	z-index: 100;
	display: block;
	background: gray;
	border-style: dotted;
	border-width: 1px;
	border-color: black;
}
</style>

<script type="text/javascript" src="resources/js/Three.js/Three.js"></script>
<script type="text/javascript" src="resources/js/Three.js/Detector.js"></script>
<script type="text/javascript" src="resources/js/Three.js/Stats.js"></script>
<script type="text/javascript"
	src="resources/js/Three.js/THREEx.KeyboardState.js"></script>
<script type="text/javascript"
	src="resources/js/Three.js/THREEx.FullScreen.js"></script>
<script type="text/javascript"
	src="resources/js/Three.js/THREEx.WindowResize.js"></script>

<script type="text/javascript" src="resources/js/Three.js/_scene.js"></script>
<script>
	if (!Detector.webgl)
		Detector.addGetWebGLMessage();

	var container, scene, camera, renderer, controls;
	var keyboard = new THREEx.KeyboardState();
	var clock = new THREE.Clock();
	var SCREEN_WIDTH = window.innerWidth * 2 / 3, SCREEN_HEIGHT = window.innerHeight * 2 / 3;
	var defPos = 400;
	init();
	animate();

	// FUNCTIONS 		
	function init() {
		// scene
		scene = new THREE.Scene();

		//camera
		var VIEW_ANGLE = 45, ASPECT = SCREEN_WIDTH / SCREEN_HEIGHT, NEAR = 0.1, FAR = 20000;
		camera = new THREE.PerspectiveCamera(VIEW_ANGLE, ASPECT, NEAR, FAR);
		scene.add(camera);
		camera.position.set(200, 200, 400);
		camera.lookAt(scene.position);

		controls = new THREE.TrackballControls(camera);

		// renderer
		renderer = new THREE.WebGLRenderer();
		renderer.setSize(SCREEN_WIDTH, SCREEN_HEIGHT);

		// events
		THREEx.WindowResize(renderer, camera);

		// custom
		//sceneFloor(scene);
		//sceneSkyBox(scene, 5);
		//sceneLeadingCube(scene, -300, 50, 1000);

		sceneBook(scene, 0, 0, 0, 160, 250, 30);
	}

	function animate() {
		requestAnimationFrame(animate);
		render();
		update();
	}

	function update() {
		var timer = Date.now() * 0.0008;

		camera.position.x = (Math.cos(timer) * defPos);
		camera.position.z = (Math.sin(timer) * defPos);
		camera.lookAt(scene.position);

		stats.update();
	}

	function render() {
		renderer.render(scene, camera);
	}
</script>
<script>
	$(window).ready(function() {
		$("#contents").append(renderer.domElement);
	});
</script>
</head>
<body>

</body>
</html>
