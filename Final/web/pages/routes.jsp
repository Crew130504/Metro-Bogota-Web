<%-- 
    Document   : cableCarRoutes
    Created on : 22 nov. 2023, 17:13:47
    Author     : braya
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="styles/styleRutas.css" type="text/css"/>
        
    </head>
    <form action="/buscar" method="GET"> 
        <input type="search" id="busqueda" name="q" placeholder="Buscar Ruta...">
        <input type="submit" value="&#128269" >    
        
    </form>
    
    <p>Aquí podrá encontrar las rutas de metrocable que actualmente están en funcionamiento.</p>    

    <div class="wrapper">
        <c:forEach items="${routes}" var = "route">
            <details class="acordeones"> 
                <summary class="acordeon"> <img class="img-acordeon" src="imagenes/icono.png" alt="icono"  > 
                    ${route.name} | ${route.path} 
                </summary>
                <div class="detalles">
                    <div class="columna" class="description">
                        ${route.description}
                    </div>
                    <div class="columna" class="image">
                        <img src="imagenes/logo.png" alt="alt"/>  <!--img de prueb -->
                        <!-- <img src="src" alt="alt"/> Pon alguna imagen -->
                    </div>
                </div>
            </details>
            </c:forEach>
    </div>

</html>
