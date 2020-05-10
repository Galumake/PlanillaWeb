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


	<!-- FORMULARIO -->
	<div class="container-fluid m-4">
		<form:form action="${contextPath}/catalog/save/"
			modelAttribute="nacionalidad" method="get">
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
	<!-- TABLA -->
	<div class="container-fluid">

		<div class="row">
			<div class="col-3"></div>
			<div class="col-6">

				<table class="table">
					<thead class="thead-light">
						<tr class="row mx-0 ">
							<th class="col-md-1">ID</th>
							<th class="col-md-7">NOMBRE</th>
							<th class="col-md-2">MODIFICAR</th>
							<th class="col-md-2">ELIMINAR</th>
						</tr>
					</thead>

					<tbody>
						<tr class="row mx-0">
							<c:forEach items="${nacs}" var="nac">
								<td class="col-md-1">${nac.id}</td>
								<td class="col-md-7">${nac.nombre}</td>

								<!-- MODIFICAR -->
								<td class="col-md-2"><a href="${contextPath}/catalog/sets_modifie/${nac.id}"
									class="btn btn-success btn-sm text-white">Modificar</a></td>

								<!-- BOTON ELIMINAR -->
								<td class="col-md-2"><a
									class="btn btn-danger btn-sm text-white" data-toggle="modal"
									data-target="#modal-delete" data-id="${nac.id}">Eliminar </a> <!--  -->

									<!-- EL MODAL -->
									<div class="modal" id="modal-delete">
										<div class="modal-dialog">
											<div class="modal-content">
												<!-- CABECERA-->
												<div class="modal-header">
													<H5 class="modal-title">Elimina Registro</H5>
													<button type="button" class="close" data-dismiss="modal"
														aria-hidden="true">x</button>
												</div>
												<!-- CUERPO-->
												<div class="modal-body">
													<p class="error-text">
														<strong>¿Seguro que desea Eliminar?</strong>
													</p>
												</div>
												<!-- PIE DE MODAL-->
												<div class="modal-footer">
													<input type="hidden" id="nacId" name="nacId"> <input
														id="input-eliminar" type="submit" class="btn btn-danger"
														value="Si, quiero eliminar"
														onclick="location.href='/catalog/delete/'+ document.getElementById('nacId').value;">

													<button class="btn btn-primary " data-dismiss="modal"
														aria-hidden="true">Cancelar</button>
												</div>
											</div>
										</div>
									</div></td>
							</c:forEach>
						</tr>
					</tbody>
				</table>

			</div>
			<div class="col-3"></div>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>

	<script>
		$('#modal-delete').on('show.bs.modal', function(e) {
			var nacId = $(e.relatedTarget).data('id');
			$(e.currentTarget).find('input[name="nacId"]').val(nacId);
		});
	</script>
</body>
</html>



