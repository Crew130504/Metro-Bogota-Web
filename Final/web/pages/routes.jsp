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
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    </head>
    <form action="/buscar" method="GET"> 
        <input type="search" id="busqueda" name="q" placeholder="Buscar Ruta...">
        <input type="submit" value="&#128269" >
    </form>

    <p>Aquí podrá encontrar las rutas de metrocable que actualmente están en funcionamiento.</p>    

    <div class="wrapper">

        <c:forEach items="${developers}" var = "developer">  
            <div class="box">
                <div class="name">
                    <h2>${developer.name}</h2>
                </div>
                <div class="description">
                    ${developer.description}
                </div>
            </div>
        </c:forEach>
    </div>


</html>
