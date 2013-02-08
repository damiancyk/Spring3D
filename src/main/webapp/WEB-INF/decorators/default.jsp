<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="dec"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.*,java.util.*,javax.servlet.*"%>

<!DOCTYPE HTML>
<html>
<head>
<title><dec:title default="Organizer" /></title>
<link rel="stylesheet"
	href="<c:url value="/resources/style/style.css" />" media="all" />
<script type="text/javascript" src="resources/js/jquery-1.9.1.min.js"></script>
<dec:head />
<script>
	$(document).ready(function() {
		var div = $("#container");
		div.css("opacity", "0.1");
		div.css("height", "200px");
		div.css("width", "200px");
		div.animate({
			height : '600px',
			width : '900px',
			opacity : '0.7'
		}, "slow");
		
		var element = $("#idMenuList");
		element.hover(function(){
			element.css("color", "red");
			    },
			    function(){
			    	element.css("color", "black");
			  }); 
		
		$("#line").css("posX","500");
		
		$("a").click(function(){
			$("#line").animate({opacity: "0.1"});
		});
	});
</script>
</head>
<body>
<div id="line"></div>
	<div id="container">
		<div id="menuUp">
			<ul>
				<li><a href="<%=request.getContextPath()%>/">START</a></li>
				<li><a href="<%=request.getContextPath()%>/another">PRZYWITANIE</a></li>
				<li><select id="idMenuList" name="mydropdown">
						<option value="Milk">Fresh Milk</option>
						<option value="Cheese">Old Cheese</option>
						<option value="Bread">Hot Bread</option>
				</select></li>
			</ul>
		</div>
		<div id="menuLeft">
			<ul>
				<li>grupowe</li>
				<li><a class="buttonCalendar"
					href="<%=request.getContextPath()%>/">INNA OPCJA</a></li>
			</ul>

			<ul>
				<li>dodatkowe</li>
				<li>KALKULATOR</li>
			</ul>
		</div>

		<div id="contentsBody">
			<dec:body />
		</div>

		<div id="footer">Designed by Damian Pięta</div>
	</div>
</body>
</html>
