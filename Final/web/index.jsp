<%-- 
    Document   : index
    Created on : 26/11/2023, 05:22:32 PM
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Metro de Bogotá 🚇</title>
        <link rel="stylesheet" href="styles/index.css" type="text/css"/>
        
    </head>
    <body>
        <header class="contenedor">
            <a href="" class="about" >   👁 about us</a>
            <img class="imagen" src="imagenes/bogotaLogo.jpeg" alt="Logo del Metro de Bogotá sobre un paisáje urbano"  >
            <h1 class="titulo">
                <span class="word1">🚇 METRO</span>
                <span class="word2">DE</span>
                <span class="word3">BOGOTA 🚇 </span>
            </h1>    
        </header>
        <section class="pagina">
     
            <section class="menu">
                <nav>
                    <ul>
                        <li><a href="HomeServlet?">Inicio &#x2b9a</a></li>
                        <li><a href="RouteServlet?get=description">Descripción de rutas &#x2b9a</a></li>
                        <li><a href="RouteServlet?get=cable">Rutas del metrocable &#x2b9a</a></li>
                        <li><a href="RouteServlet?get=metro">Rutas del metro &#x2b9a</a></li>
                        <li><a href="ScheduleServlet?">Horarios &#x2b9a</a></li>
                        <li><a href="StationServlet?">Estaciones &#x2b9a</a></li>
                        <li><a href="pages/map.html" target="_blank">Mapa del sistema integrado 🖈 </a></li>
                    </ul>
                </nav>
            </section>

        </section>
        <main>
         
                <h1> Bienvenido!</h1>
                 <img class="inicio" src="imagenes/metro.jpg" alt="imagen metro"  >
                 <jsp:include page="pages/${empty page ? 'home' : page}.jsp"/>
        </main>
        <footer><a href="" class="about">...about us</a></footer>
    </body>
</html>
