


// Saca los calculos de la seccion costos
function calculoCostos() {
	var extra = document.getElementById("costoHora").value;
	var hora = document.getElementById("horaLaboral").value;
	var dia = document.getElementById("diaLaboral").value;
	if ((extra == null || extra == undefined || extra == "")) {
		alert("Parece que falta el valor de costo x hora...");
	} else {
		document.getElementById("costoExtra").value = parseFloat(extra)
				* parseFloat(1.5);
		document.getElementById("costoDoble").value = parseFloat(extra)
				* parseFloat(2);
		document.getElementById("costoJornada").value = (parseFloat(extra) * parseFloat(hora))
				* parseFloat(dia);
	}
}

// Sacal los calculos del Aporte de la CCSS
function calculoAportePorcentual() {
	// ++++++++++++++++++++++ CALCULO DE APORTE
	var costoJornada = document.getElementById("costoJornada").value;
	// enfermedad y maternidad
	var em = parseFloat(costoJornada) * 0.055
	// Invalidez Vejez y Muerte
	var ivm = parseFloat(costoJornada) * 0.0384
	// Pension complementaria
	var pc = parseFloat(costoJornada) * 0.01
	// total de aporte
	var totalAporte = em + ivm + pc;
	document.getElementById("montoAporte").value = truncate(totalAporte, 2);

	// +++++++++++++++++++++
}

// Cuando se selecciona el dropdown del Tipo de Aporte
function tipoAporteSelected() {
	var seleccion = document.getElementById("tipoAporte").value
	var costoExtra = document.getElementById("costoExtra").value;
	
	switch (seleccion) {
	case "porcentual":
		if (costoExtra != "") {
			calculoAportePorcentual();
			$("#montoAporte").prop("readonly", true);
		} else {
			$("#montoAporte").prop("readonly", true);
			alert("Parece que falta el valor de costo x hora...");
		}
		break;
	case "fijo":
		$("#montoAporte").prop("readonly", false);
		document.getElementById("montoAporte").value = 1000;
		break;
	case "exento":
		$("#montoAporte").prop("readonly", true);
		document.getElementById("montoAporte").value = parseFloat(0.0);
		break;
	default:
		$("#montoAporte").prop("readonly", true);
		document.getElementById("montoAporte").value = parseFloat(0.0);
		break;
	}
}

function salBruto() {	
	
	var bon = parseFloat(document.getElementById("bonificaciones").value);
	var cel = parseFloat(document.getElementById("pagoCelular").value);
	var trans = parseFloat(document.getElementById("pagoTransporte").value);
	var rete= parseFloat(document.getElementById("montoAporte").value);	
	var costoJor = parseFloat(document.getElementById("costoJornada").value)*4; 
	var totBruto = bon+cel+trans+rete+costoJor;
	document.getElementById("salarioBruto").value=truncate(totBruto,2);
	return truncate(totBruto,2);
}

//SALARIO NETO: EL PAGO CON LAS RETENCIONES RESTADAS

function salNeto(){
    
	retenciones= document.getElementById("montoAporte").value;
	var sb = salBruto();
	//alert("salario bruto "+sb);
	document.getElementById("salarioNeto").value = truncate(parseFloat(sb-retenciones),2);
}

