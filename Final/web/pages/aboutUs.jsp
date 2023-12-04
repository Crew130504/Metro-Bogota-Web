<%-- 
    Document   : aboutUs
    Created on : 3 dic. 2023, 16:11:18
    Author     : braya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="styles/aboutStyle.css"/>
    </head>
    <p>Conoce a los colaboradores que hicieron esto posible!</p>
    <div class="wrapper">
        <c:forEach items="${developers}" var = "developer">  
            <div class="box">
                <div class="name">
                    ${developer.name}
                </div>
                <div class="description">
                    ${developer.description}
                </div>
            </div>
        </c:forEach>
    </div>
</html>
