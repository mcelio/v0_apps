<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Teste prático - Marcos Vinícius</title>
</head>
<body>
	<c:url value="/j_spring_security_check" var="loginUrl" />
	<center>
		<c:if test="${param.error}">
			<p style="color:darkred; font-size: 14px; padding-bottom: 10px;">
				<c:out value="Usuário e/ ou senha inválidos!"/>
			</p>

		</c:if>
		<div>
			<form id="loginForm" method="post" action="${loginUrl}">
				<p>
					Usuário: <br /> <input id="j_username" name="j_username" type="text" />
				</p>
				<p>
					Senha: <br /> <input id="j_password" name="j_password" type="text" />
				</p>
				<p>
					<input type="submit" value="Login" />
				</p>
			</form>
		</div>

	</center>
	</body>
</html>