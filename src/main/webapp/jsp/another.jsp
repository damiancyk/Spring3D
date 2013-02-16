<%@page language="Java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
</head>
<body>
<h3>osoba z bazy o id: ${user.idUser}</h3>
	<p id="pUsername">
		<b>${user.login}</b>
	</p>
</body>
</html>