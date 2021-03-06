<%-- 
    Document   : TablaAdministradorJSP
    Created on : 13/05/2016, 11:57:40 AM
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
        
        
<!-- Formulario para Usuarios-->
        <form class="navbar-form navbar-right" method="post">
            <div id="formUsuario" class="modal fade in" tabindex="-1" role="dialog" aria-hidden="false">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">x</button>
                            <h3>Administracion de Peliculas Mundo Video</h3>
                        </div>
                        <div class="modal-body">
                            
                            <div class="form-group" id="groupNombre">
                              <label for="Unombre" class="textos">Nombre: <span class="warning">*</span></label>
                              <input class="form-control" type="text" name="nombre" value="" maxlength="20" placeholder="Digite su nombre" required="required" id="Unombre" autofocus="true"/> 
                            </div>
                            
                            <div class="form-group" id="groupApellidos">
                              <label  for="Uapellidos" class="textos">Apellidos: <span class="warning">*</span></label>
                              <input class="form-control" type="text" name="apellidos" value="" maxlength="20" placeholder="Digite sus apellidos" required="required" id="Uapellidos" autofocus="true"/> 
                            </div>
                            
                            <div class="form-group" id="groupContrasena">
                              <label for="Ucontrasena" class="textos">Contraseña: <span class="warning">*</span></label>
                              <input class="form-control" type="password" name="contraseña" value="" maxlength="20" placeholder="Digite su contraseña" required="required" id="Ucontrasena" autofocus="true"/> 
                            </div>
                            
                            <div class="form-group" id="groupCorreo">
                              <label for="Ucorreo" class="textos">Correo Electronico: <span class="warning">*</span></label>
                              <input class="form-control" type="text" name="correo" value="" maxlength="20" placeholder="Digite Correo electrónico" required="required" id="Ucorreo" autofocus="true"/> 
                            </div>
                            
                            <div class="form-group" id="groupFechaNacimiento">
                              <label for="UfechaNac" class="textos">Fecha de Nacimiento: <span class="warning">*</span></label>
                               <input class="form-control" type="text" name="fechaNacimiento" value="" maxlength="20" placeholder="Digite su fecha de nacimiento. Ejemplo: 06/11/1993" required="required" id="UfechaNac" autofocus="true"/> 
                            </div>
                            
                            <div class="form-group" id="groupDireccion">
                              <label for="Udireccion" class="textos">Dirección:<span class="warning">*</span></label>
                              <input class="form-control" type="text" name="direccion" value="" maxlength="20" placeholder="Digite su dirección" id="Udireccion" autofocus="true" /> 
                            </div>
                            
                            <div class="form-group" id="groupTelTrabajo">
                              <label for="UtelTrabajo" class="textos">Teléfono de Trabajo: </label>
                              <input class="form-control" type="number" name="telefono" value="" maxlength="20" placeholder="Digite su Teléfo" required="required" id="UtelTrabajo" autofocus="true"/> 
                            </div>
                            
                            <div class="form-group" id="groupTelCelular">
                              <label for="UtelCelular" class="textos">Celular:</label>
                              <input class="form-control" type="number" name="celular" value="" maxlength="20" placeholder="Digite su Teléfono Celular" required="required" id="UTelCelular" autofocus="true"/> 
                            </div>
                            
                            <div class="form-group" id="groupTipo">
                              <label for="Utipo" class="textos">Tipo:</label>
                              <input class="form-control" type="number" name="tipo" value="" maxlength="20" placeholder="Digite 1 para administrador o 2 pra usuario" required="required" id="UTipo" autofocus="true"/> 
                            </div>
                            
                            <input class="form-control" type="hidden" name="infoOculta" value="InfoOculta"/> <!-- campos de texto ocultos por si pasa algo jaja-->
                       
                            <br/>
                            
                            <div class="form-group">
                                        <input type="hidden" value="agregarUsuario" id="usuarioAction"/>
                                        <button type="submit" class="btn btn-primary" id="enviar">Guardar</button>
                                        <button type="reset" class="btn btn-danger" id="cancelar">Cancelar</button>
                            </div>
                            <br/><br/>
                            
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
            <h4>Administración de Usuarios</h4>
            <br/>
            <table class="table table-hover table-condensed" id="tablaUsuarios"></table>
            <br/>
            <br/>
            <center>
                <button type="button" class="btn btn-primary centered" data-toggle="modal" data-target="#formUsuario" id="btMostarForm">AgregarAdministradores</button>
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
