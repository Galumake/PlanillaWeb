<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8">
<title>Departamento</title>

<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>

<body>

	<!-- NAVBAR -->
	<nav class="container-fluid bg-primary sticky-top">

		<div class="row" >
			<div class="col-6 display-4 text-white">Establece Departamentos</div>
			<div class="col-5 d-flex p-3 flex-row-reverse" >
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
		<form:form action="${contextPath}/catalog/company/depto/save/"
			modelAttribute="depto" method="get">
			<div class="row">
				<div class="col-2"></div>
				<div class="col-8">
					<div class="form-row align-items-center">

						<div class="col-6">
							<form:input type="hidden" path="deptoId" value="${deptoId}"></form:input>
							<label for="nombre">Nombre de Departamento</label>
							<form:input type="text" class="form-control" id="nombre"
								path="nombre" value="${nombre}"
								placeholder="Area en el cual se desempena un colaborador" autofocus="autofocus"></form:input>
							<form:input type="hidden" value="${userId}" path="userId"></form:input>
							<form:input type="hidden" value="${date}" path="date"></form:input>
						</div>
						<div class="col-3">
							<label for="estado">Estado</label>
							<form:select id="estado" class="form-control" path="estado"  >
								<option value="activo">activo</option>
								<option value="inactivo" >inactivo</option>
							</form:select>
						</div>

						<div class="col-2">
							<label for="sub"></label> <input id="sub" type="submit"
								class="form-control btn-primary" value="salvar"></input>
						</div>
					</div>
				</div>
				<div class="col-2"></div>
			</div>
		</form:form>
	</div>
	<br>
	<!-- TABLA -->
	<div class="container-fluid">

		<div class="row">
			<div class="col-2"></div>
			<div class="col-8">

				<table class="table">
					<thead class="thead-light">
						<tr class="row mx-0 ">
							<th class="col-md-1">ID</th>
							<th class="col-md-5">NOMBRE</th>
							<th class="col-md-2">ESTADO</th>
							<th class="col-md-2">MODIFICAR</th>
							<th class="col-md-2">ELIMINAR</th>
						</tr>
					</thead>

					<tbody>
						<tr class="row mx-0">
							<c:forEach items="${lista}" var="lst">
								<td class="col-md-1">${lst.deptoId}</td>
								<td class="col-md-5">${lst.nombre}</td>
								<td class="col-md-2">${lst.estado}</td>
								<!-- MODIFICAR -->
								<td class="col-md-2"><a
									href="${contextPath}/catalog/company/depto/sets/${lst.deptoId}"
									class="btn btn-success btn-sm text-white">Modificar</a></td>

								<!-- BOTON ELIMINAR -->
								<td class="col-md-2"><a
									class="btn btn-danger btn-sm text-white" data-toggle="modal"
									data-target="#modal-delete" data-id="${lst.deptoId}">Eliminar
								</a> <!--  --> <!-- EL MODAL -->
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
													<input type="hidden" id="idxDepto" name="idxDepto"> <input
														id="input-eliminar" type="button" class="btn btn-danger"
														value="Si, quiero eliminar"
														onclick="location.href='/catalog/company/depto/delete/'+ document.getElementById('idxDepto').value;">

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
			<div class="col-2"></div>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>

	<script>
		$('#modal-delete').on('show.bs.modal', function(e) {
			var idx = $(e.relatedTarget).data('id');
			$(e.currentTarget).find('input[name="idxDepto"]').val(idx);
		});
	</script>
</body>
</html>



