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
<<<<<<< Updated upstream
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
=======
        <section class="pagina">     
            <section class="menu">
                <nav>
                    <ul>
                        <li><a href="HomeServlet?">Inicio &#x2b9a</a></li>
                        <!-- <li><a href="RouteServlet?get=description">Descripción de rutas &#x2b9a</a></li> -->
                        <li><a href="RouteServlet?">Rutas del sistema&#x2b9a</a></li>
                        <!-- <li><a href="RouteServlet?get=metro">Rutas del metro &#x2b9a</a></li> -->
                        <li><a href="ScheduleServlet?">Horarios &#x2b9a</a></li>
                        <li><a href="StationServlet?">Estaciones &#x2b9a</a></li>
                        <li><a href="Map?" target="_blank">Mapa del sistema integrado 🖈 </a></li>
                    </ul>
                </nav>
            </section>
>>>>>>> Stashed changes
        </section>
        <main>
            <jsp:include page="${somePage}.jsp" flush="true" />
        </main>
    </body>
</html>
