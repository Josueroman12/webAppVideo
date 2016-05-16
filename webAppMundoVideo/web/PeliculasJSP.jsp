<%-- 
    Document   : PeliculasJSP
    Created on : 09/05/2016, 04:08:28 PM
    Author     : Alfredo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Contactenos</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
        <link rel="stylesheet" type="text/css" href="css/font-awesome-4.5.0/css/font-awesome.min.css" />
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>  
        <link rel="stylesheet" href="css/css.css"> 
        
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
        
        <div id="tituloCategoria">
            <h4>CATEGORIAS</h4>
        </div>
        
        <div class=" img-categoria">
        <div class="col-xs-6 col-sm-4 col-md-3">
            <img src="imagenes/categoria/batman_vs_superman.jpg" alt="logo"/>
            <p><a href="Cat_accionJSP.jsp">Acción</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-4 col-md-3">
            <img  src="imagenes/categoria/zootropolis.jpg" alt="logo"/>           
            <p><a href="Cat_animadaJSP.jsp">Animadas</a></p>
        </div>
        
              <div class="col-xs-6 col-sm-4 col-md-3">
            <img  src="imagenes/categoria/ice-age-el-gran-cataclismo.jpg" alt="logo" /> 
            <p><a href="Cat_aventuraJSP.jsp">Aventura</a></p>
        </div>
                    
        <div class="col-xs-6 col-sm-4 col-md-3">
            <img  src="imagenes/categoria/x-men-apocalipsis.jpg" alt="logo" /> 
            <p ><a href="Cat_ficcionJSP.jsp">Ciencia ficción</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-4 col-md-3">
            <img  src="imagenes/categoria/padres-por-desigual.jpg" alt="logo" />           
            <p ><a href="Cat_comediaJSP.jsp">Cómicas</a></p>
        </div>
        
        
        <div class="col-xs-6 col-sm-4 col-md-3">
            <img src="imagenes/categoria/la-punta-del-iceberg.jpg" alt="logo" />           
            <p ><a href="Cat_dramaJSP.jsp">Drama</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-4 col-md-3">
            <img  src="imagenes/categoria/alicia-a-traves-del-espejo.jpg" alt="logo" />           
            <p ><a href="Cat_fantasiaJSP.jsp">Fantasia</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-4 col-md-3">
            <img  src="imagenes/categoria/carol.jpg" alt="logo" /> 
            <p ><a href="Cat_romanticaJSP.jsp">Románticas</a></p>
        </div>
        
             
        <div class="col-xs-6 col-sm-4 col-md-3">
            <img  src="imagenes/categoria/exorcismo-en-el-vaticano.jpg" alt="logo" />           
            <p ><a href="Cat_terrorJSP.jsp">Terror</a></p>
        </div>
        </div>
        
        <footer  class="col-xs-12">
            <div id="footer">
                <p>
                    <br/>
                    Derechos Reservados © ·
                    <a title="Mundo Video"  href="PaginaPrincipalJSP.jsp" >Mundo Video</a>
                </p>
            </div>
        </footer>  
    </body>
</html>
