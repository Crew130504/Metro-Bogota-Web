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
    
    <ul>
        <c:forEach var="station" items="${stations}">
            <li>${station.id}: ${station.name}</li>
        </c:forEach>
    </ul>
    
</html>
