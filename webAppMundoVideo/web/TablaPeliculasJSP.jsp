<%-- 
    Document   : TablaPeliculasJSP
    Created on : 13/05/2016, 11:58:08 AM
    Author     : Josue Roman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Administrar Usuarios</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
        <link rel="stylesheet" type="text/css" href="css/font-awesome-4.5.0/css/font-awesome.min.css" />
        <script src="js/jquery.min.js"></script>
        <script src="js/CategoriaJS.js"></script>
        <script src="js/AdministradorJS.js"></script>
        <script src="js/utils.js"></script>
        <script src="js/PeliculaJS.js"></script>
        <script src="js/AdministradorJS.js"type="text/javascript"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>  
        <link rel="stylesheet" href="css/css.css"> 
        
        <link href='https://fonts.googleapis.com/css?family=Eater' rel='stylesheet' type='text/css'>

    </head>
    <body>
        
         <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" id="myModalTitle">Modal Header</h4>
                    </div>
                    <div class="modal-body" id="myModalMessage">
                        <p>This is a small modal.</p>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="modal fade" id="eliminarModal" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" id="myModalTitle">Eliminar Persona</h4>
                    </div>
                    <div class="modal-body" id="myModalMessage">
                        <p>Esta seguro en eliminar al Usuario?</p>
                        
                        <div class="form-group">
                                <input type="hidden" value="borrar" id="personasAction"/>
                                <button type="submit" class="btn btn-primary" id="eliminarPer" data-dismiss="modal" >Eliminar</button>
                                <button type="reset" class="btn btn-danger" id="cancelar" data-dismiss="modal">Cancelar</button>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        
        
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
                 </div>
            </div>
        </nav>
        
 <!-- Formulario Para Peliculas--> 
        <form  id="formPelicula" class="navbar-form navbar-right" method="post">
            <div class="modal fade in" tabindex="-1" role="dialog" aria-hidden="false">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">x</button>
                            <h3>Administracion de Peliculas Mundo Video</h3>
                        </div>
                        <div class="modal-body">
                            <div class="form-group" id="groupNombrePelicula">
                              <label for="Pnombre" class="textos">Nombre Pelicula: <span class="warning">*</span></label>
                              <input class="form-control" type="text" name="nombre" value="" maxlength="20" placeholder="Digite su nombre" required="required" id="Pnombre" autofocus="true"/> 
                            </div>
                            
                            <div class="form-group" id="groupDirector">
                              <label for="Pdirector" class="textos">Director: <span class="warning">*</span></label>
                              <input class="form-control" type="text" name="director" value="" maxlength="20" placeholder="Digite el Director" required="required" id="Pdirector" autofocus="true"/> 
                            </div>
                            
                            <div class="form-group" id="groupActorPrincipal">
                              <label for="PactorPrincipal" class="textos">Actor Principal: <span class="warning">*</span></label>
                              <input class="form-control" type="text" name="actorPrincipal" value="" maxlength="20" placeholder="Digite el Actor Principal" required="required" id="PactorPrincipal" autofocus="true"/> 
                            </div>
                            
                            
                            <div class="form-group" id="groupCategoria">
                              <label for="Pcategoria" class="textos">Categoria: <span class="warning">*</span></label>
                              <input class="form-control" type="number" name="categoria" value="" maxlength="20" placeholder="Digite el numero de Categoria" required="required" id="Pcategoria" autofocus="true"/> 
                            </div>
                            
                            <div class="form-group" id="groupCantExistentes">
                              <label for="PcantExistentes" class="textos">Cantidad Existentes: <span class="warning">*</span></label>
                              <input class="form-control" type="number" name="cantExistente" value="" maxlength="20" placeholder="Digite la cantidad" required="required" id="PcantExistentes" autofocus="true"/> 
                            </div>
                            
                            <div class="form-group" id="groupCostoVenta">
                              <label for="PcostoVenta" class="textos">Costo Venta: <span class="warning">*</span></label>
                              <input class="form-control" type="number" name="costoVenta" value="" maxlength="20" placeholder="Digite el costo de la pelicula" required="required" id="PcostoVenta" autofocus="true"/> 
                            </div>
                            
                            <div class="form-group" id="groupCostoAlquiler">
                              <label for="PcostoAlquiler" class="textos">Costo Alquiler: <span class="warning">*</span></label>
                              <input class="form-control" type="number" name="costoAlquiler" value="" maxlength="20" placeholder="Digite el costo del alquiler" required="required" id="PcostoAlquiler" autofocus="true"/> 
                            </div>
                            
                            <input class="form-control" type="hidden" name="infoOculta" value="InfoOculta"/> <!-- campos de texto ocultos por si pasa algo jaja-->
                       
                            <br/>
                            
                            <div class="form-group">
                                        <input type="hidden" value="agregarPelicula" id="peliculaAction"/>
                                        <button type="submit" class="btn btn-primary" id="enviarPelicula">GuardarPelicula</button>
                                        <button type="reset" class="btn btn-danger" id="cancelarPelicula">CancelarPelicula</button>
                            </div>
                            <br/>
                            
                            
                            
                            <div class="form-group height25" >
                                        <div class="alert alert-success hiddenDiv" id="mesajeResult">
                                            <strong id="mesajeResultNeg">Info!</strong> 
                                            <span id="mesajeResultText">This alert box could indicate a neutral informative change or action.</span>
                                        </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <div id="contenidoAdm">
            <h4>Administración de Peliculas</h4>
            <br/>
            <table class="table table-hover table-condensed" id="tablaPelicula"></table>
            <br/>
            <br/>
            <center>
                <button type="button" class="btn btn-primary centered" data-toggle="modal" data-target="#formPelicula" id="btMostarForm">AgregarPeliculas</button>
                <a  href="AdministradorJSP.jsp"  class="boton btn btn-primary">Regresar a Administración</a>
            </center>
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
