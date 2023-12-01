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
    </head>
    <p>Estás son las estaciones de nuestro sistema integrado, algunas estaciones 
        son de gran importacia para el turismo. Explora y entérate.</p>
    <div class="table list">
        <c:forEach var="station" items="${stations}">
            <div class="box">
                <div>
                    ${station.name}
                </div>
                <div>
                    ${station.description}
                </div>
            </div>
        </c:forEach>
    </div>    
</html>
