<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page
	import="java.util.List,br.com.alura.gerenciador.modelo.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<core:url value="/entrada?acao=RemoveEmpresa&id=" var="linkServletRemoveEmpresa"/>
<core:url value="/entrada?acao=MostraEmpresa&id=" var="linkServletMostraEmpresa"/>
<core:url value="/formNovaEmpresa.jsp" var="linkEntradaNovaEmpresa"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista Empresas</title>
</head>
<body>

	<core:if test="${not empty empresa }">
		Empresa ${ empresa } cadastrada com sucesso!		
	</core:if>

	Lista de Empresas:
	<br />

	<ul>
		<core:forEach items="${empresas}" var="empresa">		
			<li>
				${empresa.id} - 
				${empresa.nome} -
				<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>
				<a href="${linkServletRemoveEmpresa}${empresa.id}">Remove</a>
				<a href="${linkServletMostraEmpresa}${empresa.id}">Editar</a>
			</li>
		</core:forEach>
	</ul>
	
	<form action="${linkEntradaNovaEmpresa}" method="post">
	
		<button type="submit">Nova Empresa</button>
	
	</form>

</body>
</html>