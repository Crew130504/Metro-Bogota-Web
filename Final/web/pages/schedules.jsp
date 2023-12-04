<%-- 
    Document   : schedules
    Created on : 22 nov. 2023, 17:17:11
    Author     : braya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="styles/schedulesStyle.css" type="text/css"/>
    </head>
    <p>
        Las rutas de nuestro sistema cuentan con servicios de lunes a sábado "L-S" 
        o sábado y domingo "S-D", ¡explora los horarios y planea tus viajes con 
        anticipación!
    </p>
    <div class="wrapper">
        <c:forEach var="route" items="${routes}">
            <div class="box" style="border: solid ${route.color}">
                <div  style="background-color: ${route.color}" class="name">
                    ${route.name}
                </div>
                <div class="day">
                    ${route.day}
                </div>
                <div class="schedule">
                    ${route.schedule}
                </div>
            </div>
        </c:forEach>
    </div>
</html>
