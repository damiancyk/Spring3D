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
		var div = $("#menuUp");
		div.css("opacity", "0.1");
		div.animate({
			opacity : '0.7'
		}, "slow");

		var element = $("#idMenuList");
		element.hover(function() {
			element.css("color", "red");
		}, function() {
			element.css("color", "black");
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
				<li><a href="<c:url value='/j_spring_security_logout' />">WYLOGUJ</a></li>
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
