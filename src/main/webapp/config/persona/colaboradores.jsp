<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Registro Empleados</title>

<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>

<body>

	<!-- NAVBAR -->
	<nav class="container-fluid bg-primary sticky-top">

		<div class="row">
			<div class="col-6 display-4 text-white">Registro Empleados</div>
			<div class="col-5 d-flex p-3 flex-row-reverse">
				<a><img src="${contextPath}/resources/img/button/home_white_18dp.png"
					title="Ir a Menu" onclick="location.href='/'"></a>

			</div>
			<div class="col-1"></div>
		</div>
	</nav>

	<br>

		<!-- 
	<!-- FORMULARIO -->
	<div class="container-fluid m-4">

		<form:form action="#"
			 method="get">
			<div class="row">
				<div class="col-3"></div>
				<div class="col-6">
					<div class="form-row align-items-center">
						 
						<div class="col-10">
							<form:input type="hidden" path="id" value="${id}"></form:input>
							<label for="nombre">Nacionalidad</label>
							<form:input type="text" class="form-control" id="nombre"
								path="nombre" value="${nombre}" ></form:input>
							<form:input type="hidden" value="1" path="id_user"></form:input>
							<form:input type="hidden" value="2020-01-01" path="date"></form:input>
							
						</div>
						
						<div class="col-auto">
							<label for="sub"></label> <input id="sub" type="submit"
								class="form-control btn-primary" value="salvar"></input>
						</div>
					</div>
				
					
				</div>
				<div class="col-3"></div>
			</div>
		</form:form>
	</div>
	<br>
	-->

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>

</body>
</html>



