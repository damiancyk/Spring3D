<%@page language="Java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
</head>
<body>
	<h3>lista itemow:</h3>
	<c:if test="${!empty itemList}">
		<div class="list">
			<c:forEach items="${itemList}" var="cont">
				<div class="element"
					onclick="window.location = '<%= request.getContextPath() %>/item/one/${cont.idItem}'">
					<table>
						<tr>
							<td>item</td>
							<td>${cont.name}</td>
						</tr>
						<tr>
							<th colspan=2>${cont.description}</th>
						</tr>
					</table>
				</div>
			</c:forEach>
		</div>
	</c:if>
</body>
</html>