<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page
	import="java.util.List, br.com.alura.gerenciador.servlet.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java Standard Taglib</title>
</head>
<body>

	Lista de Empresas:
	<br />

	<ul>
		<core:forEach items="${empresas}" var="empresa">		
			<li>
				${empresa.nome} -
				<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/> 
			</li>
		</core:forEach>
	</ul>

</body>
</html>