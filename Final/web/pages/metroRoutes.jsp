<%-- 
    Document   : metroRoutes
    Created on : 22 nov. 2023, 17:12:43
    Author     : braya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:forEach items="${object}" var = "product">
            <p><c:out value="${object.getName()}"/></p>
        </c:forEach>
    </body>
</html>
