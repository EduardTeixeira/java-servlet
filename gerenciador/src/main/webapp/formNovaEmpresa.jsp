<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<core:url value="/entrada" var="linkServletNovaEmpresa"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="${linkServletNovaEmpresa}" method="post">
	
		<input type="hidden" name="acao" value="NovaEmpresa"/>

		Nome: <input type="text" name="nome" />
		
		Data Abertura: <input type="text" name="data" />
		
		<button>Enviar</button>

	</form>

</body>
</html>