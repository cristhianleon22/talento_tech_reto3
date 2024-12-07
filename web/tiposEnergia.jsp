<%@page import="java.sql.*,java.util.*" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>

<title> TOTAL Energy</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset =utf-8">
<style>       

        .menu{
            width: 1200px;
            height: 60px;
            margin:auto;
            background-color:#2ffc06;
            
        }
        .cabeza{
        width: 1200px;
        height: 290px;
        margin:auto;
        background: url();
    }
        .cuerpo{
            width: 1200px;
            height: 500px;
            margin:auto;
            background: linear-gradient(to right,#ffe4e4, #2f8d33);

        }
        .cuerpodos{
            width: 1200px;
            height: 400px;
            margin:auto;
            background: linear-gradient(to right,#000000, #2f8d33);

        }
        
        .pie{
            width: 1200px;
            height: 100px;
            margin:auto;
            background-color: rgb(52, 144, 219);
        }
        body,td,th{
        font-size: 16;
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
	#menu {position:relative}
	#menu ul {background:#3ddc1d;position:absolute;top:100%;right:0;left:0;z-index:3;height:auto;display:none;text-align:left;}
	#menu ul.sub-menus {width:100%;position:static;}
	#menu ul.sub-menus a {padding-left:30px;}
	#menu li {display:block;float:none;width:auto;}
	#menu input, #menu label {position:absolute;top:0;left:0;display:block}
	#menu input {z-index:4}
	#menu input:checked + label {color:#FFFFFF}
	#menu input:checked + label:before {content:"\00d7"}
	#menu input:checked ~ ul {display:block}
}



.d1{
    width: 0px;
    height: 0px;
    background-color: black;
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
  width: 390px;
    height: 240px;
}
.d2 img{
  width: 390px;
    height: 240px;
}



.d2{
    width: 630px;
    height: 290px;
    float: left;
    padding: 5px;
    margin-top: 0px;
    margin-left: 5px;
    margin-right: 7px;
    margin-bottom: 5px;
    justify-content: center;
    
    
    
}


.text1{
  color: black;
  
}


.img1{
  width: "390 px";
   height: "240 px";
}
.d2 h1{
  font-size: 30px;
  color: black;
  text-align: center;
}


 

    </style>
</head>

    
    
    
    <body>
        

        <div class="cabeza"> 
            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
              <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
              </div>
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img src="banner1.png" class="d-block w-100" alt="..." width="1200" height="300">
                </div>
                <div class="carousel-item">
                  <img src="banner2.png" class="d-block w-100" alt="..."width="1200" height="300">
                </div>
                <div class="carousel-item">
                  <img src="banner3.png" class="d-block w-100" alt="..."width="1200" height="300">
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
                  <li><a href='#'>Inicio</a></li>
                  <li><a href='#'>Tipos de energia</a></li>
                  <li><a href='#'>Datos</a></li>
                  <li><a href='#'>Ver datos de energia</a>
                  </li>
                  <li><a href='#'>Sing up</a></li>
                  <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#ffffff" class="bi bi-person-circle" viewBox="0 0 16 16">
                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0"/>
                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1"/>
                  </svg>
                </ul>
              </nav>
              </div>
              <div class="cuerpo">
            <div class="cuerpo">
                <table border="1">
            <thead>
                <tr>
                    <th>id</th>
                    <th>name</th>
                    <th>description</th>
                    
                </tr>
                
                
            </thead>
            <tbody>
                <%
                    //1. configuramos la conexion a la base de datos
                    String url = "jdbc:mysql://localhost:3306/energymanagement";
                    String usuarioDB = "root";
                    String claveDB = "";
                    
                    //2. establecer la conexion
                    try{
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection conn=DriverManager.getConnection(url, usuarioDB, claveDB);
                    Statement stmt = conn.createStatement();
                    String sql = "SELECT * FROM energysource";
                    ResultSet rs = stmt.executeQuery(sql);
                    
                    //Mostrar el resultado el rs
                    
                    while (rs.next()){
                    int id = rs.getInt("id");
                    String name = rs.getString("name");
                    String description = rs.getString("description");
                    
                    
                    %>
                    
                    <tr>
                        <td><%= id%></td>
                        <td><%= name%></td>
                        <td><%= description%></td>                        
                    </tr>
                    <% 
                    }                    
                        //cerrar conexion
                    rs.close();
                    stmt.close();                    
                    conn.close();
                    
                        }catch (Exception e){
                    e.printStackTrace();
                    }
                    %>
                
                
            </tbody>           
                <div class="d1"><div class="img1"></div><div class="text1"></div></div>
                <div class="d2"><h1>Tabla </h1><div class="text1">Aqui es donde ira la trabla y donde esta la informacion pero cual tabla es source o data?</div>
            </div>
            </div>
            <div class="cuerpodos">
                
                <div class="d1"><div class="img1"></div><div class="text1"></div></div>
                <div class="d2"><h1>graficacion </h1><div class="text1">Aqui es donde ira la trabla y donde esta la informacion pero cual tabla es source o data?</div>
            </div>
            </div>
            <div class="pie">SOY EL PATAS</div>
                