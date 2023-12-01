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
    </head>
    <p>Aquí podrá encontrar las rutas de metro que actualmente están en funcionamiento.</p>

    <div class="wrapper">
        <c:forEach var="route" items="${routes}">
            <div class="box">
                <div>
                    ${route.letter}
                </div>
                <div>
                    ${route.origin} - ${route.destiny}
                </div>                    
            </div>

        </div>
    </c:forEach>
</div>


</html>
