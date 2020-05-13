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
				<a><img
					src="${contextPath}/resources/img/button/home_white_18dp.png"
					title="Ir a Menu" onclick="location.href='/'"></a>

			</div>
			<div class="col-1"></div>
		</div>
	</nav>

	<br>


	<!-- FORMULARIO -->
	<div class="container-fluid m-4">

		<form action="#" method="get">

			<div class="row">
				<div class="col-1"></div>

				<div class="col-10">

					<div class="card border-success  mb-3">
						<h5 class="card-header ">Datos Personales</h5>
						<div class="card-body text-dark">
							<div class="form-row align-items-center">

								<div class="col-2">
									<label for="nombre">Cedula</label> <input type="text"
										class="form-control" id="nombre"></input>
								</div>

								<div class="col-3 ">
									<label for="nombre">Nombre</label> <input type="text"
										class="form-control" id="nombre"></input>
								</div>

								<div class="col-3 ">
									<label for="nombre">Apellido</label> <input type="text"
										class="form-control" id="nombre"></input>
								</div>
								<div class="col-3 ">
									<label for="nombre">Segundo Apellido</label> <input type="text"
										class="form-control" id="nombre"></input>
								</div>

							</div>
							<br>
							<div class="form-row align-items-center">
								<div class="col-2">
									<label for="nombre">Fecha Nacimiento</label> <input type="Date"
										class="form-control" id="nombre"></input>
								</div>

								<div class="col-2">
									<label for="cars" >Genero:</label> <select id="cars" class="form-control">
										<option value="maculino">masculino</option>
										<option value="femenino">femenino</option>
									</select>
								</div>
							</div>


						</div>
					</div>


				</div>
				<div class="col-1"></div>
			</div>

		</form>
	</div>
	<br>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>

</body>
</html>



