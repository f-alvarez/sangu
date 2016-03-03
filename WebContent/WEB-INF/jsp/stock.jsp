<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>	Stock</title>
</head>
<body>
<ul id="menu">
  <li><a href="sangucheto">AGREGAR AL CARRITO</a></li>
  <li><a href="stock">STOCK</a></li>
  <li><a href="altaproducto">DAR DE ALTA UN PRODUCTO</a></li>
  <li><a href="agregarstock">AGREGAR STOCK</a></li>
  <li><a href="eliminarstock">ELIMINAR STOCK</a></li>
	</ul>  
<h1>Stock de Ingredientes</h1>

<table>
	
	<tr >
    <th>Ingrediente</th>
    <th>Precio</th>	
    <th>Tipo</th>
    <th>Cantidad</th>	
    			
  </tr>
	<c:forEach items="${lista}" var="ing" varStatus="count">
           <tr>
           <td>${ing.key.nombre}</td>
           <td>${ing.key.precio}</td>
           <td>${ing.key.tipo}</td>
           <td>${ing.value}</td>
			<!--   como mostrar cantidad         -->
           <td><input type="checkbox" name="${ing.key.nombre}" value="${ing.key.nombre}"/></td></tr>
            <td><button type="button" class="btn btn-primary" onclick="location.href='/sangucheto/nuevostock?nombre=${ing.key.nombre}'">Agregar Stock</button></td>
           <td><button type="button" class="btn btn-danger" onclick="location.href='/sangucheto/eliminarstock?nombre=${ing.key.nombre}'">Eliminar</button></td>
           </tr>
    </c:forEach>





</table>




</body>
</html>