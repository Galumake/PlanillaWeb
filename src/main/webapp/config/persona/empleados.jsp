<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="es">

<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

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

		<form:form action="${contextPath}/config/person/employee/save"
			modelAttribute="entidad" method="get">

			<div class="row">
				<div class="col-1"></div>

				<div class="col-10">

					<div class="card border-success  mb-3">
						<h5 class="card-header ">Datos Personales</h5>
						<div class="card-body text-dark">
							<div class="form-row align-items-center">

								<div class="col-2">
									<label for="cedula">Cedula</label>
									<form:input type="text" class="form-control" id="cedula"
										path="cedula"></form:input>
								</div>

								<div class="col-3 ">
									<label for="nombre">Nombre</label>
									<form:input type="text" class="form-control" id="nombre"
										path="nombre"></form:input>
								</div>

								<div class="col-3 ">
									<label for="apellido">Apellido</label>
									<form:input type="text" class="form-control" id="apellido"
										path="apellido"></form:input>
								</div>
								<div class="col-3 ">
									<label for="apellido2">Segundo Apellido</label>
									<form:input type="text" class="form-control" id="apellido2"
										path="apellido2"></form:input>
								</div>

							</div>
							<br>
							<div class="form-row align-items-center">
								<div class="col-2">
									<label for="nacimiento">Fecha Nacimiento</label>
									<form:input type="date" class="form-control" id="nacimiento"
										path="nacimiento" value="2020-01-01"></form:input>
								</div>

								<div class="col-2">
									<label for="genero">Genero:</label>
									<form:select id="genero" class="form-control" path="sexo">
										<option value="maculino">masculino</option>
										<option value="femenino">femenino</option>
									</form:select>
								</div>

								<div class="col-2">
									<label for="estado_civil">Estado Civil:</label>
									<form:select id="estado_civil" class="form-control"
										path="estado_civil">
										<option value="soltero(a)">soltero(a)</option>
										<option value="casado(a)">casado(a)</option>
										<option value="divorciado(a)">divorciado(a)</option>
										<option value="union_libre">union libre</option>
									</form:select>
								</div>

								<div class="col-2">
									<label for="nacionalidad">Nacionalidad:</label>
									<form:select id="nacionalidad" class="form-control"
										path="nacionalidad">
										<c:forEach items="${nacionalidades}" var="nac">
											<option value="${nac.id}">${nac.nombre}</option>
										</c:forEach>
									</form:select>
								</div>

								<div class="col-1">
									<label for="edad">Edad</label>
									<form:input type="number" class="form-control" id="edad"
										name="points" step="1" min="15" max="70" path="edad"></form:input>
								</div>

								<div class="col-2">
									<label for="educacion">Educacion:</label>
									<form:select id="educacion" class="form-control"
										path="educacion">
										<option value="primaria incompleta">primaria
											incompleta</option>
										<option value="primaria completa">primaria completa</option>
										<option value="secundaria incompleta">secundaria
											incompleta</option>
										<option value="secundaria completa">secundaria
											completa</option>
										<option value="pregrado">pregradao</option>
										<option value="universitaria">universitaria</option>
										<option value="pregrado">postgrado</option>

									</form:select>
								</div>

							</div>


						</div>
					</div>


				</div>
				<div class="col-1"></div>
			</div>

			<div class="row">
				<div class="col-1"></div>
				<div class="col-10">
					<div class="card border-success  mb-3">
						<h5 class="card-header ">Ubicaci&oacute;n</h5>
						<div class="card-body text-dark">
							<div class="form-row align-items-center">

								<div class="col-3">
									<label for="email">correo</label>
									<form:input type="email" class="form-control" id="email"
										path="correo"></form:input>
								</div>

								<div class="col-2">
									<label for="celular">celular</label>
									<form:input type="text" class="form-control" id="celular"
										path="celular"></form:input>
								</div>

								<div class="col-2">
									<label for="telefonoHabitacion">teléfono</label>
									<form:input type="text" class="form-control" id="telefonoHabitacion"
										path="telHabitacion" placeholder="teléfono habitación"></form:input>
								</div>

								<div class="col-3">
									<label for="contactName">Nombre Contacto</label>
									<form:input type="text" class="form-control" id="contactName"
										path="nombre_contacto"></form:input>
								</div>

								<div class="col-2">
									<label for="telefonoContacto">teléfono Contacto</label>
									<form:input type="text" class="form-control"
										id="telefonoContacto" path="telContacto"></form:input>
								</div>

							</div>

							<br>

							<div class="form-row align-items-center">

								<div class="col-12">
									<label for="direccion">Direccion</label>
									<form:textarea class="form-control" id="direccion" rows="2"
										cols="15" path="direccion"></form:textarea>
								</div>
							</div>

						</div>

					</div>
				</div>
				<div class="col-1"></div>
			</div>

			<div class="row">
				<div class="col-1"></div>
				<div class="col-10">
					<div class="card border-success  mb-3">
						<h5 class="card-header ">Otros Datos</h5>
						<div class="card-body text-dark">
							<div class="form-row align-items-center">
								<div class="col-12">
									<label for="padecimientos">Padecimientos</label>
									<form:textarea class="form-control" id="padecimientos" rows="2"
										cols="15" path="padecimientos"
										placeholder="Algún padesismiento que se deba conocer del colaborador"></form:textarea>
								</div>



							</div>
							<br>
							<div class="form-row align-items-center">
								<div class="col-12">
									<label for="observacion">Observaciones</label>
									<form:textarea class="form-control" id="obsdervacion" rows="2"
										cols="15" path="observacion"
										placeholder="Algún dato adicional que se deba conocer del colaborador"></form:textarea>
								</div>
							</div>
						</div>

					</div>
				</div>
				<div class="col-1"></div>
			</div>

			<div class="row">
				<div class="col-1"></div>
				<div class="col-10">
					<div class="card border-success  mb-3">
						<h5 class="card-header ">Contrato</h5>
						<div class="card-body text-dark">
							<div class="form-row align-items-center">

								<div class="col-2">
									 

									<fmt:formatDate var="fmtDate" value="${localDateTime}" pattern="yyyy-MM-dd" />  
									<label for="fechaContrato">Fecha de contrato</label>
									<form:input type="Date" class="form-control" id="fechaContrato"
										path="fechaContrato" value = "${fmtDate}" ></form:input>
								</div>

								<div class="col-3">
									<label for="tipoContrato">Tipo de Contrato</label>
									<form:select id="tipoContrato" class="form-control"
										path="tipo_contrato">
										<option value="plazo idefinido">plazo idefinido</option>
										<option value="plazo fijo">plazo fijo</option>
										<option value="eventual">eventual</option>
										<option value="pasantia sin paga">pasantia sin paga</option>
										<option value="pasantia pagada">pasantia pagada</option>
									</form:select>
								</div>


								<div class="col-3">
									<label for="estado_contrato">Estado de Contrato</label>
									<form:select id="estado_contrato" class="form-control"
										path="estado_contrato">
										<option value="vigente">vigente</option>
										<option value="despido justa causa">despido justa
											causa</option>
										<option value="despido sin justa causa">despido sin
											justa causa</option>
										<option value="acuerdo mutuo">acuerdo mutuo</option>
										<option value="renuncia">renuncia</option>
										<option value="muerte">muerte</option>
									</form:select>
								</div>

								<div class="col-2">
									<label for="finPlazo">Fin de contrato</label>
									<form:input type="Date" class="form-control" id="finPlazo"
										path="fin_de_plazo"></form:input>
								</div>

								<div class="col-2">
									<label>Contratar nuevamente</label> <input type="button"
										class="button btn-primary form-control" value="recontratar">
								</div>


							</div>
							<br>
							<div class="form-row align-items-center">
								<div class="col-12">
									<label for="obCotrato">Objesvaciones</label>
									<form:textarea class="form-control" id="obContrato" rows="2"
										cols="15" path="observacion_contrato"
										placeholder="Algún dato adicional que aclare el estado del contrato"></form:textarea>
								</div>
							</div>

						</div>

					</div>
				</div>
				<div class="col-1"></div>
			</div>

			<div class="row">
				<div class="col-1"></div>
				<div class="col-10">
					<div class="card border-success  mb-3">
						<h5 class="card-header ">Posición</h5>
						<div class="card-body text-dark">
							<div class="form-row align-items-center">

								<div class="col-4">
									<label for="sede">Sede</label>
									<form:select id="sede" class="form-control"
										path="sede">
										<c:forEach items="${sedes}" var="s">
											<option value="${s.sedeId}">${s.nombre}</option>
										</c:forEach>
									</form:select>
								</div>


								<div class="col-4">
									<label for="puesto">Puesto</label>
									<form:select id="puesto" class="form-control"
										path="puesto">
										<c:forEach items="${puestos}" var="p">
											<option value="${p.puestoId}">${p.nombre}</option>
										</c:forEach>
									</form:select>
								</div>


								<div class="col-4">
									<label for="departamento">Departamento</label>
									<form:select id="departamento" class="form-control"
										path="dpto">
										<c:forEach items="${departamentos}" var="d">
											<option value="${d.deptoId}">${d.nombre}</option>
										</c:forEach>
									</form:select>
								</div>


							</div>
						</div>

					</div>
				</div>
				<div class="col-1"></div>
			</div>

			<div class="row">
				<div class="col-1"></div>
				<div class="col-10">
					<div class="card border-success  mb-3">
						<h5 class="card-header ">Jornada</h5>
						<div class="card-body text-dark">
							<div class="form-row align-items-center">

								<div class="col-4">
									<label for="tipoJornada">Tipo de Jornada</label>
									<form:select id="tipoJornada" class="form-control"
										path="tipo_jornada">
										<option value="diurna">diurna</option>
										<option value="nocturna">nocturna</option>
										<option value="mixta">mixta</option>
									</form:select>
								</div>

								<div class="col-4">
									<label for="jornadaDiaria">Dias laborales</label>
									<form:input type="number" class="form-control"
										id="jornadaDiaria" name="points" step="1" min="0" max="7"
										path="jornada_semanal" text="dias" value="5"></form:input>
								</div>

								<div class="col-4">
									<label for="jornadaHoraria">Horas laborales</label>
									<form:input type="number" class="form-control"
										id="jornadaDiaria" name="points" step="1" min="0" max="12"
										path="edad" text="jornada_diaria" value="9"></form:input>
								</div>



							</div>
						</div>

					</div>
				</div>
				<div class="col-1"></div>
			</div>

			<div class="row">
				<div class="col-1"></div>
				<div class="col-10">
					<div class="card border-success  mb-3">
						<h5 class="card-header ">Pago</h5>
						<div class="card-body text-dark">
							<div class="form-row align-items-center">

								<div class="col-2">
									<label for="formaPago">Forma de pago</label>
									<form:select id="formaPago" class="form-control"
										path="forma_pago">
										<option value="semanal">semanal</option>
										<option value="quincenal">quincenal</option>
										<option value="mensual">mensual</option>
										<option value="mensual">diario</option>
										<option value="mensual">otra forma de pago</option>
									</form:select>
								</div>

								<div class="col-3">
									<label for="medioPago">Medio de pago</label>
									<form:select id="medioPago" class="form-control"
										path="medio_pago">
										<option value="transferencia bancaria">tranferencia
											bancaria</option>
										<option value="efectivo">efectivo</option>
										<option value="mensual">deposito bancario</option>
										<option value="mensual">cheque</option>
										<option value="mensual">otro medio de pago</option>
									</form:select>
								</div>

								<div class="col-2">
									<label for="moneda">Moneda</label>
									<form:select id="moneda" class="form-control"
										path="moneda">
										<option value="semanal">colon</option>
										<option value="quincenal">dolar</option>
										<option value="mensual">euro</option>
										<option value="mensual">otra moneda</option>
									</form:select>
								</div>

								<div class="col-2">
									<label for="banco">Banco</label>
									<form:select id="banco" class="form-control"
										path="banco">
										<option value="semanal">bac credomatic</option>
										<option value="quincenal">banco nacional</option>
										<option value="mensual">banco bcr</option>
										<option value="mensual">banco popular</option>
										<option value="mensual">otro banco</option>
									</form:select>
								</div>

								<div class="col-3">
									<label for="iban">IBAN</label>
									<form:input id="iban" type="text" class="form-control"
										path="iban" />
								</div>


							</div>
						</div>

					</div>
				</div>
				<div class="col-1"></div>
			</div>

			<div class="row">
				<div class="col-1"></div>
				<div class="col-10">
					<div class="card border-success  mb-3">
						<h5 class="card-header ">Complementos</h5>
						<div class="card-body text-dark">
							<div class="form-row align-items-center">

								<div class="col-4">
									<label for="bonificaciones">monto por bonificacion</label>
									<form:input id="bonificaciones" type="text"
										class="form-control" path="pago_bonificacion" value="0" />
								</div>

								<div class="col-4">
									<label for="pagoCelular">monto por uso celular</label>
									<form:input id="pagoCelular" type="text" class="form-control"
										path="pago_celular" value="0" />
								</div>

								<div class="col-4">
									<label for="pagoTransporte">monto por transporte</label>
									<form:input id="pagoTransorte" type="text" class="form-control"
										path="pago_transporte" value="0" />
								</div>


							</div>

						</div>

					</div>
				</div>
				<div class="col-1"></div>
			</div>

			<div class="row">
				<div class="col-1"></div>
				<div class="col-10">
					<div class="card border-success  mb-3">
						<h5 class="card-header ">Costos</h5>
						<div class="card-body text-dark">
							<div class="form-row align-items-center">

								<div class="col-3">
									<label for="costoHora">Costo hora</label>
									<form:input type="number" class="form-control" id="costoHora"
										name="costoHora" step="1" min="0" max="200000" path="costo_hora"
										></form:input>
								</div>

								<div class="col-3">
									<label for="costoDoble">Costo doble</label>
									<form:input type="number" class="form-control" id="costoDoble"
										name="costoDoble" step="1" min="0" max="200000" path="costo_doble"
									></form:input>
								</div>

								<div class="col-3">
									<label for="costoExtra">Costo extra</label>
									<form:input type="number" class="form-control" id="costoExtra"
										name="costoExtra" step="1" min="0" max="200000" path="costo_extra"
										></form:input>
								</div>

								<div class="col-3">
									<label for="costoTotal">Total</label>
									<form:input type="number" class="form-control" id="costoTotal"
										name="points" step="1" min="0" max="3000000"
										path="costo_total"></form:input>
								</div>
							</div>
						</div>

					</div>
				</div>
				<div class="col-1"></div>
			</div>


			<div class="row">
				<div class="col-1"></div>
				<div class="col-10">
					<div class="card border-success  mb-3">
						<h5 class="card-header ">Salario</h5>
						<div class="card-body text-dark">
							<div class="form-row align-items-center">

								<div class="col-3">
									<label for="tipoAporte">Tipo de Aporte</label>
									<form:select id="tipoAporte" class="form-control"
										path="tipo_aporte">
										<option value="porcentual">porcentual</option>
										<option value="fijo">monto fijo</option>
										<option value="exento">excento del aporte</option>
									</form:select>
								</div>

								<div class="col-3">
									<label for="montoAporte">Monto de aporte</label>
									<form:input type="number" class="form-control" id="montoAporte"
										name="montoAporte" step="1" min="0" max="3000000"
										path="monto_aporte"></form:input>
								</div>

								<div class="col-3">
									<label for="salarioNeto">Salario Neto</label>
									<form:input type="number" class="form-control" id="salarioNeto"
										name="salarioNeto" step="1" min="0" max="3000000"
										path="salario_neto"></form:input>
								</div>

								<div class="col-3">
									<label for="salarioBruto">Salario Bruto</label>
									<form:input type="number" class="form-control"
										id="salarioBruto" name="salarioBruto" step="1" min="0"
										max="3000000" path="salario_bruto"></form:input>
								</div>
								<form:input type="hidden" path="fecha"></form:input>
								<form:input type="hidden" path="user"></form:input>

							</div>
						</div>

					</div>
				</div>
				<div class="col-1"></div>
			</div>

		</form:form>
	</div>
	<br>


	<script src="${contextPath}/resources/js/jquery-3.4.1.slim.min.js"></script>
	<script src="${contextPath}/resources/js/popper.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>

</body>
</html>



