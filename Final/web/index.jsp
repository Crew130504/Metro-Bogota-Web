<%-- 
    Document   : index
    Created on : 22 nov. 2023, 07:47:40
    Author     : braya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Metro de Bogotá 🚇</title>
        <link rel="stylesheet" href="styles/indexStyle.css" type="text/css"/>
    </head>
    <body>
        <header>
            <img src="" alt="Logo del Metro de Bogotá sobre un paisáje urbano">
        </header>
        <section>
            <h5>Bienvenido, aquí podrás ver:</h5>
            <nav>
                <a href="RoutesDescServlet?main=cableCarRoutes">Descripción de rutas</a>
                <a href="CableCarRoutesServlet?main=cableCarRoutes">Rutas del metrocable</a>
                <a href="MetroRoutesServlet?main=metroRoutes">Rutas del metro</a>
                <a href="ScheduleServlet?main=schedules">Horarios</a>
                <a href="StationServlet?main=stations">Estaciones</a>
                <a href="pages/map.html" target="_blank">Mapa del sistema integrado</a>
                <a href="Controller?">Click acá para ver el ejemplo</a>
            </nav>
        </section>
        <main>
            <jsp:include page="pages/stations.jsp" flush="true" />
        </main>
    </body>
</html>
