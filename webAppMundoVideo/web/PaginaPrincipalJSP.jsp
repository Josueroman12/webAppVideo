<%-- 
    Document   : PaginaPrincipalJSP
    Created on : 09/05/2016, 04:32:11 PM
    Author     : Alfredo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session = "true"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Pagina principal</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
        <link rel="stylesheet" type="text/css" href="css/font-awesome-4.5.0/css/font-awesome.min.css" />
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script> 
        <link rel="stylesheet" href="css/css.css"> 
        
        <link rel="shortcut icon" href="../favicon.ico">
	<link rel="stylesheet" type="text/css" href="css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="css/demo.css" />
	<link rel="stylesheet" type="text/css" href="css/component.css" />
	<script src="js/modernizr.min.js"></script>
        <script src="js/classie.js"></script>
	<script src="js/photostack.js"></script>
        <script src="js/js.js"></script>
        <link href='https://fonts.googleapis.com/css?family=Eater' rel='stylesheet' type='text/css'>

    </head>
    <body>
        <header>
            <div class="header">
                <div class="container"><!--bootstrap.css-->
                    <div class="row flex-parent"><!--row es de bootstrap.min.css-->
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="row_img"><!--estilos-->
                                <a href="imagenes/mundo.png"><img src="imagenes/mundo.png" class="img-responsive center-block" alt="Responsive image"/></a>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-4 col-md-4 flex-child"><!--estilos-->
                            <p class="titulo">MUNDO VIDEO</p>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                     <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navegacion">
                         <span class="icon-bar"></span>
                         <span class="icon-bar"></span>
                         <span class="icon-bar"></span>
                     </button>
                     <a class="navbar-brand" href="imagenes/mundo.png"><img src="imagenes/mundo.png" class="logo-menu" alt="logo"/></a>
                </div>  
                 <div class="collapse navbar-collapse" id="myNavbar">
                      <ul class="nav navbar-nav">
                         <li id="nav-texto"><a  href="PaginaPrincipalJSP.jsp" >Inicio</a></li>
                         <li><a href="QuienesSomosJSP.jsp">Quienes Somos</a></li>
                         <li><a href="ContactenosJSP.jsp">Contáctenos</a></li>
                         <li><a href="RegistrarseJSP.jsp">Registrarse</a></li>
                         <li><a href="PeliculasJSP.jsp">Peliculas</a></li>
                         <li><a href="SeriesJSP.jsp">Series</a></li>
                         <li id="buscar">
                             <input id="search" type="text" placeholder="Buscar">
                             <input id="btnBuscar" type="submit" value="Buscar">
                         </li>
                     </ul>
                     <a data-toggle="modal" data-target="#deleteMessage" class="boton btn btn-primary"><span class="glyphicon"></span>Iniciar Sesión</a>
                     <a  href="AdministradorJSP.jsp" class="boton btn btn-primary"><span class="glyphicon"></span>Administrar</a>
                 </div>
                
                 <form class="navbar-form navbar-right" method="post">
                     <div id="deleteMessage" class="modal fade in" tabindex="-1" role="dialog" aria-hidden="false">
                         <div class="modal-dialog">
                             <div class="modal-content">
                                 <div class="modal-header">
                                     <button type="button" class="close" data-dismiss="modal">x</button>
                                     <h3>Iniciar Sesión en Mundo Video</h3>
                                 </div>
                                 <div class="modal-body">
                                     <div>
                                        <label class="textos">Usuario:</label>
                                        <input class="form-control" type="text" name="usuario" value="" maxlength="20" placeholder="Digite su nombre de Usuario" required="required"/> 
                                      </div>
                                      
                                      <div>
                                         <label class="textos">Contraseña:</label>
                                        <input class="form-control" type="password" name="contraseña" value="" maxlength="20" placeholder="Digite su contra" required="required"/> 
                                      </div>
                                     
                                      <br/>
                                      <input class="btn btn-primary" type="submit" name="submit" value="Ingresar"/>
                                      <input class="btn btn-primary" type="reset" name="reset" value="Cancelar"/>    
                                      <br/>
                                      <br/>
                                 </div>
                                 <div class="modal-footer">
                                       <p>¿No Tienes Una Cuenta?<a href="RegistrarseJSP.jsp">Entrar</a></p>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </form>
            </div>
        </nav>
        
        
        
        
            <div>
                <section id="photostack-1" class="photostack photostack-start">
                    <div>
                        <figure>
                            <a class="photostack-img"><img class="img-categoria" src="imagenes/batman_vs_superman.jpg" alt="BvsS"/></a>
			    <figcaption>
                                <h2 class="photostack-title">Batman vs Superman</h2>
			    </figcaption>
                        </figure>
                        <figure>
                            <a class="photostack-img"><img src="imagenes/ciguenas.jpg" alt="ciguenas"/></a>
			    <figcaption>
                                <h2 class="photostack-title">Cigueñas</h2>
                            </figcaption>
                        </figure>
                        <figure>
                            <a  class="photostack-img"><img src="imagenes/deadpool.jpg" alt="deadpool"/></a>
                            <figcaption>
                                <h2 class="photostack-title">Deadpool</h2>
                            </figcaption>
                        </figure>
                        <figure>
                            <a class="photostack-img"><img src="imagenes/infiltrados_en_miami.jpg" alt="infiltrados"/></a>
			    <figcaption>
                                <h2 class="photostack-title">Infiltrados en Miami</h2>
                            </figcaption>
                        </figure>
                        <figure>
                            <a  class="photostack-img"><img src="imagenes/zootropolis.jpg" alt="zootropolis"/></a>
			    <figcaption>
                                <h2 class="photostack-title">Zootropolis</h2>
                            </figcaption>
                        </figure>
                        
                        
                        
                        <figure data-dummy>
                            <a class="photostack-img"><img src="imagenes/categoria/mejor-solteras.jpg" alt="Mejor Solteras"/></a>
			    <figcaption>
                                <h2 class="photostack-title">Mejor Solteras</h2>
			    </figcaption>
                        </figure>
                        <figure data-dummy>
                            <a class="photostack-img"><img src="imagenes/categoria/el-libro-de-la-selva.jpg" alt="EL Libro de la Selva"/></a>
			    <figcaption>
                                <h2 class="photostack-title">EL Libro de la Selva</h2>
                            </figcaption>
                        </figure>
                        <figure data-dummy>
                            <a  class="photostack-img"><img src="imagenes/categoria/cien-años-de-perdon.jpg" alt="Cien años de perdon"/></a>
                            <figcaption>
                                <h2 class="photostack-title">Cien años de perdón</h2>
                            </figcaption>
                        </figure>
                        <figure data-dummy>
                            <a class="photostack-img"><img src="imagenes/categoria/brooklyn.jpg" alt="Brooklyn"/></a>
			    <figcaption>
                                <h2 class="photostack-title">Brooklyn</h2>
                            </figcaption>
                        </figure>
                        <figure data-dummy>
                            <a  class="photostack-img"><img src="imagenes/categoria/Más-allá-de-las-montañas.jpg" alt="Más allá de las Montañas"/></a>
			    <figcaption>
                                <h2 class="photostack-title">Más allá de las Montañas</h2>
                            </figcaption>
                        </figure>
                    </div>
                </section>
            </div>
        
        
        
        <footer  class="col-xs-12">
            <div id="footer">
                <p>
                    Derechos Reservados © ·
                    <a title="Mundo Video"  href="PaginaPrincipalJSP.jsp" >Mundo Video</a>
                </p>
            </div>
        </footer>
    </body>
</html>
