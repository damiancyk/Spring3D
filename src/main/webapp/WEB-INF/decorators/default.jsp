<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="dec"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.*,java.util.*,javax.servlet.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title><dec:title default="Organizer" /></title>
<link rel="stylesheet"
	href="<c:url value="/resources/style/default.css" />" media="all" />
<script type="text/javascript" src="resources/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="resources/js/validator.js"></script>
<dec:head />
</head>
<body>
	<div id="window">
		<div id="menu">
			<ul>
				<li><a href="<%=request.getContextPath()%>">START</a></li>
				<li><a href="<%=request.getContextPath()%>/another">ANOTHER</a></li>
				<li><a href="<%=request.getContextPath()%>/webGL">webGL</a></li>
				<li><a href="<c:url value='/j_spring_security_logout' />">LOGOUT</a></li>
				<li>
			</ul>
		</div>
		<div id="contents">
			<dec:body />
		</div>

		<div id="footer">Designed by Damian Pięta</div>
	</div>
</body>
</html>
