<%-- 
    Document   : Serie_Cat_fantasiaJSP
    Created on : 10/05/2016, 12:05:22 PM
    Author     : Josue Roman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Contactenos</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        
        
        <div class=" img-categoria">
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/.jpg" alt="image"/> 
            <p><a data-toggle="modal" href="#">..</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/.jpg" alt="image"/> 
            <p><a data-toggle="modal" href="#">..</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/.jpg" alt="image"/> 
            <p><a data-toggle="modal" href="#">..</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/.jpg" alt="image"/> 
            <p><a data-toggle="modal" href="#">..</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/.jpg" alt="image"/> 
            <p><a data-toggle="modal" href="#">..</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/.jpg" alt="image"/> 
            <p><a data-toggle="modal" href="#">..</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/.jpg" alt="image"/> 
            <p><a data-toggle="modal" href="#">..</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/.jpg" alt="image"/> 
            <p><a data-toggle="modal" href="#">..</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/.jpg" alt="image"/> 
            <p><a data-toggle="modal" href="#">..</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/.jpg" alt="image"/> 
            <p><a data-toggle="modal" href="#">..</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/.jpg" alt="image"/> 
            <p><a data-toggle="modal" href="#">..</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/.jpg" alt="image"/> 
            <p><a data-toggle="modal" href="#">..</a></p>
        </div>      
         
        </div>
        
        
        <!-- D-1-->
        <div id="" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">..</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p> </p>                       
                        <h6>Director:</h6> <p> </p>
                        <h6>Reparto de actores:</h6> <p</p>
                        
                                                  
                        <h6>Sinopsis</h6>

                        <p>
                            
                        </p>
                        <p>
                           
                        </p>
                        
                        <h6>Pricio</h6>
                        <h6>Compra:</h6> <p> 3000</p>                       
                        <h6>Alquiler:</h6> <p> 1000 </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-2-->
        <div id="" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">..</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p> </p>                       
                        <h6>Director:</h6> <p> </p>
                        <h6>Reparto de actores:</h6> <p</p>
                        
                                                  
                        <h6>Sinopsis</h6>

                        <p>
                            
                        </p>
                        <p>
                           
                        </p>
                        
                        <h6>Pricio</h6>
                        <h6>Compra:</h6> <p> 3000</p>                       
                        <h6>Alquiler:</h6> <p> 1000 </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-3-->
        <div id="" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">..</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p> </p>                       
                        <h6>Director:</h6> <p> </p>
                        <h6>Reparto de actores:</h6> <p</p>
                        
                                                  
                        <h6>Sinopsis</h6>

                        <p>
                            
                        </p>
                        <p>
                           
                        </p>
                        
                        <h6>Pricio</h6>
                        <h6>Compra:</h6> <p> 3000</p>                       
                        <h6>Alquiler:</h6> <p> 1000 </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-4-->
        <div id="" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">..</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p> </p>                       
                        <h6>Director:</h6> <p> </p>
                        <h6>Reparto de actores:</h6> <p</p>
                        
                                                  
                        <h6>Sinopsis</h6>

                        <p>
                            
                        </p>
                        <p>
                           
                        </p>
                        
                        <h6>Pricio</h6>
                        <h6>Compra:</h6> <p> 3000</p>                       
                        <h6>Alquiler:</h6> <p> 1000 </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-5-->
        <div id="" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">..</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p> </p>                       
                        <h6>Director:</h6> <p> </p>
                        <h6>Reparto de actores:</h6> <p</p>
                        
                                                  
                        <h6>Sinopsis</h6>

                        <p>
                            
                        </p>
                        <p>
                           
                        </p>
                        
                        <h6>Pricio</h6>
                        <h6>Compra:</h6> <p> 3000</p>                       
                        <h6>Alquiler:</h6> <p> 1000 </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-6-->
        <div id="" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">..</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p> </p>                       
                        <h6>Director:</h6> <p> </p>
                        <h6>Reparto de actores:</h6> <p</p>
                        
                                                  
                        <h6>Sinopsis</h6>

                        <p>
                            
                        </p>
                        <p>
                           
                        </p>
                        
                        <h6>Pricio</h6>
                        <h6>Compra:</h6> <p> 3000</p>                       
                        <h6>Alquiler:</h6> <p> 1000 </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-7-->
        <div id="" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">..</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p> </p>                       
                        <h6>Director:</h6> <p> </p>
                        <h6>Reparto de actores:</h6> <p</p>
                        
                                                  
                        <h6>Sinopsis</h6>

                        <p>
                            
                        </p>
                        <p>
                           
                        </p>
                        
                        <h6>Pricio</h6>
                        <h6>Compra:</h6> <p> 3000</p>                       
                        <h6>Alquiler:</h6> <p> 1000 </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-8-->
        <div id="" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">..</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p> </p>                       
                        <h6>Director:</h6> <p> </p>
                        <h6>Reparto de actores:</h6> <p</p>
                        
                                                  
                        <h6>Sinopsis</h6>

                        <p>
                            
                        </p>
                        <p>
                           
                        </p>
                        
                        <h6>Pricio</h6>
                        <h6>Compra:</h6> <p> 3000</p>                       
                        <h6>Alquiler:</h6> <p> 1000 </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-9-->
        <div id="" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">..</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p> </p>                       
                        <h6>Director:</h6> <p> </p>
                        <h6>Reparto de actores:</h6> <p</p>
                        
                                                  
                        <h6>Sinopsis</h6>

                        <p>
                            
                        </p>
                        <p>
                           
                        </p>
                        
                        <h6>Pricio</h6>
                        <h6>Compra:</h6> <p> 3000</p>                       
                        <h6>Alquiler:</h6> <p> 1000 </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-10-->
        <div id="" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">..</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p> </p>                       
                        <h6>Director:</h6> <p> </p>
                        <h6>Reparto de actores:</h6> <p</p>
                        
                                                  
                        <h6>Sinopsis</h6>

                        <p>
                            
                        </p>
                        <p>
                           
                        </p>
                        
                        <h6>Pricio</h6>
                        <h6>Compra:</h6> <p> 3000</p>                       
                        <h6>Alquiler:</h6> <p> 1000 </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-11-->
        <div id="" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">..</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p> </p>                       
                        <h6>Director:</h6> <p> </p>
                        <h6>Reparto de actores:</h6> <p</p>
                        
                                                  
                        <h6>Sinopsis</h6>

                        <p>
                            
                        </p>
                        <p>
                           
                        </p>
                        
                        <h6>Pricio</h6>
                        <h6>Compra:</h6> <p> 3000</p>                       
                        <h6>Alquiler:</h6> <p> 1000 </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-12-->
        <div id="" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">..</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p> </p>                       
                        <h6>Director:</h6> <p> </p>
                        <h6>Reparto de actores:</h6> <p</p>
                        
                                                  
                        <h6>Sinopsis</h6>

                        <p>
                            
                        </p>
                        <p>
                           
                        </p>
                        
                        <h6>Pricio</h6>
                        <h6>Compra:</h6> <p> 3000</p>                       
                        <h6>Alquiler:</h6> <p> 1000 </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
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
