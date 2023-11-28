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
    </head>
    <body>
        <p>Aquí podrá encontrar las rutas de metrocable que actualmente están en funcionamiento.</p>
    
        <table cellspacing="2" cellpadding="2">
            <tbody>                
                <c:forEach items="${routes}" var = "route">                    
                    <tr>
                        <td>
                            ${route.getLetter()}
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        
    </body>
</html>
