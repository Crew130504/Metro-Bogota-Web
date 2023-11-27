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
    <body>
        <c:forEach items="${route}" var = "product">
            <p><c:out value="${route.getName()}"/></p>           

        </c:forEach>
    </body>
</html>
