<%@page import="java.sql.*, java.util.*" %>

<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html>


    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> TOTAL Energy</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset =utf-8">
        <style>

            .menu{
                width: 100%;
                height: 6%;
                margin:auto;
                background-color:#2ffc06;
                position: fixed;
                z-index: 1000; /* Asegura que quede sobre otros elementos */
                top: 0;
                left: 0;

            }
            .content {
                margin-top: 6%;/* Igual al valor de 'height' de .menu */
            }
            .cabeza{
                width: 100%;
                height: 300px;
                margin-top:55px;
                
            }
            .renovables{
                width: 70%;
                height: 100%;
                margin:auto;                
                object-fit: contain;
                justify-content: center;
                aling-items: center;
            }
            .tips{
                width: 80%;
                height: 80%;
                margin:auto;
                object-fit: contain;
                justify-content: center;
                aling-items: center;

                padding: 20px;
                width: 80%;
                max-width: 800px;

                text-align: center;
            }


            .cuerpoenergias{
                width: 80%;
                height: 50%;
                margin:auto;
                background: linear-gradient(to right,#ffe4e4, #2f8d33);
                object-fit: contain;
            }
            .cuerpo{
                width: 80%;
                height: 550%;
                margin:auto;
                
                object-fit: contain;
                margin-top: 50px;
            }
            .cuerpo h1{
                text-align: center;
            }
            .cuerpograficas{
                width: 70%;
                height: 100%;
                margin:auto;
                
                object-fit: contain;
            }
            .cuerpograficas h1{
                margin-left: 300px;
            }
            
            .tablas{
                width: 70%;
                height: 150%;
                margin: auto;
                object-fit: contain;
                line-height: 1em;

                
            }
            .graficas{
                width: 50%;
                height: 100%;
                margin:auto;
                
                object-fit: contain;
                margin-top: 50px;
            }

            .pie{
                width: 100%;
                height: 20%;
                background-color: rgb(52, 144, 219);
                justify-content: center;
                margin-top:100px;
                margin_left: 10px;
                

            }

            body,td,th{
                font-size: 16;

            }
            
            .energia-renovable {
                padding: 40px;
                width: 150%;
                max-width: 960px;
                text-align: center;
                margin-top: 50px;
                margin-left:300px;
            }

            /* Título principal */
            .energia-renovable h1 {
                color: #27ae60;
                font-size: 3rem;
                font-weight: 700;
                text-transform: uppercase;
                letter-spacing: 2px;
                text-shadow: 2px 2px 4px #fff;
                margin-bottom: 20px;
            }

            /* Subtítulo */
            .bienvenida {
                color: #16a085;
                font-size: 1.6rem;
                font-weight: bold;
                margin-bottom: 20px;
            }

            /* Párrafos */
            .energia-renovable p {
                line-height: 1.7;
                font-size: 1.1rem;
                color: #000;
                margin-bottom: 20px;
            }

            /* Llamado a la acción */
            .llamado {
                color: #2980b9;
                font-size: 1.4rem;
                font-weight: bold;
                margin-top: 20px;
            }

            /* Estilos responsivos */
            @media (max-width: 768px) {
                .energia-renovable {
                    width: 90%;
                    padding: 20px;
                }
                .energia-renovable h1 {
                    font-size: 2.5rem;
                }
                .bienvenida {
                    font-size: 1.4rem;
                }
                .energia-renovable p {
                    font-size: 1rem;
                }
            }

            #menu {
                background: #173e10bd;
                height: 60px;
                border-radius: 0px;
            }
            #menu ul, #menu li {
                margin: 0 auto;
                padding: 0;
                list-style: none
            }
            #menu ul {
                width: 100%;
                text-align: center;
            }
            #menu li {
                display: inline-block;
                position: relative;
            }
            #menu a {
                display: block;
                line-height: 60px;
                padding: 0 14px;
                text-decoration: none;
                color: #FFFFFF;
                font-size: 16px;
            }
            #menu a.dropdown-arrow:after {
                content: "\25BE";
                margin-left: 5px;
            }
            #menu li a:hover {
                color: #8C52FF;
                background: #F2F2F2;
            }
            #menu input {
                display: none;
                margin: 0;
                padding: 0;
                height: 60px;
                width: 100%;
                opacity: 0;
                cursor: pointer
            }
            #menu label {
                display: none;
                line-height: 60px;
                text-align: center;
                position: absolute;
                left: 35px
            }
            #menu label:before {
                font-size: 1.6em;
                color: #FFFFFF;
                content: "\2261";
                margin-left: 20px;
            }
            #menu ul.sub-menus{
                height: auto;
                overflow: hidden;
                width: 170px;
                background: #000000;
                position: absolute;
                z-index: 99;
                display: none;
            }
            #menu ul.sub-menus li {
                display: block;
                text-align: left;
                width: 100%;
            }
            #menu ul.sub-menus a {
                color: #FFFFFF;
                font-size: 16px;
            }
            #menu li:hover ul.sub-menus {
                display: block
            }
            #menu ul.sub-menus a:hover{
                background: #BBBBBB;
                color: #444444;
            }
            @media screen and (max-width: 800px){
                #menu {
                    position:relative
                }
                #menu ul {
                    background:#3ddc1d;
                    position:absolute;
                    top:100%;
                    right:0;
                    left:0;
                    z-index:3;
                    height:auto;
                    display:none;
                    text-align:left;
                }
                #menu ul.sub-menus {
                    width:100%;
                    position:static;
                }
                #menu ul.sub-menus a {
                    padding-left:30px;
                }
                #menu li {
                    display:block;
                    float:none;
                    width:auto;
                }
                #menu input, #menu label {
                    position:absolute;
                    top:0;
                    left:0;
                    display:block
                }
                #menu input {
                    z-index:4
                }
                #menu input:checked + label {
                    color:#FFFFFF
                }
                #menu input:checked + label:before {
                    content:"\00d7"
                }
                #menu input:checked ~ ul {
                    display:block
                }
            }

            .cuerpoizquierdo{
                width: 1000px;
                height: 8%;
                background: linear-gradient(to right,#887474, #47974b);
                float: left;
                padding: 5px;
                margin-top: 25px;
                margin-bottom: 25px;

            }
            .cuerpoderecho{
                width: 1000px;
                height: 8%;
                float: right;
                background: linear-gradient(to right,#bd7c7c, #47974b);
                margin-top: 25px;
                margin-bottom: 25px;
                padding: 10px;


            }
            .d1{
                width:35%;
                height: 90%;

                float: right;
                padding: 5px;
                margin-top: 15px;
                margin-left: 5px;
                margin-right: 7px;
                margin-bottom: 5px;
                transition: transform 0.3s ease; /* Suaviza la animación */
                border-radius: 5px; /* Opcional: esquinas redondeadas */
                cursor: pointer;

            }
            .d1 img{
                width: 100%;
                height: 100%;
                object-fit: contain;
            }
            .d2 img{
                width: 100%;
                height: 100%;
                object-fit: contain;
            }
            .d1b img{
                width: 100%;
                height: 100%;
                object-fit: contain;
            }
            .d2b img{
                width: 100%;
                height: 100%;
                object-fit: contain;
            }
            .d1b{
                width:35%;
                height: 90%;

                float: left;
                padding: 5px;
                margin-top: 15px;
                margin-left: 5px;
                margin-right: 7px;
                margin-bottom: 5px;
            }
            .d2{
                width: 60%;
                height: 90%;
                float: left;
                padding: 5px;
                margin-top: 0px;
                margin-left: 5px;
                margin-right: 7px;
                margin-bottom: 5px;
                justify-content: center;



            }
            .d2b{
                width: 550px;
                height: 500px;
                float: right;
                padding: 5px;
                margin-top: 0px;
                margin-left: 0px;
                margin-right: 0px;
                margin-bottom: 0px;
                justify-content: center;

            }

            .text1{
                color: white;
                width: 100%;
                height: 200%;
                object-fit: contain;

            }


            .img1{
                object-fit: contain;
                width: 100%;
                heigth: 100%;

            }
            .img2{
                object-fit: contain;
                width: 50%;
                heigth: 80%;

            }
            .imagenes{
                width: "200 px";
                height: "240 px";
                object-fit: contain;
            }
            .d2 h2{
                font-size: 30px;
                color: white;
                object-fit: contain;
            }
            .d2b h2{
                font-size: 30px;
                color: white;
                object-fit: contain;
            }
            .cuerpoderecho:hover,
            .cuerpoizquierdo:hover{
                filter: brightness(1.2);
                transition: filter 0.3 ease;
            }

            <%-- vaesa--%>

            



            body, table, input, select, textarea {

            }


            .graph {
                margin-bottom:1em;
                font:normal 100%/150% arial,helvetica,sans-serif;
            }

            .graph caption {
                font:bold 150%/120% arial,helvetica,sans-serif;
                padding-bottom:0.33em;
            }

            .graph tbody th {
                text-align:right;
            }

            @supports (display:grid) {

                @media (min-width:32em) {

                    .graph {
                        display:block;
                        width:600px;
                        height:300px;
                    }

                    .graph caption {
                        display:block;
                    }

                    .graph thead {
                        display:none;
                    }

                    .graph tbody {
                        position:relative;
                        display:grid;
                        grid-template-columns:repeat(auto-fit, minmax(2em, 1fr));
                        column-gap:2.5%;
                        align-items:end;
                        height:100%;
                        margin:3em 0 1em 2.8em;
                        padding:0 1em;
                        border-bottom:2px solid rgba(0,0,0,0.5);
                        background:repeating-linear-gradient(
                            180deg,
                            rgba(170,170,170,0.7) 0,
                            rgba(170,170,170,0.7) 1px,
                            transparent 1px,
                            transparent 20%
                            );
                    }

                    .graph tbody:before,
                        .graph tbody:after {
                        position:absolute;
                        left:-3.2em;
                        width:2.8em;
                        text-align:right;
                        font:bold 80%/120% arial,helvetica,sans-serif;
                    }

                    .graph tbody:before {
                        content:"100%";
                        top:-0.6em;
                    }

                    .graph tbody:after {
                        content:"0%";
                        bottom:-0.6em;
                    }

                    .graph tr {
                        position:relative;
                        display:block;
                    }

                    .graph tr:hover {
                        z-index:999;
                    }

                    .graph th,
                    .graph td {
                        display:block;
                        text-align:center;
                    }

                    .graph tbody th {
                        position:absolute;
                        top:-3em;
                        left:0;
                        width:100%;
                        font-weight:normal;
                        text-align:center;
                        white-space:nowrap;
                        text-indent:0;
                        transform:rotate(-45deg);
                    }

                    .graph tbody th:after {
                        content:"";
                    }

                    .graph td {
                        width:100%;
                        height:100%;
                        background:#F63;
                        border-radius:0.5em 0.5em 0 0;
                        transition:background 0.5s;
                    }

                    .graph tr:hover td {
                        opacity:0.7;
                    }

                    .graph td span {
                        overflow:hidden;
                        position:absolute;
                        left:50%;
                        top:50%;
                        width:0;
                        padding:0.5em 0;
                        margin:-1em 0 0;
                        font:normal 85%/120% arial,helvetica,sans-serif;
                        /* 			background:white; */
                        /* 			box-shadow:0 0 0.25em rgba(0,0,0,0.6); */
                        font-weight:bold;
                        opacity:0;
                        transition:opacity 0.5s;
                        color:white;
                    }

                    .toggleGraph:checked + table td span,
                        .graph tr:hover td span {
                        width:4em;
                        margin-left:-2em; /* 1/2 the declared width */
                        opacity:1;
                    }
                    






                } /* min-width:32em */

            } /* grid only */
            @font-face {
                
                
                font-family: "mushin bold";
                src: url("https://files.catbox.moe/kju7g2.otf");
                
            }
            .text-item{
                font-size: 90px;
            }
            
            .container {
            display: flex;
            justify-content: space-between;
            gap: 20px;
        }
        .graph {
            width: 60%;
            border-collapse: collapse;
            border: 0px solid #ddd;
        }
        .graph th, .graph td {
            padding: 8px;
            text-align: left;
            border: 0px solid #ddd;
        }
        .graph th {
            background-color: #FFFFFF;
        }
        .total-table {
            width: 35%;
            border-collapse: collapse;
            border: 1px solid #ddd;
        }
        .total-table th, .total-table td {
            padding: 8px;
            text-align: left;
            border: 0x solid #ddd;
        }
        .total-table th {
            background-color: #fff;
        }
        h1 {
            font-family: 'mushin bold';
        }





        </style>
        <script>
            // Guardar la posición del scroll antes de cargar una nueva página
            function saveScrollPosition() {
                localStorage.setItem('scrollPosition', window.scrollY);
            }

            // Restaurar la posición del scroll al cargar la página
            window.onload = function () {
                var scrollPosition = localStorage.getItem('scrollPosition');
                if (scrollPosition) {
                    window.scrollTo(0, scrollPosition);
                    localStorage.removeItem('scrollPosition');
                }
            };
        </script>
    </head>




    <body style="margin: 0; padding: 0; background: linear-gradient(to right,#ffe4e4, #2f8d33);">
  <div class="content">
        <div class="cabeza"> 
            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="banner1.png" class="d-block w-100" alt="..." width="1200" height="400">
                    </div>
                    <div class="carousel-item">
                        <img src="banner2.png" class="d-block w-100" alt="..."width="1200" height="400">
                    </div>
                    <div class="carousel-item">
                        <img src="banner3.png" class="d-block w-100" alt="..."width="1200" height="400">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
        <div class="menu">
            <nav id='menu'>
                <input type='checkbox' id='responsive-menu' onclick='updatemenu()'><label></label>
                <ul>
                    <li><a href='#energia'>Inicio</a></li>
                    <li><a href='#tablas'>Tablas</a></li>
                    <li><a href='#graficas'>Graficas</a></li>
                    <li><a href='#tiposDeEnergias'>Tipos de energia</a>
                    <li><a href='#tips'>Tips ahorro de energia</a></li>
                    </li>

                </ul>
            </nav>
        </div>




        <section id='energia'>
            <br>
        <div class="renovables"><div class="img2"><img src="inicio.jpg" width ="200%" height="35%"></div><div class="text1">
                <section class="energia-renovable">    <h1>ENERGÍAS RENOVABLES</h1>
                    <p class="bienvenida">Bienvenido a un Futuro Energético Sostenible</p>
                    <p>
                        En nuestra página, encontrarás todo lo que necesitas saber sobre las energías renovables: 
                        soluciones limpias, sostenibles y eficientes que están transformando la forma en que producimos y consumimos energía. 
                        Desde la energía solar y eólica hasta la hidráulica y la biomasa, exploramos cómo estas fuentes están ayudando a construir 
                        un mundo más verde y responsable con el medio ambiente.
                    </p>
                    <p>
                        Aquí descubrirás información actualizada, proyectos innovadores y recursos educativos para inspirarte a ser parte 
                        del cambio hacia un planeta más sostenible.
                    </p>
                    <p class="llamado">¡Únete a nosotros en esta misión energética por un futuro más limpio!</p>
                </section>
            </div></div>
        </section>












<section id='tablas'>
<div class="tablas">

        <div class="cuerpograficas">

            <h1 style="font-family: 'mushin bold';">Energy Source</h1>
            <table class="table table-hover table-success" border="1">
                <thead>
                    <tr>
                        <th> 
                            Id
                        </th>
                        <th>  
                            Name
                        </th>
                        <th>  
                            Description
                        </th>
                    </tr>


                </thead>
                <tbody>
                    <%
                        // configurar conexion base de datos
                        String URL = "jdbc:mysql://localhost:3306/energymanagement";
                        String usuariodb = "root";
                        String password = "";

                        // Método para obtener la conexión a la base de datos
                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection conn = DriverManager.getConnection(URL, usuariodb, password);
                            Statement stmt = conn.createStatement();
                            String sql = "SELECT * FROM energysource";
                            ResultSet rs = stmt.executeQuery(sql);

                            //mostrar el resultado
                            while (rs.next()) {
                                int id = rs.getInt("id");
                                String Name = rs.getString("name");
                                String Description = rs.getString("description");

                    %>    
                    <tr>
                        <td><%= id%></td>
                        <td><%= Name%></td>
                        <td><%= Description%></td>
                    </tr>   

                    <%
                            }
                            //cerrar conexion
                            rs.close();
                            stmt.close();
                            conn.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }

                    %>



                </tbody>



            </table>



            <h1 style="font-family: 'mushin bold';">Energy Data</h1>
            <table class="table table-hover table-primary" border="1">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Year</th>
                        <th>Production</th>
                        <th>Consumption</th>
                        <th>FuenteEnergia</th>
                    </tr>
                </thead>
                <tbody>
                    <%            // Configuración de la base de datos
                        int registrosPorPagina = 15;
                        int totalPaginas = 0; // Inicialización de la variable para todo el JSP
                        int paginaActual = 1;

                        // Obtener el número de página actual
                        String pageParam = request.getParameter("page");
                        if (pageParam != null && !pageParam.isEmpty()) {
                            paginaActual = Integer.parseInt(pageParam);
                        }

                        int offset = (paginaActual - 1) * registrosPorPagina;

                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection conn = DriverManager.getConnection(URL, usuariodb, password);
                            Statement stmt = conn.createStatement();

                            // Contar el total de registros
                            String countQuery = "SELECT COUNT(*) AS total FROM energydata";
                            ResultSet countRs = stmt.executeQuery(countQuery);
                            countRs.next();
                            int totalRegistros = countRs.getInt("total");
                            totalPaginas = (int) Math.ceil((double) totalRegistros / registrosPorPagina); // Aquí no se debe declarar nuevamente

                            // Consultar registros para la página actual
                            String sql = "SELECT ed.id, ed.year, ed.production, ed.consumption, es.name AS FuenteEnergia "
                                    + "FROM energydata ed JOIN energysource es ON ed.source_id = es.id "
                                    + "LIMIT " + registrosPorPagina + " OFFSET " + offset;
                            ResultSet rs = stmt.executeQuery(sql);

                            // Mostrar los resultados
                            while (rs.next()) {
                                int id = rs.getInt("id");
                                int year = rs.getInt("year");
                                double production = rs.getDouble("production");
                                double consumption = rs.getDouble("consumption");
                                String FuenteEnergia = rs.getString("FuenteEnergia");
                    %>
                    <tr>
                        <td><%= id%></td>
                        <td><%= year%></td>
                        <td><%= production%></td>
                        <td><%= consumption%></td>
                        <td><%= FuenteEnergia%></td>
                    </tr>
                    <%
                            }
                            rs.close();
                            countRs.close();
                            stmt.close();
                            conn.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                </tbody>
            </table>

            <!-- Navegación de páginas -->
            <div class="pagination">
                <%
                    // Crear los enlaces de paginación
                    for (int i = 1; i <= totalPaginas; i++) {
                        if (i == paginaActual) {
                %>
                <span style="font-weight: bold; margin: 0 5px;"><%= i%></span>
                <%
                } else {
                %>
                <a href="?page=<%= i%>" style="margin: 0 5px;" onclick="saveScrollPosition()"><%= i%></a>
                <%
                        }
                    }
                %>
            </div>




        </div>

    </div>
              </section>








<script>
    function updatemenu() {
        if (document.getElementById('responsive-menu').checked == true) {
            document.getElementById('menu').style.borderBottomRightRadius = '0';
            document.getElementById('menu').style.borderBottomLeftRadius = '0';
        } else {
            document.getElementById('menu').style.borderRadius = '0px';
        }
    }
</script>








<section id='graficas'>

<div class="graficas">
    <%
    double produccionTotal = 0;
    double produccionSolar = 0;
    double produccionEolica = 0;
    double produccionHidraulica = 0;
    double produccionNuclear = 0;
    double produccionCarbon = 0;
    double produccionPetroleo = 0;
    double produccionGasNatural = 0;
    double produccionGeotermica = 0;
    double produccionBiomasa = 0;
    double produccionMareomotriz = 0;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(URL, usuariodb, password);
        Statement stmt = conn.createStatement();

        // Consulta para obtener la producción por fuente de energía
        String sql = "SELECT source_id, SUM(production) AS ProduccionTotal FROM energydata WHERE source_id IN (1,2,3,4,5,6,7,8,9,10) GROUP BY source_id";
        ResultSet rs = stmt.executeQuery(sql);

        while (rs.next()) {
            int sourceId = rs.getInt("source_id");
            double produccion = rs.getDouble("ProduccionTotal");

            switch (sourceId) {
                case 1:
                    produccionSolar = produccion;
                    break;
                case 2:
                    produccionEolica = produccion;
                    break;
                case 3:
                    produccionHidraulica = produccion;
                    break;
                case 4:
                    produccionNuclear = produccion;
                    break;
                case 5:
                    produccionCarbon = produccion;
                    break;
                case 6:
                    produccionPetroleo = produccion;
                    break;
                case 7:
                    produccionGasNatural = produccion;
                    break;
                case 8:
                    produccionGeotermica = produccion;
                    break;
                case 9:
                    produccionBiomasa = produccion;
                    break;
                case 10:
                    produccionMareomotriz = produccion;
                    break;
            }
        }

        // Calcular el total de energía generada
        produccionTotal = produccionSolar + produccionEolica + produccionHidraulica +
                          produccionNuclear + produccionCarbon + produccionPetroleo +
                          produccionGasNatural + produccionGeotermica + produccionBiomasa +
                          produccionMareomotriz;

        rs.close();
        stmt.close();
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }

    // Calcular el porcentaje respecto al total para cada fuente de energía
    double porcentajeSolar = (produccionSolar / produccionTotal) * 100;
    double porcentajeEolica = (produccionEolica / produccionTotal) * 100;
    double porcentajeHidraulica = (produccionHidraulica / produccionTotal) * 100;
    double porcentajeNuclear = (produccionNuclear / produccionTotal) * 100;
    double porcentajeCarbon = (produccionCarbon / produccionTotal) * 100;
    double porcentajePetroleo = (produccionPetroleo / produccionTotal) * 100;
    double porcentajeGasNatural = (produccionGasNatural / produccionTotal) * 100;
    double porcentajeGeotermica = (produccionGeotermica / produccionTotal) * 100;
    double porcentajeBiomasa = (produccionBiomasa / produccionTotal) * 100;
    double porcentajeMareomotriz = (produccionMareomotriz / produccionTotal) * 100;
    %>

    <!-- Crear la gráfica con porcentajes -->



            <div class="container">
        <!-- Tabla de distribución energética -->
        <table class="graph">
            <caption><h1>Distribución Energética</h1></caption>
            <thead>
                <tr>
                    <th scope="col">Fuente de Energía</th>
                    <th scope="col">Porcentaje</th>
                </tr>
            </thead>
            <tbody>
                <tr><th scope="row">Solar</th><td><%= String.format("%.2f", porcentajeSolar) %> %</td></tr>
                <tr><th scope="row">Eólica</th><td><%= String.format("%.2f", porcentajeEolica) %> %</td></tr>
                <tr><th scope="row">Hidráulica</th><td><%= String.format("%.2f", porcentajeHidraulica) %> %</td></tr>
                <tr><th scope="row">Nuclear</th><td><%= String.format("%.2f", porcentajeNuclear) %> %</td></tr>
                <tr><th scope="row">Carbon</th><td><%= String.format("%.2f", porcentajeCarbon) %> %</td></tr>
                <tr><th scope="row">Petroleo</th><td><%= String.format("%.2f", porcentajePetroleo) %> %</td></tr>
                <tr><th scope="row">Gas Natural</th><td><%= String.format("%.2f", porcentajeGasNatural) %> %</td></tr>
                <tr><th scope="row">Geotérmica</th><td><%= String.format("%.2f", porcentajeGeotermica) %> %</td></tr>
                <tr><th scope="row">Biomasa</th><td><%= String.format("%.2f", porcentajeBiomasa) %> %</td></tr>
                <tr><th scope="row">Mareomotriz</th><td><%= String.format("%.2f", porcentajeMareomotriz) %> %</td></tr>
            </tbody>
        </table>

        <!-- Tabla de total de las producciones -->
         <table class="total-table">
            <caption><h1>Total de Producción</h1></caption>
            <thead>
                <tr>
                    <th scope="col">Total Producción</th>
                </tr>
            </thead>
            <tbody>
                <!-- Aquí calculamos el total de producción sumando las producciones individuales -->
                <tr><td><%= produccionTotal %> kWh</td></tr>
            </tbody>
        </table>
    </div>
            </div>

       
  </section>
        
        
        
        
        
        
        <section id='tiposDeEnergias'>
        
        <div class="cuerpo"><h1>TIPOS DE ENERGIA</h1><br>
    <div class="cuerpoderecho">
        <div class="d1"><div class="img1"><img src="solar.jpeg"></div><div class="text1"></div></div>
        <div class="d2"><h2>Energía Solar</h2><div class="text1"><p>La energía solar utiliza la luz del sol para generar electricidad o calor. Existen dos métodos principales: la energía fotovoltaica, que convierte la luz directamente en electricidad mediante paneles solares, y la energía solar térmica, que usa el calor para calentar agua o aire. Esta fuente de energía es limpia, abundante y no produce emisiones contaminantes. Además, es cada vez más accesible gracias a la disminución de los costos de los paneles solares.</p></div></div>
    </div>
    <div class="cuerpoizquierdo">
        <div class="d1b"><div class="img1"><img src="eolica.jpg" ></div><div class="text1"></div></div>
        <div class="d2"><h2>Energia Eolica</h2><div class="img1"></div><div class="text1"><p> energía eólica es una fuente renovable que convierte la energía del viento en electricidad mediante aerogeneradores. Es una de las alternativas más limpias y sostenibles para generar energía. Ventajas: Renovable: El viento es una fuente inagotable y no produce emisiones contaminantes.
                    Bajo impacto ambiental: No emite CO2 ni otros gases contaminantes durante su funcionamiento. <br>
                    Costos bajos: Después de la instalación inicial, los costos operativos son relativamente bajos.
                    Descentralizada: Se puede generar energía localmente, reduciendo la dependencia de fuentes externas.</p>
            </div></div> 
    </div>
    <div class="cuerpoderecho">
        <div class="d1"><div class="img1"><img src="hidaulica.jpg"></div><div class="text1"></div></div>
        <div class="d2"><h2>Energia Hidraulica</h2><div class="text1"><p>Energía Hidráulica
                    La energía hidráulica aprovecha el movimiento del agua, generalmente de ríos o embalses, para generar electricidad. Se utiliza en plantas hidroeléctricas donde el agua en movimiento hace girar turbinas conectadas a generadores.
                    Ventajas:
                    Renovable: El agua es una fuente inagotable y natural.
                    Bajo impacto ambiental: No emite gases contaminantes durante su funcionamiento.
                    Alta eficiencia: Las plantas hidroeléctricas tienen una eficiencia de conversión de energía muy alta.
                    Flexible: Permite almacenamiento de energía en embalses, lo que facilita el control de la producción de electricidad según la demanda.</p></div></div>
    </div>

    <div class="cuerpoizquierdo">
        <div class="d1b"><div class="img1"><img src="nuclear.jpg"></div><div class="text1"></div></div>
        <div class="d2"><h2>Energia Nuclear</h2><div class="img1"></div><div class="text1"><p>Energía Nuclear
                    La energía nuclear se obtiene a través de la fisión de átomos de uranio en un reactor nuclear, liberando grandes cantidades de energía que se convierten en electricidad. Es una fuente de energía densa y eficiente.

                    Ventajas:

                    Alta eficiencia: Una pequeña cantidad de material nuclear puede generar una gran cantidad de energía.
                    Bajas emisiones de CO₂: No produce emisiones contaminantes durante su operación, ayudando a reducir el cambio climático.
                    Suministro constante: A diferencia de las energías renovables, no depende de factores naturales como el sol o el viento.
                    Sostenible a largo plazo: El uranio, aunque limitado, es más abundante que los combustibles fósiles.</p></div></div> </div>

    <div class="cuerpoderecho">
        <div class="d1"><div class="img1"><img src="carbon.jpg"></div><div class="text1"></div></div>
        <div class="d2"><h2>Energia proveniente del Carbón</h2><div class="text1"><p>Energía de Carbón
                    La energía de carbón se obtiene mediante la combustión de carbón, un combustible fósil, para generar electricidad. Las plantas termoeléctricas queman carbón para calentar agua, generando vapor que mueve turbinas conectadas a generadores eléctricos.

                    Ventajas:

                    Bajo costo: El carbón es generalmente más barato que otras fuentes de energía fósil.
                    Alta disponibilidad: El carbón es ampliamente disponible en muchas partes del mundo, lo que lo hace una fuente confiable de energía.
                    Capacidad de generación continua: Las plantas de energía de carbón pueden funcionar de manera constante, proporcionando electricidad las 24 horas.</p></div></div> </div>

    <div class="cuerpoizquierdo">
        <div class="d1b"><div class="img1"><img src="petroleo.jpg"></div><div class="text1"></div></div>
        <div class="d2"><h2>Energia Petrolera</h2><div class="img1"></div><div class="text1"><p>Energía de Petróleo
                    La energía de petróleo proviene de la combustión del petróleo, un combustible fósil, que se utiliza principalmente en motores de vehículos, industria y generación de electricidad. El petróleo se refina en productos como gasolina, diésel y queroseno.

                    Ventajas:

                    Alta densidad energética: El petróleo tiene una gran capacidad para generar energía en comparación con otros combustibles.
                    Versatilidad: Se utiliza en múltiples sectores, como el transporte, la industria química y la producción de electricidad.
                    Infraestructura global: Existen amplias redes de distribución y refinerías que facilitan su acceso y uso.</p></div></div> </div>


    <div class="cuerpoderecho">
        <div class="d1"><div class="img1"><img src="gasNatural.jpg"></div><div class="text1"></div></div>
        <div class="d2"><h2>Gas Natural</h2><div class="text1"><p>Energía de Gas Natural
                    El gas natural es un combustible fósil que se extrae de yacimientos subterráneos y se utiliza para generar electricidad, calefacción y como combustible en vehículos. Su combustión produce menos emisiones contaminantes en comparación con otros combustibles fósiles.

                    Ventajas:

                    Bajas emisiones de CO₂: Produce menos dióxido de carbono y otros contaminantes en comparación con el carbón y el petróleo.
                    Eficiencia: Las plantas de energía a gas natural son más eficientes en términos de conversión de energía que las plantas de carbón.
                    Abundante: Aunque es un recurso no renovable, el gas natural está ampliamente disponible en muchas regiones.
                    Flexibilidad: Puede ser utilizado tanto para generación de electricidad como para calefacción y transporte.</p></div></div> </div>

    <div class="cuerpoizquierdo">
        <div class="d1b"><div class="img1"><img src="geotermica.jpg"></div><div class="text1"></div></div>
        <div class="d2"><h2>Energia Geotermica</h2><div class="text1"><p>La energía geotérmica aprovecha el calor interno de la Tierra para generar electricidad y calefacción. Se extrae mediante la perforación de pozos en áreas geotérmicas activas, donde el calor del interior de la Tierra calienta agua o vapor, que luego se utiliza para mover turbinas conectadas a generadores.
                    Ventajas:
                    Renovable: El calor terrestre es inagotable y siempre disponible.
                    Bajas emisiones de CO₂: Produce muy pocas emisiones en comparación con los combustibles fósiles.
                    Eficiencia constante: A diferencia de las energías solares o eólicas, no depende de factores climáticos, funcionando de manera continua.
                    Bajo costo operativo: Una vez construida la infraestructura, los costos operativos son bajos.</p></div></div> </div>

    <div class="cuerpoderecho">
        <div class="d1"><div class="img1"><img src="biomasa.jpg"></div><div class="text1"></div></div>
        <div class="d2"><h2>Biomasa</h2><div class="text1"><p>Energía de Biomasa
                    La energía de biomasa se obtiene a partir de materiales orgánicos, como madera, residuos agrícolas, residuos sólidos urbanos o biogás. Estos materiales se queman o se transforman mediante procesos biológicos para generar electricidad, calor o biocombustibles.

                    Ventajas:

                    Renovable: La biomasa es una fuente renovable, ya que los materiales orgánicos se pueden reponer continuamente.
                    Reducción de residuos: Utiliza residuos orgánicos que de otro modo se desecharían, reduciendo la acumulación de basura.
                    Bajas emisiones de CO₂: Aunque emite CO₂ al quemarse, el carbono liberado es parte del ciclo natural, y las plantas que se utilizan para biomasa absorben CO₂ mientras crecen.
                    Diversidad de fuentes: Puede provenir de una variedad de fuentes, lo que la hace flexible y accesible.</p></div></div> </div>

    <div class="cuerpoizquierdo">
        <div class="d1b"><div class="img1"><img src="mareomotriz.jpg"></div><div class="text1"></div></div>
        <div class="d2"><h2>Energia Mareomotriz</h2><div class="text1"><p>Energía Mareomotriz
                    La energía mareomotriz aprovecha el movimiento de las mareas del océano para generar electricidad. Se utilizan dispositivos como turbinas submarinas y presas en zonas costeras para convertir el movimiento del agua en energía.

                    Ventajas:

                    Renovable: La energía mareomotriz es una fuente inagotable y natural.
                    Predecible: A diferencia de otras energías renovables, como la solar o la eólica, las mareas son predecibles, lo que permite una generación de energía constante.
                    Bajo impacto ambiental: No produce emisiones de gases contaminantes durante su funcionamiento.
                    Alta eficiencia: Las plantas mareomotrices tienen una eficiencia mayor en comparación con otras fuentes renovables.</p></div></div> </div>
