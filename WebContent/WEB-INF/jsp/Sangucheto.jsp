<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>	Sangucheto</title>
</head>
<body>
  <div>
 	<ul id="menu">
  <li><a href="sangucheto">AGREGAR AL CARRITO</a></li>
  <li><a href="stock">STOCK</a></li>
  <li><a href="altaproducto">DAR DE ALTA UN PRODUCTO</a></li>
  <li><a href="agregarstock">AGREGAR STOCK</a></li>
  <li><a href="eliminarstock">ELIMINAR STOCK</a></li>
	</ul>  
	<form action="sangucheto" method="post">
		<div>
			<div>
			<label>INGREDIENTES</label>

			<table>
				<thead><tr ><th>Ingrediente</th><th>Precio</th><th>cantidad</th><th></th></tr></thead>
				<tbody>
				<c:forEach items="${lista}" var="ing" varStatus="count">
				
					<tr><td><input type="text" value="${ing.nombre}"/></td>
					<td><input type="text" value="${ing.precio}"/></td>
					<td><input type="number" min="1" max="100" placeholder="Cantidad..." ></td>
					<td><input type="checkbox" name="${ing.nombre}" value="${ing.nombre}"></td></tr>
				
							
				</c:forEach>
				
				</tbody>
			</table>		
			
			</div>
			<div>
			<label>CONDIMENTOS</label>

			<table>
				<thead ><tr><th>Ingrediente</th><th>Precio</th><th>cantidad</th><th></th></tr></thead>
				<tbody>
				<c:forEach items="${lista}" var="ing" varStatus="count">
				
					<tr>
					<td><input type="text" value="${ing.nombre}" /></td>
					<td><input type="text" value="${ing.precio}" /></td>
					<td><input type="number" min="1" max="100" placeholder="Cantidad..."/></td>
					<td><input type="checkbox" name="${ing.nombre}" value="${ing.nombre}"/></td></tr>
				
							
				</c:forEach>
				
				</tbody>
			</table>		
			

			</div>
		  </div>
		<div>
		  
			<input type="reset"  value="CANCELAR"> 
			<input type="submit"  value="CONFIRMAR"> 
			
		</div>
	</form>
  </div>
</body>
</html>