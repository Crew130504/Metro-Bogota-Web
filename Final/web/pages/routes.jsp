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
   
        <p>Aquí podrá encontrar las rutas de metrocable que actualmente están en funcionamiento.</p>    
                     
        <div class="wrapper">
            <c:forEach items="${routes}" var = "route">                    
                <details> 
                    <summary style="background-color: ${route.color}">
                        ${route.name} | <%-- ${route.path} esto es un comentario --%>
                    </summary>
                    <div>
                        <div class="description">
                            ${route.description}
                        </div>
                        <div class="image">
                            <!-- <img src="src" alt="alt"/> Pon alguna imagen -->
                        </div>
                    </div> 
                        
                </details>
            </c:forEach>
        </div>
        
    


</html>