</div>
              </section>
            
            
            
            
            <section id='tips'>
<div class="tips">



    <section>
        <h2 style="font-family: 'mushin bold';">Consejos Profesionales para Ahorrar Energía y Cuidar el Planeta</h2>
        <br>
        <br>
        <br>
        
        
        <ul>
            <li>
                <h3>Optimiza el uso de la iluminación</h3>
                <ul>
                    <li>Sustituye las bombillas incandescentes por LED, que consumen hasta un 80% menos energía.</li>
                    <li>Aprovecha la luz natural abriendo cortinas y persianas durante el día.</li>
                    <li>Apaga las luces en habitaciones desocupadas.</li>
                </ul>
            </li>
            <li>
                <h3>Usa electrodomésticos eficientes</h3>
                <ul>
                    <li>Elige equipos con certificación energética (como etiqueta A++ o Energy Star).</li>
                    <li>Desconecta dispositivos que no estés utilizando para evitar el consumo en modo espera.</li>
                    <li>Lava ropa con agua fría y utiliza la carga completa en lavadoras y lavavajillas.</li>
                </ul>
            </li>
            <li>
                <h3>Controla la climatización</h3>
                <ul>
                    <li>Mantén el aire acondicionado en 24°C y utiliza ventiladores para mejorar la circulación del aire.</li>
                    <li>Aísla puertas y ventanas para reducir pérdidas de calor o frío.</li>
                    <li>Usa cortinas gruesas o térmicas para conservar la temperatura en interiores.</li>
                </ul>
            </li>
            <li>
                <h3>Fomenta el uso de energías renovables</h3>
                <ul>
                    <li>Instala paneles solares para generar energía limpia en casa.</li>
                    <li>Opta por proveedores de electricidad que ofrezcan planes basados en energías renovables.</li>
                </ul>
            </li>
            <li>
                <h3>Adopta hábitos sostenibles</h3>
                <ul>
                    <li>Apaga y desconecta los dispositivos al final del día laboral.</li>
                    <li>Cocina con tapa en las ollas para reducir el tiempo de cocción.</li>
                    <li>Realiza mantenimiento regular de tus equipos para garantizar eficiencia energética.</li>
                </ul>
            </li>
        </ul>
        <p><strong>¡Pequeños cambios generan grandes impactos!</strong> Implementar estos hábitos no solo reduce tu huella ecológica, sino también tus gastos energéticos. Juntos podemos construir un futuro más sostenible.</p>
    </section>
</div>
                  </section>
<div class="pie" style="font-family: 'mushin bold'; font-size: 20px;"><ol>
    
    <div style="font-family: 'mushin bold'; font-size: 20px; margin-left: 60px;">
        <ul >
            <li>Cristian Jaimes</li>
            <li>Cristian Leon</li>
            <li>Vannesa Mosquera</li>
            <li>Andres Gomez</li>

        </ul>

    
        </div>
</ol><div class="d2b"><h1>TotalEnergy</h1></div>
</div>    
    </div>

</body>
</html>