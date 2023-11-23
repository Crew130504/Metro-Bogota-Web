<%-- 
    Document   : index
    Created on : 22 nov. 2023, 07:47:40
    Author     : braya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                <a href="">Descripción de rutas</a>
                <a href="">Rutas del metrocable</a>
                <a href="">Rutas del metro</a>
                <a href="">Horarios</a>
                <a href="">Estaciones</a>
                <a href="pages/map.html" target="_blank">Mapa del sistema integrado</a>
                <a 
            </nav>
        </section>
        <main>
            <jsp:include page="${somePage}.jsp" flush="true" />
        </main>
    </body>
</html>
