<%@page language="Java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<script>
	$(document).ready(function() {
		$("button").click(function() {
			$("h3").css("color","red");
			$("p").fadeToggle(1000);
		});
	});
</script>
</head>
<body>
	<h3>ORGANIZER 2012</h3>
	<br />
	<%="Hello JSP!"%>
	<br />
	<%!String funkcja() {
		String x = "<table border =1>";
		for (int i = 0; i < 11; i++) {
			x += "<td>";
			x += i;
			x += "</td>";
		}
		x += "</table>";
		return x;
	}%>
<button>kliknij se</button>
	<%=funkcja()%>

</body>
</html>