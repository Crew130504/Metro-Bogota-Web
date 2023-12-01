<%-- 
    Document   : routesDescription
    Created on : 22 nov. 2023, 16:43:25
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

    <div>
        <div class="wrapper">
            <c:forEach var="route" items="${routes}">
                <div class="box" style="background-color: ${route.color}"> 
                    <div>
                        <div>
                            ${route.letter}
                        </div>                
                        <div>
                            ${route.origin} - ${route.destiny}
                        </div>    
                    </div> 
                    <div>
                        ${route.description} 
                    </div>
                </div>  

            </c:forEach>   
        </div>
    </div>
</html>
