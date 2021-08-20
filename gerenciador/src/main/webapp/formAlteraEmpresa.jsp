<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<core:url value="/alteraEmpresa" var="linkServletAlteraEmpresa" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Atualizar Empresa</title>
</head>
<body>

	<form action="${linkServletAlteraEmpresa}" method="post">
	
		<input type="hidden" name="id" value="${empresa.id}"/>

		Nome: <input type="text" name="nome" value="${empresa.nome} "/> 
		
		Data Abertura: 
		<input 
			type="text" 
			name="data" 
			value="<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>"
		/>		

		<button>Enviar</button>

	</form>

</body>
</html>