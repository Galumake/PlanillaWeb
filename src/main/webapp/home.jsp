<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html >
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="${contextPath}/resources/css/animate.min.css" rel="stylesheet">
<link href="${contextPath}/resources/css/bootnavbar.css" rel="stylesheet">

<title>Menu Inventarios</title>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-dark bg-primary" id="main_navbar">
        <a class="navbar-brand" href="#">MENU PLANILLAS > </a>
        
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
        
            <ul class="navbar-nav mr-auto">
                
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">Cobro</a>
                </li>
                
                
                
                <!--   MENU CONFIGURACIONES     -->
                <li class="nav-item dropdown">
                
                	<a class="nav-link dropdown-toggle" href="#" id="configDropdown" role="button" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                        Configuraciones
                    </a>
                    
                    <ul class="dropdown-menu" aria-labelledby="configDropdown">
                    	
                    	<!--              Sub Menu Producto               -->
                    	<li class="nav-item dropdown">
                    	
                    		 <a class="dropdown-item dropdown-toggle" href="#" id="productoDropdown" role="button" data-toggle="dropdown"
                                 aria-haspopup="true" aria-expanded="false">
                                  Producto
                             </a>
                             
                             <ul class="dropdown-menu" aria-labelledby="productoDropdown">
                                    <li><a class="dropdown-item" href="#">Producto</a></li>
                                    <li class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="#">Fabricante</a></li>
                                    <li><a class="dropdown-item" href="#">Marca</a></li> 
                                    <li class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="#">Tipo Unidad</a></li>
                                    <li><a class="dropdown-item" href="#">Tipo Empaque</a></li>                                                                       
                             </ul>
                                
                    	</li>
                    	
                    	<!--              Sub Menu Cliente               -->
                    	<li class="nav-item dropdown">
                    		 <a class="dropdown-item dropdown-toggle" href="#" id="clienteDropdown" role="button" data-toggle="dropdown"
                                 aria-haspopup="true" aria-expanded="false">
                                  Cliente
                             </a>
                             
                             <ul class="dropdown-menu" aria-labelledby="clienteDropdown">
                                    <li><a class="dropdown-item" href="#">Cliente</a></li>                                 
                             </ul>
       
                    	</li>
                    	
                    	<!--              Sub Menu Movimiento              -->
                    	<li class="nav-item dropdown">
                    		 <a class="dropdown-item dropdown-toggle" href="#" id="movimientoDropdown" role="button" data-toggle="dropdown"
                                 aria-haspopup="true" aria-expanded="false">
                                  Movimiento
                             </a>
                             
                             <ul class="dropdown-menu" aria-labelledby="movimientoDropdown">
                                    <li><a class="dropdown-item" href="#">Tipo Movimiento</a></li>                                 
                             </ul>
       
                    	</li>
                    	
                    	<!--              Sub Menu Bodega           -->
                    	<li class="nav-item dropdown">
                    	
                    		 <a class="dropdown-item dropdown-toggle" href="#" id="bodegaDropdown" role="button" data-toggle="dropdown"
                                 aria-haspopup="true" aria-expanded="false">
                                  Empresa
                             </a>
                             
                             <ul class="dropdown-menu" aria-labelledby="bodegaDropdown">
                                    <li><a class="dropdown-item" href="${contextPath}/catalog/company/sede/list">Sede del la empresa</a></li>   
                                    <li><a class="dropdown-item" href="${contextPath}/catalog/company/position/list">Puesto</a></li>
                                    <li><a class="dropdown-item" href="${contextPath}/catalog/company/depto/list">Departamento</a></li>                             
                             </ul>
                                
                    	</li>
                    	
                    	<!--              Sub Menu Persona           -->
                    	<li class="nav-item dropdown">
                    	
                    		 <a class="dropdown-item dropdown-toggle" href="#" id="personaDropdown" role="button" data-toggle="dropdown"
                                 aria-haspopup="true" aria-expanded="false">
                                  Persona
                             </a>
                             
                             <ul class="dropdown-menu" aria-labelledby="personaDropdown">
                                    <li><a class="dropdown-item" href="/config/person/employee/show">Registrar Colaborador</a></li>
                                    <li class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="${contextPath}/catalog/nac">Nacionalidad</a></li>                                
                             </ul>
                                
                    	</li>
                    	
                    	<!--              Sub Menu Ubicacion              -->
                    	<li class="nav-item dropdown">
                    		 <a class="dropdown-item dropdown-toggle" href="#" id="ubicacionDropdown" role="button" data-toggle="dropdown"
                                 aria-haspopup="true" aria-expanded="false">
                                  Ubicacion
                             </a>
                             
                             <ul class="dropdown-menu" aria-labelledby="ubicacionDropdown">
                                    <li><a class="dropdown-item" href="#" href="@{list_mapeo}">Mapeo de Ubicaciones</a></li>                                 
                             </ul>
       
                    	</li>
                    	
                    	<!--              Sub Menu Usuario              -->
                    	<li class="nav-item dropdown">
                    	
                    		 <a class="dropdown-item dropdown-toggle" href="#" id="usuarioDropdown" role="button" data-toggle="dropdown"
                                 aria-haspopup="true" aria-expanded="false">
                                  Usuario
                             </a>
                             
                             <ul class="dropdown-menu" aria-labelledby="usuarioDropdown">
                                    <li><a class="dropdown-item" href="#">Usuario</a></li>
                                    <li><a class="dropdown-item" href="#">Resetear Clave</a></li>                                                                        
                             </ul>
                                
                    	</li>
 
                    </ul>
                    
                </li>
                
                
                
               <!--   MENU CONSULTAS     -->
                <li class="nav-item dropdown">
                
                	<a class="nav-link dropdown-toggle" href="#" id="consultaDropdown" role="button" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                        Consulta
                    </a>
                    
                    <ul class="dropdown-menu" aria-labelledby="consultaDropdown">
                    	
                    	<!--              Sub Menu Persona               -->
                    	<li class="nav-item dropdown">
                    	
                    		 <a class="dropdown-item dropdown-toggle" href="#" id="personaDropdown" role="button" data-toggle="dropdown"
                                 aria-haspopup="true" aria-expanded="false">
                                  Persona
                             </a>
                             
                             <ul class="dropdown-menu" aria-labelledby="personaDropdown">
                                    <li><a class="dropdown-item" href="#">Presona</a></li>
                             </ul>
                                
                    	</li>
                    	
                    	<!--              Sub Menu Producto              -->
                    	<li class="nav-item dropdown">
                    		 <a class="dropdown-item dropdown-toggle" href="#" id="cProdutoDropdown" role="button" data-toggle="dropdown"
                                 aria-haspopup="true" aria-expanded="false">
                                  Producto
                             </a>
                             
                             <ul class="dropdown-menu" aria-labelledby="cProductoeDropdown">
                                    <li><a class="dropdown-item" href="#">Descripciones</a></li> 
                                    <li><a class="dropdown-item" href="#">Saldo por Lote</a></li>                                
                             </ul>
       
                    	</li>
                    	
                    </ul>
                </li>	
                    	
                                
                
                
               <!--   MENU GESTION     -->
                <li class="nav-item dropdown">
                
                	<a class="nav-link dropdown-toggle" href="#" id="gestionDropdown" role="button" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                        Gestion
                    </a>
                    
                    <ul class="dropdown-menu" aria-labelledby="gestionDropdown">
                    	
                    	<!--              Sub Menu Ingreso               -->
                    	<li class="nav-item dropdown">
                    	
                    		 <a class="dropdown-item dropdown-toggle" href="#" id="ingresoDropdown" role="button" data-toggle="dropdown"
                                 aria-haspopup="true" aria-expanded="false">
                                  Planilla
                             </a>
                             
                             <ul class="dropdown-menu" aria-labelledby="ingresoDropdown">
                                    <li><a class="dropdown-item" href="#">Establecer Planilla</a></li>
                                    <li><a class="dropdown-item" href="#">Abrir Planilla</a></li>
                                    <li class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="#">Procesar Planilla</a></li>
                             </ul>
                                
                    	</li>
                    	
                    	<!--              Sub Menu Salidas               -->
                    	<li class="nav-item dropdown">
                    		 <a class="dropdown-item dropdown-toggle" href="#" id="clienteDropdown" role="button" data-toggle="dropdown"
                                 aria-haspopup="true" aria-expanded="false">
                                  Salida
                             </a>
                             
                             <ul class="dropdown-menu" aria-labelledby="clienteDropdown">
                                    <li><a class="dropdown-item" href="#">Salida</a></li>                                 
                             </ul>
       
                    	</li>
                    	
                    	<!--              Sub Menu Orden de Pedido              -->
                    	<li class="nav-item dropdown">
                    		 <a class="dropdown-item dropdown-toggle" href="#" id="opDropdown" role="button" data-toggle="dropdown"
                                 aria-haspopup="true" aria-expanded="false">
                                  Orden de Pedido
                             </a>
                             
                             <ul class="dropdown-menu" aria-labelledby="opDropdown">
                                    <li><a class="dropdown-item" href="#">Orden de pedido</a></li>
                                    <li><a class="dropdown-item" href="#">Dar de baja</a></li>                                  
                             </ul>
       
                    	</li>
                    	
                    	<!--              Sub Menu Utilidades           -->
                    	<li class="nav-item dropdown">
                    	
                    		 <a class="dropdown-item dropdown-toggle" href="#" id="utilDropdown" role="button" data-toggle="dropdown"
                                 aria-haspopup="true" aria-expanded="false">
                                  Utilidades
                             </a>
                             
                             <ul class="dropdown-menu" aria-labelledby="utilDropdown">
                                    <li><a class="dropdown-item" href="#" href="@{/locate/item}">Ubicar</a></li>
                                    <li><a class="dropdown-item" href="#">Refunde Saldos</a></li>                                
                             </ul>
                                
                    	</li>
                    	
                    
 
                    </ul>
                    
                </li>
                
                <!--   REPORTES CONSULTAS     -->
                <li class="nav-item dropdown">
                
                	<a class="nav-link dropdown-toggle" href="#" id="reporteDropdown" role="button" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                        Reporte
                    </a>
                    
                    <ul class="dropdown-menu" aria-labelledby="reporteDropdown">
                    	
                    	<!--              Sub Menu Saldos               -->
                    	<li class="nav-item dropdown">
                    	
                    		 <a class="dropdown-item dropdown-toggle" href="#" id="saldoDropdown" role="button" data-toggle="dropdown"
                                 aria-haspopup="true" aria-expanded="false">
                                  Saldos
                             </a>
                             
                             <ul class="dropdown-menu" aria-labelledby="saldoDropdown">
                                    <li><a class="dropdown-item" href="#">Por Ubicacion</a></li>
                                    <li><a class="dropdown-item" href="#">Consolidado</a></li>
                             </ul>
                                
                    	</li>
                    	
                    	<!--              Sub Menu Producto              -->
                    	<li class="nav-item dropdown">
                    		 <a class="dropdown-item dropdown-toggle" href="#" id="rProdutoDropdown" role="button" data-toggle="dropdown"
                                 aria-haspopup="true" aria-expanded="false">
                                  Producto
                             </a>
                             
                             <ul class="dropdown-menu" aria-labelledby="rProductoDropdown">
                                    <li><a class="dropdown-item" href="#">Trazabilidad</a></li>                                 
                             </ul>
       
                    	</li>
                    	
                    	<!--              Sub Menu Tarimas              -->
                    	<li class="nav-item dropdown">
                    		 <a class="dropdown-item dropdown-toggle" href="#" id="tarimaDropdown" role="button" data-toggle="dropdown"
                                 aria-haspopup="true" aria-expanded="false">
                                  Tarima
                             </a>
                             
                             <ul class="dropdown-menu" aria-labelledby="tarimaDropdown">
                                    <li><a class="dropdown-item" href="#">Consumo</a></li>                                 
                             </ul>
       
                    	</li>
                    
 
                    </ul>
                    
                </li>
                
                
                
                
                

                
                <li class="nav-item">
                    <a class="nav-link" href="${contextPath}/login?logout">Salir</a>
                </li>
                
                
            </ul>
   
        </div>
    </nav>



	<script src="${contextPath}/resources/js/jquery-3.2.1.slim.min.js"></script>
	<script src="${contextPath}/resources/js/popper.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="${contextPath}/resources/js/bootnavbar.js"></script>
	<script >
		$('navbar').bootnavbar();
	</script>
</body>
</html>