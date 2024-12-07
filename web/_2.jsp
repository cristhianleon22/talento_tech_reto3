<%@page import="java.sql.*,java.util.*" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
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

    }
    .cabeza{
        width: 100%;

        margin:auto;
        background: url();
    }
    .cuerpo{
        width: 80%;
        height: 550%;
        margin:auto;
        background: linear-gradient(to right,#ffe4e4, #2f8d33);
        object-fit: contain;
    }

    .cuerpograficas{
        width: 1200px;
        height: 600px;
        margin:auto;
        background: linear-gradient(to right,#071ff5, #1900f);
        align-items: center; 
        justify-content: center;
        margin-top: 500px;

    }




    .pie{
        width: 100%;
        height: 10%;
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
    height: 300px;
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
 

    </style>
    </head>
   <body style="margin: 0; padding: 0; background-color: #a6e5b9;">
     
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
          
<div class="cuerpograficas">
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
</table>
</div>


            <div class="pie"><div class="d2b"><h1>TotalEnergy</h1></div>          
            <script>
                    function updatemenu() {
          if (document.getElementById('responsive-menu').checked == true) {
            document.getElementById('menu').style.borderBottomRightRadius = '0';
            document.getElementById('menu').style.borderBottomLeftRadius = '0';
          }else{
            document.getElementById('menu').style.borderRadius = '0px';
          }
        }
        </script>
        
    </body>
</html>
