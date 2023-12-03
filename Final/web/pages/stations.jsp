<%-- 
    Document   : stations
    Created on : 22 nov. 2023, 17:14:06
    Author     : braya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="styles/stationStyle.css" type="text/css"/>
    </head>
    <p>Estás son las estaciones de nuestro sistema integrado, algunas estaciones 
        son de gran importacia para el turismo. Explora y entérate.</p>
    <div class="wrapper">
        <c:forEach var="station" items="${stations}">
            <details class="box">
                <summary class="name">
                    ${station.name}
                </summary>
                <div class="description">
                    ${station.description}
                </div>
            </details>
        </c:forEach>
    </div>   
   
</html>
