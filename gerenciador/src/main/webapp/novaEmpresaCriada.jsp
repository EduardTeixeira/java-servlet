<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>

<html>

	<body>
	
		<core:if test="${not empty empresa }">
			Empresa ${ empresa } cadastrada com sucesso!		
		</core:if>
		
		<core:if test="${empty empresa }">
			Nenhuma empresa cadastrada!		
		</core:if>
	
	</body>

</html>		