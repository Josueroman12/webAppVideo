<%-- 
    Document   : Cat_ficcionJSP
    Created on : 10/05/2016, 12:07:34 PM
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
            <img  src="imagenes/categoria/captain_america_civil_war.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal" href="#captain_america_civil_war">Captain America: civil war</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/cazafantasmas-3.jpg" alt="imagen"/> 
            <p><a data-toggle="modal" href="#cazafantasmas-3">Cazafantasmas 3</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src=imagenes/categoria/escuadron-suicida.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal" href="#escuadron-suicida">Escuadron Suicida</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/independence-day.jpg" alt="imagen"/> 
            <p><a data-toggle="modal" href="#independence-day">Independence Day</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/la_serie_divergente_leal.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal" href="#la_serie_divergente_leal">La serie divergente: leal </a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/x-men-apocalipsis.jpg" alt="imagen"/> 
            <p><a data-toggle="modal" href="#x-men-apocalipsis">X-men: Apocalipsis</a></p>
        </div>
        </div>
        
        <!-- D-1-->
        <div id="captain_america_civil_war" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Captain America: Civil War</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p> Acción, ciencia ficción y aventura</p>                       
                        <h6>Director:</h6> <p>  Anthony Russo, Joe Russo</p>
                        <h6>Reparto de actores:</h6> <p>Chris Evans, Robert Downey Jr., Scarlett Johansson, Daniel Brühl, Elizabeth Olsen, Paul Rudd, Jeremy Renner, Martin Freeman, Chadwick Boseman, Sebastian Stan, Anthony Mackie, Emily VanCamp, Paul Bettany, Hayley Atwell, Frank Grillo, Chandra Shaker Sangam, Tom Holland, Leslie Bibb, William Hurt</p>
                        
                                                  
                        <h6>¿De qué va Captain America: Civil War? Sinopsis</h6>

                        <p>
                            Ésta es la tercera entrega de la famosa saga de Capitán América de Marvel. Nuestro primer vengador vuelve para entretenernos en 2016.
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-2-->
        <div id="cazafantasmas-3" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Cazafantasmas</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Aventura, Ciencia Ficción, Comedia</p>                       
                        <h6>Director:</h6> <p>Melissa McCarthy, Kristen Wiig, </p>
                        <h6>Reparto de actores:</h6> <p>Leslie Jones, Kate McKinnon, Cecily Strong, Chris Hemsworth, Andy Garcia, Michael Kenneth Williams</p>
                        
                                                  
                        <h6>¿De qué va Cazafantasmas?</h6>

                        <p> Tercera entrega de la famosa saga cazafantasmas, con nuevo reparto y ahora, con protagonistas femeninas.                         
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-3-->
        <div id="escuadron-suicida" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Escuadrón suicida</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Acción, ciencia ficción, fantasía</p>                       
                        <h6>Director:</h6> <p>David Ayer</p>
                        <h6>Reparto de actores:</h6> <p>Jared Leto, Will Smith, Margot Robbie, Ben Affleck, Jai Courtney, Cara Delevingne, Scott Eastwood, Joel Kinnaman, Viola Davis, Adewale Akinnuoye-Agbaje, Jim Parrack, Adam Beach, Ike Barinholtz, Jay Hernandez, Corina Calderon, Alex Meraz, Karen Fukuhara</p>
                        
                                                  
                        <h6>¿De qué va Escuadrón suicida? Sinopsis</h6>

                        <p>    Adaptación de los cómics de Dc sobre el Escuarón Suicida, una gestión en formación por infames a los que el Gobierno les ofrece la ocasión de redimirse en una cometida suicida.                      
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-4-->
        <div id="independence-day" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Independence Day: Contraataque</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Acción, ciencia ficción</p>                       
                        <h6>Director:</h6> <p>Roland Emmerich</p>
                        <h6>Reparto de actores:</h6> <p>Liam Hemsworth, Bill Pullman, Jeff Goldblum, Joey King, Maika Monroe, William Fichtner, Vivica A Fox, Charlotte Gainsbourg, Sela Ward, Angelababy, Brent Spiner, Grace Huang, Judd Hirsch, Ryan Cartwright, Garrett Wareing</p>
                        
                                                  
                        <h6>¿De qué va Independence Day: Contraataque? Sinopsis</h6>

                        <p>Siempre supimos que volverían. Después de que Independence Day redefiniera el carácter, el subsiguiente capítulo épico asiste a una debacle común de unas espesoras inimaginables.                          
                        </p>
                        <p> Usando tecnología alienígena restablecida, las patrias de la Tierra han colaborado en un software de protección colosal para la asistencia del mundo. Pero nada puede prepararles para la ceremonia avanzada y sin antecedentes de los alienígenas. Únicamente la verdad y energía de unos granos varoniles y esposas podrá exceptuar a la merced de la terminación.                         
                        </p>
                        <p> Pero nada puede prepararles para laceremonia avanzada y sin antecedentes de los alienígenas. Únicamente la verdad y energía de unos granos varoniles yesposas podrá exceptuar a la merced de la terminación.                         
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-5-->
        <div id="la_serie_divergente_leal" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">La serie Divergente: Leal</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p> Acción, Aventura, Ciencia Ficción y Fantasía</p>                       
                        <h6>Director:</h6> <p> Robert Schwentke</p>
                        <h6>Reparto de actores:</h6> <p> Shailene Woodley, Theo James, Naomi Watts, Ansel Elgort, Miles Teller, Jeff Daniels, Jonny Weston, Bill Skarsgård, Kristin McKenzie, Juanita J.P. Taylor, Marisol Correa, Jessica Yoshimura, Steven A.D. Taylor, Lindsey McCollough, Alicia Kelley </p>
                        
                                                  
                        <h6>¿De qué va La serie Divergente: Leal? Sinopsis</h6>

                        <p>
                            Después de todas las revelaciones trascendentes de Insurgente, Tris tiene que huir con Cuatro e ir mucho más allá del muro que rodea la ciudad de Chicago. Es la primera vez que van a abandonar la ciudad y la familia que conocen. Una vez que se encuentra fuera, todo aquello en lo que creían, pierde todo sentido después de descubrir nuevas verdades. Tris y Cuatro van a tener que decidir rápidamente en quién pueden confiar mientras se da comienzo a una guerra despiadada que amenaza a toda la humanidad. Para poder sobrevivir, Tris se ve obligada a tomar decisiones que harán desafiar su coraje, el sacrificio, la lealtad y el amor.
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-6-->
        <div id="x-men-apocalipsis" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">X-Men: Apocalipsis</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Acción y Ciencia Ficción</p>                       
                        <h6>Director:</h6> <p>Bryan Singer</p>
                        <h6>Reparto de actores:</h6> <p>Michael Fassbender, James McAvoy, Jennifer Lawrence, Oscar Isaac, Nicholas Hoult, Evan Peters, Rose Byrne, Kodi Smit-McPhee, Sophie Turner, Chaning Tatum, Alexandra Shipp, Tye Sheridan, Olivia Munn, Lucas Till, Lana Condor</p>
                        
                                                  
                        <h6>¿De qué va X-Men: Apocalipsis? Sinopsis</h6>

                        <p>   Continuamos con otro éxito mundial, X-Men. Esta vez vuelve con Apocalipsis. Desde los orígines de la humanidad él fue adorado como un dios. Apocalipsis era el primero de todos y el más poderoso de todos los mutantes de la película X-Men. Fue capaz de hacerse con los poderes de muchos mutantes convirtiéndose en el mutante más poderoso e inmortal.                       
                        </p>
                        <p>    Después de debilitarse tras miles de años, la desilusión que tiene hacia el mundo le hace reclutar a un grupo de mutantes, los más poderosos del momento, incluyendo a Magneto, para purificar la humanidad y crear un nuevo orden mundial.                      
                        </p>
                        <p>  El destino de la tierra está en peligro pero con ayuda de Raven (interpretada por Jennifer Lawrence) y la ayuda del Profesor X van a liderar a un grupo de jóvenes mutantes, los X-Men, para detener a estos enemigos y así poder salvar a la humanidad de la destrucción total.                        
                        </p>
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
