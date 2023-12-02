<%-- 
    Document   : metroRoutes
    Created on : 22 nov. 2023, 17:12:43
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
    <p>Aquí podrá encontrar las rutas de metro que actualmente están en funcionamiento.</p>

    <div class="wrapper">
        <c:forEach var="route" items="${routes}">
            <div class="box">
                
                <div>
                    
                </div>
                <div>
                    ${route.origin} - ${route.destiny}
                </div>                    
            </div>
                 <details>
                    <summary class="acordeon"><img class="img-acordeon" src="imagenes/icono.png" alt="icono"  > 
                       ${route.letter}  
                    </summary>
                    <p>${route.description}</p>
                </details>

        </div>
    </c:forEach>
</div>


</html>
