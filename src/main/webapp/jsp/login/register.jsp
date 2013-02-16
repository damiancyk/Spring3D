<%@page language="Java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Rejestracja</title>
<script>
	$(document).ready(function() {
		$('#btnRegister').click(function() {
			var sEmail = $('#registerEmail').val();
			if ($.trim(sEmail).length == 0) {
				alert('Please enter valid email address');
				e.preventDefault();
			}
			if (validateEmail(sEmail)) {
				alert('Email is valid');
			} else {
				alert('Invalid Email Address');
				e.preventDefault();
			}
		});
	});
</script>
</head>
<body>
	<div class="register">
		<h3>Rejestracja</h3>
		<input class="buttonBack" type=button value="powrot"
			onCLick="history.back()"> <br />


		<c:if test="${!empty user}">
			<div class=form>

				<br />
				<form:form method="post" action="register" commandName="user">
					<table>
						<tr>
							<td><form:label path="login">
						Login
					</form:label></td>
							<td><form:input class="inputSimple" path="login"
									value="${user.login}" /></td>
						</tr>
						<tr>
							<td><form:label path="login">
						Email
					</form:label></td>
							<td><form:input class="inputSimple" path="email"
									id="registerEmail" value="${user.email}" /></td>
						</tr>
						<tr>
							<td><form:label path="password">
						Haslo
					</form:label></td>
							<td><form:input class="inputSimple" type="password"
									path="password" value="${user.password}" /></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" class="button"
								id="btnRegister" value="zakoncz rejestracje" /></td>
						</tr>
					</table>
				</form:form>
			</div>
		</c:if>
	</div>
</body>
</html>