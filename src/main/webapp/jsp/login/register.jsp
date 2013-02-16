<%@page language="Java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Rejestracja</title>
<script>
	$(document)
			.ready(
					function() {
						$('#idBtnRegister').click(function() {
							//e.preventDefault();
						});

						//$("#idBtnRegister").attr('disabled', 'disabled');
						$("#idBtnRegister").css("display", "none");

						$("input")
								.blur(
										function() {
											if (($("#idLoginInfo")
													.hasClass("messageGood")) == true
													&& ($("#idEmailInfo")
															.hasClass("messageGood")) == true
													&& ($("#idPasswordInfo")
															.hasClass("messageGood")) == true) {
												$("#idBtnRegister").css(
														"display", "inline");
											} else {
												$("#idBtnRegister").css(
														"display", "none");
											}
										});

						$("#idLoginInput")
								.keyup(
										function() {
											if ($
													.trim($("#idLoginInput")
															.val()).length > 0)
												isBusyLogin();
											else {
												$("#idLoginInfo")
														.removeClass(
																"messageGood messageBad")
														.addClass("messageInfo");
												$('#idLoginInfo').html(
														"wpisz login");
											}
										});

						$("#idEmailInput").blur(
								function() {
									var str = $.trim($("#idEmailInput").val());
									if (str.length > 0) {
										if (validateEmail(str) == true) {
											$("#idEmailInfo").removeClass(
													"messageInfo messageBad")
													.addClass("messageGood");
											$('#idEmailInfo').html(
													"poprawny email");
										} else {
											$("#idEmailInfo").removeClass(
													"messageGood messageInfo")
													.addClass("messageBad");
											$('#idEmailInfo').html(
													"niepoprawny email");
										}
									} else {
										$("#idEmailInfo").removeClass(
												"messageGood messageBad")
												.addClass("messageInfo");
										$('#idEmailInfo').html("wpisz email");
									}
								});

						$("#idPasswordInput").blur(
								function() {
									var str = $.trim($("#idPasswordInput")
											.val());
									if (str.length > 0) {
										if (validatePassword(str) == true) {
											$("#idPasswordInfo").removeClass(
													"messageInfo messageBad")
													.addClass("messageGood");
											$('#idPasswordInfo').html(
													"haslo poprawne");
										} else {
											$("#idPasswordInfo").removeClass(
													"messageGood messageInfo")
													.addClass("messageBad");
											$('#idPasswordInfo').html(
													"haslo za krotkie");
										}
									} else {
										$("#idPasswordInfo").removeClass(
												"messageGood messageBad")
												.addClass("messageInfo");
										$('#idPasswordInfo')
												.html("wpisz haslo");
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
				<form:form method="post" id="idFormRegister" action="register"
					commandName="user">
					<table>
						<tr>
							<td><form:label path="login">
						Login
					</form:label></td>
							<td><form:input class="inputSimple" path="login"
									id="idLoginInput" value="${user.login}" /></td>
							<td><div id="idLoginInfo"></div></td>
						</tr>
						<tr>
							<td><form:label path="login">
						Email
					</form:label></td>
							<td><form:input class="inputSimple" path="email"
									id="idEmailInput" value="${user.email}" /></td>
							<td><div id="idEmailInfo"></div></td>
						</tr>
						<tr>

							<td><form:label path="password">
						Haslo
					</form:label></td>
							<td><form:input class="inputSimple" type="password"
									path="password" id="idPasswordInput" value=" ${user.password}" /></td>
							<td><div id="idPasswordInfo"></div></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" class="button"
								id="idBtnRegister" value="zakoncz rejestracje" /></td>
						</tr>
					</table>
				</form:form>
			</div>
		</c:if>
	</div>
</body>
</html>