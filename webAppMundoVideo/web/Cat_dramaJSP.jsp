<%-- 
    Document   : Cat_dramaJSP
    Created on : 10/05/2016, 12:04:20 PM
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
            <img src="imagenes/categoria/13_horas.jpg" alt="imagen" /> 
            <p><a data-toggle="modal" href="#13_horas">13 horas</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/anomalisa.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal"  href="#anomalisa">Anomalisa</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/cien-años-de-perdon.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal"  href="#cien-años-de-perdon">Cien años de perdon</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/el-olivo.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal"  href="#el-olivo">El olivo</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/expertos-en-crisis.jpg" alt="imagen" /> 
            <p ><a data-toggle="modal"  href="#expertos-en-crisis">Expertos en crisis</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/julieta.jpg" alt="imagen"/> 
            <p><a data-toggle="modal"  href="#julieta">Julieta</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/la-modista-the-dressmaker.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal"  href="#la-modista-the-dressmaker">La modista the dressmaker</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/la-punta-del-iceberg.jpg" alt="imagen"/> 
            <p><a  data-toggle="modal"  href="#la-punta-del-iceberg">La punta del iceberg</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
           <img src="imagenes/categoria/o-todos-o-ninguno.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal"   href="#o-todos-o-ninguno">O los tres o ninguno</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/papeles-en-el-viento.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal"  href="#papeles-en-el-viento">Papeles en el viento</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/transeuntes.jpg" alt="imagen"/> 
            <p><a data-toggle="modal" href="#transeuntes">transeúntes</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
           <img src="imagenes/categoria/un-monstruo-viene-a-verme.jpg" alt="imagen"/> 
            <p><a data-toggle="modal"  href="#un-monstruo-viene-a-verme">Un monstruo viene a verme</a></p>
        </div>       
        </div> 
        
        
        <!-- D-1-->
        <div id="13_horas" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">13 Horas: Los soldados secretos de Bengasi</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p> Acción y Drama</p>                       
                        <h6>Director:</h6> <p> Michael Bay</p>
                        <h6>Reparto de actores:</h6> <p>David Denman, John Krasinski, Pablo Schreiber, Max Martini, Freddie Stroma, Alexia Barlier, James Badge Dale, Dominic Fumusa </p>
                        
                                                  
                        <h6>¿De qué va 13 Horas: Los soldados secretos de Bengasi? Sinopsis</h6>

                        <p>
                           13 Horas cuenta un asalto terrorista al consulado de Estados Unidos en la ciudad de Libia de Bengasi, el 11 de septiembre de 2012. El film de acción se centra en el equipo de fuerzas especiales de rescate de los Estados Unidos.
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-2-->
        <div id="anomalisa" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Anomalisa</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p> Animación, Comedia, Drama</p>                       
                        <h6>Director:</h6> <p> Charlie Kaufman, Duke Johnson</p>
                        <h6>Reparto de actores:</h6> <p> [Voces] Jennifer Jason Leigh, Tom Noonan, David Thewlis</p>
                        
                                                  
                        <h6>¿De qué va Anomalisa?</h6>

                        <p>
                           Una peculiar comedia de animación que tiene por protagonista a un motivador profesional que, cuanto más ayuda a la gente, más monótona y anodina es su vida; todo el mundo le parece y le suena igual. Un día de repente, la voz de una chica le suena diferente y está dispuesto abandonarlo todo y a todos por alcanzar la felicidad con ella. Escrita por Charlie Kaufman (Adaptation) con la colaboración de Dan Harmon (creador de Community).
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-3-->
        <div id="cien-años-de-perdon" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Cien años de Perdón</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Drama</p>                       
                        <h6>Director:</h6> <p>Daniel Calparsoro.</p>
                        <h6>Reparto de actores:</h6> <p>Luis Tosar, Rodrigo de la Serna, Raúl Arévalo, José Coronado, Patricia Vico, Joaquín Furriel, Marian Álvarez, Nani Jiménez.</p>
                        
                                                  
                        <h6>¿De qué va Cien años de Perdón?</h6>

                        <p>   Drama centrado en el robo de un banco, por unos ladrones profesionales, disfrazados y armados, que asaltan la sede central de un banco en Valencia. Un robo limpio y fácil en apariencia, pero que pronto se complica cuando la directora de la sucursal desvela un secreto oculto en una de las cajas de seguridad. El plan cambia y nada saldrá como está planeado.                       
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-4-->
        <div id="el-olivo" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">El Olivo</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Drama</p>                       
                        <h6>Director:</h6> <p>Icíar Bollaín.</p>
                        <h6>Reparto de actores:</h6> <p>Javier Gutiérrez, Anna Castillo.</p>
                        
                                                  
                        <h6>¿De qué va  El Olivo?</h6>

                        <p> Alma es una joven de 20 años que trabaja en una granja de pollos en el interior de Castellón. Su abuelo, la persona que más quiere en el mundo dejó de hablar hace años por sorpresa, de modo que ella está segura que lo único que le devolverá el habla es recuperar el olivo que vendió la familia contra su voluntad hace 12 años.                         
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-5-->
        <div id="expertos-en-crisis" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Expertos en crisis</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Comedia, Drama</p>                       
                        <h6>Director:</h6> <p>David Gordon Green</p>
                        <h6>Reparto de actores:</h6> <p>Sandra Bullock, Billy Bob Thornton, Anthony Mackie, Joaquim de Almeida, Ann Dowd, Scoot McNairy, Zoe Kazan, Sam Medina, Starlette Miariaunii, Carmela Zumbado, John L. Armijo, Nancy Castro, Matilda Del Toro, Nina Leon, Michelle Torres</p>
                        
                                                  
                        <h6>¿De qué va Expertos en crisis?</h6>

                        <p>  Adaptación en tono de comedia , y con Sandra Bullock del documental homónimo de 2005, centrado en las estrategias políticas de Estados Unidos en Sudamérica.                        
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-6-->
        <div id="julieta" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Julieta</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p> Drama</p>                       
                        <h6>Director:</h6> <p>Pedro Almodóvar.</p>
                        <h6>Reparto de actores:</h6> <p>Adriana Ugarte, Emma Suárez, Inma Cuesta, Darío Grandinetti, Rossy de Palma, Susi Sánchez, Daniel Grao, Michelle Jenner, Nathalie Poza, Pilar Castro, Mariam Bachir.</p>
                        
                                                  
                        <h6>¿De qué va Julieta ?</h6>

                        <p> Lo nuevo de Almodóvar que narra la vida de Julieta (Adriana Ugarte) la cual en los años ochenta arrasó, pero en la actualidad, la vida de Julieta (Emma Suárez) es una catástrofe sin solución, una lucha por sobrevivir al borde de la locura. Solo un milagro la salvará…algo que podría ocurrir.                         
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-7-->
        <div id="la-modista-the-dressmaker" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">La modista (The dressmaker)</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Comedia, Drama</p>                       
                        <h6>Director:</h6> <p>Jocelyn Moorhouse</p>
                        <h6>Reparto de actores:</h6> <p>Kate Winslet, Liam Hemsworth, Judy Davis, Hugo Weaving, Sarah Snook, Sacha Horler, Caroline Goodall, James Mackay, Kerry Fox, Alison Whyte, Barry Otto, Julia Blake, Rebecca Gibney, Shane Jacobson, Genevieve Lemon, Shane Black, Shane Bourne, Hayley Magnus</p>
                        
                                                  
                        <h6>¿De qué va La modista (The dressmaker)?</h6>

                        <p> Kate Winslet en los años 50 e interpretado el papel de Tilly Dunnage, que tras triunfar como modista en París, vuelve a la pequeña localidad de Dungatar en la que nació, para corregir los errores del pasado.                         
                        </p>
                        <p> La vuelta le permitirá reconciliarse con Molly (Judy Davis), su anciana y excéntrica madre, además de enamorarseTeddy (Liam Hemsworth), además de conseguir transformar a las mujeres del pueblo, mientras urde una suave venganza.                         
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-8-->
        <div id="la-punta-del-iceberg" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">La Punta del Iceberg</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Drama/Thriller</p>                       
                        <h6>Director:</h6> <p>David Cánovas.</p>
                        <h6>Reparto de actores:</h6> <p>Maribel Verdú, Fernando Cayo, Bárbara Goenaga, Álex García, Carmelo Gómez, Ginés García Millán, Jesús Castejón.</p>
                        
                                                  
                        <h6>¿De qué va La Punta del Iceberg?</h6>

                        <p>  El conocido cortometrajista David Cánovas nos presenta un largometraje basado en la obra de teatro homónima de Antonio Tabares, que narra la historia de Sofía Cuevas, una directiva de una multinacional. Desde su empresa la envían a que investigue internamente el suicidio de un hombre en una de sus sedes.                        
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-9-->
        <div id="o-todos-o-ninguno" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">O los tres o ninguno</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Comedia, Drama</p>                       
                        <h6>Director:</h6> <p>Kheiron</p>
                        <h6>Reparto de actores:</h6> <p>Kheiron, Leïla Bekhti, Gérard Darmon, Zabou Breitman, Alexandre Astier, Kyan Khojandi, Arsène Mosca, Jonathan Cohen, Eriq Ebouaney, Carole Franck, Camélia Jordana, Michel Vuillermoz, Khereddine Ennasri, Sébastien Pouderoux, Azize Kabouche</p>
                        
                                                  
                        <h6>¿De qué va O los tres o ninguno?</h6>

                        <p> Historia de los padres de Kheiron, Hibat y Fereshteh, y su viaje desde una pequeña población al sur de Irán hasta llegar a París.                         
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-10-->
        <div id="papeles-en-el-viento" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Papeles en el viento</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Comedia, Drama</p>                       
                        <h6>Director:</h6> <p>Juan Taratuto</p>
                        <h6>Reparto de actores:</h6> <p>Diego Peretti, Pablo Rago, Pablo Echarri, Diego Torres, Paola Barrientos, Cecilia Dopazo, Daniel Rabinovich, Cacho BuenAventura, Alfredo Castellani, Andrea Carballo</p>
                        
                                                  
                        <h6>¿De qué va Papeles en el viento?</h6>

                        <p>  Una emotiva comedia sobre tres amigos de la infancia que pierden a El Mono, uno de los amigos, por lo que entre todos deciden hacerse cargo de su hija, y de este modo acabarán organizando una estafa impensable en el mundo de la compraventa de jugadores de fútbol.                        
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-11-->
        <div id="transeuntes" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Transeúntes</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Drama</p>                       
                        <h6>Director:</h6> <p>Luis Aller</p>
                        <h6>Reparto de actores:</h6> <p>María Galiana, Santiago Ramos, Roger Coma, Duna Jové, Jordi Sánchez, Pep Munné, María José García, Joaquín Hinojosa, Sergi López, Adrià Collado.</p>
                        
                                                  
                        <h6>¿De qué va Transeúntes?</h6>

                        <p>Crónica de la vida en Barcelona y como ha cambiado el paisaje de la ciudad a través de las historias de varios personajes y a partir de un metraje, en 35 mm, que ha tardado 20 años en rodarse.                          
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>  
        
        <!-- D-12-->
        <div id="un-monstruo-viene-a-verme" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Un monstruo viene a verme</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Fantasía, Drama</p>                       
                        <h6>Director:</h6> <p>Juan Antonio Bayona.</p>
                        <h6>Reparto de actores:</h6> <p> Felicity Jones, Liam Neeson, Sigourney Weaver, Toby Kebell, Geraldine Chaplin, Lewis MacDougall.</p>
                        
                                                  
                        <h6>¿De qué va Un monstruo viene a verme?</h6>

                        <p> Lo nuevo de el director de Lo Imposible, se centra en  Conor, un niño con problemas para adaptarse que pasa mucho tiempo solo, y cuya madre además está gravemente enferma. Para evadirse de la realidad, el pequeño viaja con su imaginación a  un mundo de fantasía habitado por monstruos, hadas, duendes y demás criaturas maravillosas.                         
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
