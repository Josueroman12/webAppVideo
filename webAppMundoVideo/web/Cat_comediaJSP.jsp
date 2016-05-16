<%-- 
    Document   : Cat_comediaJSP
    Created on : 10/05/2016, 12:03:37 PM
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
            <img src="imagenes/categoria/agente_contrainteligente.jpg" alt="imagen"/> 
            <p><a data-toggle="modal" href="#agente_contrainteligente">Agentes contrainteligentes</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/bendita-calamidad.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal"  href="#bendita-calamidad">Bendita calamidad</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/eisenstein-en-guanajuato.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal"  href="#eisenstein-en-guanajuato">Eisenstein en Guanajuato</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/embarazados.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal"  href="#embarazados">Embarazados</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/infiltrados_en_miami.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal"  href="#infiltrados_en_miami">Infiltrados en miami</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/las-ardillas-fiesta-sobre-ruedas.jpg" alt="imagen" /> 
            <p ><a data-toggle="modal"  href="#las-ardillas-fiesta-sobre-ruedas">Las ardillas</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/no-es-mi-tipo.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal"  href="#no-es-mi-tipo">No es mi tipo</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/padres-por-desigual.jpg" alt="imagen"/> 
            <p ><a  data-toggle="modal"  href="#padres-por-desigual">Padres por desigual</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
           <img src="imagenes/categoria/papeles-en-el-viento.jpg" alt="imagen" /> 
            <p ><a data-toggle="modal"   href="#papeles-en-el-viento">Papeles en el viento</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/un-espia-y-medio.jpg" alt="imagen" /> 
            <p ><a data-toggle="modal"  href="#un-espia-y-medio">Un espia y medio</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/zoolander-no-2.jpg" alt="imagen" /> 
            <p ><a data-toggle="modal" href="#zoolander-no-2">Zoolander N°2</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
           <img  src="imagenes/categoria/zootropolis.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal"  href="#zootropolis">Zootropolis</a></p>
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
        <div id="bendita-calamidad" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Bendita calamidad</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Comedia</p>                       
                        <h6>Director:</h6> <p>Gaizka Urresti</p>
                        <h6>Reparto de actores:</h6> <p> Jorge Asín, Nacho Rubio, Luis Varela, Carlos Sobera, Juan Muñoz, Gorka Aguinagalde, Enrique Villén, Carmen Barrantes, Juan Anillo</p>
                        
                                                  
                        <h6>¿De qué va Bendita calamidad?</h6>

                        <p>  “Bendita calamidad”, es una comedia ubicada en Tarazona y su comarca y se centra en Anselmo y Ricardo, dos hermanos hosteleros que se encuentran con graves apuros económicos, por lo que acabarán secuestrando a Don Ramiro, el obispo, con el que van a huir por la comarca en la que tendrán que convivir con su torpeza como delincuentes y las quejas de su rehén.                        
                        </p>
                        <p>  Para “rizar el rizo” aparecerá Laura, una periodista que va a investigar el secuestro con el convencimiento de que Lacarra, arquitecto sinvergüenza y chanchullero, está detrás del mismo.                        
                        </p>
                        <p> Las dos historias quedarán unidas por la búsqueda de un tesoro.                         
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-3-->
        <div id="eisenstein-en-guanajuato" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Eisenstein en Guanajuato</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p> Comedia, romántica y biográfica</p>                       
                        <h6>Director:</h6> <p>Peter Greenaway</p>
                        <h6>Reparto de actores:</h6> <p> Elmer Bäck, Stelio Savante, Maya Zapata, Lisa Owen, Luis Alberti, Rasmus Slätis, Raino Ranta, Alan Del Castillo, Jakob Öhrman</p>
                        
                                                  
                        <h6>¿De qué va Eisenstein en Guanajuato?</h6>

                        <p>  Divertida comedia ambientada en el 1931 y centrada en el director ruso Sergei Eisenstein, que tras el éxito mundial de su película “El Acorazado Potemkin” viaja a la ciudad de Guanajuato, Mejico, para rodar una nueva película.                        
                        </p>
                        <p>   Eisenstein ha sido rechazado por Hollywood, pero se deja seducir por su nueva “aventura” en la que también participa su joven y atractivo guía Palomino Cañedo, En este ambiente, el reputado director da libertad por primera vez a sus auténticos deseos entrando en un mundo en el que todo es posible y que hará que cambie para siempre su vida y el modo en el que entiende la industria del cine.                       
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-4-->
        <div id="embarazados" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Embarazados</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Comedia</p>                       
                        <h6>Director:</h6> <p>Juana Macías</p>
                        <h6>Reparto de actores:</h6> <p>Karra Elejalde, Elisa Mouliaá, Ingrid García Jonsson, Paco León, Alexandra Jiménez, Ernesto Sevilla, Goizalde Núñez, Alberto Amarilla, Eva Llorach, Eva Ugarte, Ana Labordeta, Iñaki Font, Lola Markaida, Ainhoa Aierbe, Zywila Pietrzak, Mercedes Eizaga</p>
                        
                                                  
                        <h6>¿De qué va Embarazados?</h6>

                        <p> Fran (Paco León) y Alina (Alexandra Jiménez) es una pareja cercana a los 40 años, que llevan juntos media vida. Ella desea tener hijos, pero él no cree estar preparado todavía.                         
                        </p>
                        <p>  Cuando el ginecólogo (Karra Elejalde) les informa de que los espermatozoides de Fran son “pocos, vagos y anormales” y de que Alina padece premenopaúsia con solo 37 años, todo se complica para la pareja. Alina desea ser fecundada in vitro, pero Fran solo quiere hacer su vida y que le deje en paz. Ellos deberán decidir entre sus deseos o seguir juntos.                        
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-5-->
        <div id="infiltrados_en_miami" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Infiltrados en Miami</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p> Acción y comedia</p>                       
                        <h6>Director:</h6> <p> Tim Story</p>
                        <h6>Reparto de actores:</h6> <p>Ice Cube, Kevin Hart, Tika Sumpter, Olivia Munn, Ken Jeong, Tika Sumpter, Nadine Velazquez, Rebecca Olejniczak, T.I., Paola Katsapas, Devanny Pinn, Libby Blanton, Sherri Shepherd, Cindy Iglesias, Michelle Hayden, Benjamin Bratt, Glen Powell</p>
                        
                                                  
                        <h6>¿De qué va Infiltrados en Miami? Sinopsis</h6>

                        <p>
                            Kevin Hart y Ice Cube son nuestros dos protagonistas de Infiltrados en Miami. Ésta es una secuela de la comedia de acción Vaya Patrulla en la que pudimos ver a la pareja más cómica y más popular del año. 
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-6-->
        <div id="las-ardillas-fiesta-sobre-ruedas" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Alvin y las ardillas: Fiesta sobre ruedas</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Animación, Aventura, Comedia</p>                       
                        <h6>Director:</h6> <p>Walt Becker</p>
                        <h6>Reparto de actores:</h6> <p> [Voces] Kaley Cuoco, Bella Thorne, Anna Faris, Christina Applegate, Matthew Gray Gubler, Jason Lee, Justin Long, Kimberly Williams-Paisley, Jesse McCartney, Laura Marano, Tony Hale, Carla Shinall, Jesica Ahlberg, Dennise Renae Larson, Inder Kumar</p>
                        
                                                  
                        <h6>¿De qué va Alvin y las ardillas: Fiesta sobre ruedas?</h6>

                        <p> Alvin, Simon y Theodore vuelven con una aventura (la cuarta) y en esta ocasión con la intención de evitar que su padre Dave se proponga a su nueva novia en Nueva York que no solía podría ser su madastra sino que además podría hacer que tuvieran un hermanastro.                         
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-7-->
        <div id="no-es-mi-tipo" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">No es mi tipo</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Comedia, romántica</p>                       
                        <h6>Director:</h6> <p>Lucas Belvaux</p>
                        <h6>Reparto de actores:</h6> <p> Emilie Dequenne, Loïc Corbery, Sandra Nkake, Charlotte Talpaert, Anne Coesens, Daniela Bisconti, Martine Chevallier, Didier Sandre, Annelise Hesme, Kamel Zidouri, Amira Casar, Michel Masiero, Philippe Le Guay</p>
                        
                                                  
                        <h6>¿De qué va No es mi tipo?</h6>

                        <p> No es mi tipo narra la historia del joven parisino Clément, que es profesor de filosofía y que es destinado a una ciudad de provincias, donde va a conocer a Jennifer, una guapa peluquera a la que le gustan las novelas románticas y las salidas con sus amigas.                         
                        </p>
                        <p> La vida de Clément está regida por Kant y Proust, pero la atracción derribará casi todas las diferencias entre ellos.                         
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-8-->
        <div id="padres-por-desigual" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Padres por desigual</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Comedia</p>                       
                        <h6>Director:</h6> <p>Sean Anders, John Morris</p>
                        <h6>Reparto de actores:</h6> <p>Mark Wahlberg, Linda Cardellini, Will Ferrell, Hannibal Buress, Christopher Heskey, Patrick Kearns, Grayson Thorne Kilpatrick, John LArmijo, Scarlett Estevez, Jeff Caperton, David Michael Cefalu, Didi Costine, Owen Vaccaro, Lisa Raziano, Jesse Yarborough</p>
                        
                                                  
                        <h6>¿De qué va Padres por desigual? Sinopsis</h6>

                        <p> “Padres por desigual”, relata la descripción de Brad (Ferrell), un apacible ejecutor de una emisora de radio, que lucha por convertirse en un gran padrastro para los hijuelos de su compañera. Las complicaciones comienzan cuando el temerario y nutrido productor de los niños (Wahlberg) aparece en la película, forzando a Brad a pugnar por el aprecio de los niños.                         
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-9-->
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
        
        <!-- D-10-->
        <div id="un-espia-y-medio" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Un espía y medio</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Acción, comedia</p>                       
                        <h6>Director:</h6> <p>Rawson Marshall Thurber</p>
                        <h6>Reparto de actores:</h6> <p>Dwayne Johnson, Aaron Paul, Kevin Hart, Amy Ryan, Danielle Nicolet, Megan Park, Brett Azar, Ryan Hansen, Kimberly Howe, Allie Marshall, Kristen Annese, Sparrowhawk, Tim Griffin, Bobby Brown, Chaunty Spillane</p>
                        
                                                  
                        <h6>¿De qué va Un espía y medio? Sinopsis</h6>

                        <p>Dwayne Johnson y Kevin Hart encabezan el elenco de la revista de batalla Un EspÍa Y Medio, de New Line Cinema y Universal Pictures. Un Espía Y Medio, nota la fábula de un perjudicial agente del la Cia (Johnson) con un pasado friki y desaparecida del ojeo escolar, que vuelve a arquitectura para auxiliar a una junta de adláteres de colegio.                          
                        </p>
                        <p> Con la simulación de estar trabajando en un azar secreto, consigue la filantropía del chico popular del campus por aquel entonces (Hart), que hoy es un aburrido contable y vive añorando sus años de brillantez.                         
                        </p>
                        <p> Para cuando el escaso oficial se da enumeración del desorden en el que se está metiendo, es demasiado tarde para despreocuparse y su nuevo amigo, con bisagras cada oportunidad más impredecibles, le arrastra a un universo de tiroteos, abjuraciones y acecho que les obligará a jugarse el gollete en abundantes veces.                         
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-11-->
        <div id="zoolander-no-2" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Zoolander No. 2</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Comedia</p>                       
                        <h6>Director:</h6> <p>Ben Stiller</p>
                        <h6>Reparto de actores:</h6> <p>Ben Stiller, Owen Wilson, Will Ferrell, Penélope Cruz, Kristen Wiig, Christine Taylor, Justin Bieber, Olivia Munn, Benedict Cumberbatch, Ariana Grande, Demi Lovato, Billy Zane, Kim Kardashian, Madalina Diana Ghenea, Fred Armisen,Kanye West</p>
                        
                                                  
                        <h6>¿De qué va Zoolander No. 2?</h6>

                        <p>   Segunda parte de “Zoolander”  (2001), en la que vemos como después de diez años, Derek Zoolander vive exiliado tras perder “su fuego”.                       
                        </p>
                        <p> Convertido en un “fantasma”, Zoolander vuelve a la vida pública cuando las estrellas del rock de todo el mundo comienzan a ser asesinadas y él parece que es el único capaz de resolver el misterio.                         
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>       
        
         <!-- D-12-->
        <div id="zootropolis" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Zoótropolis</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Animación, Comedia</p>                       
                        <h6>Director:</h6> <p>Byron Howard</p>
                        <h6>Reparto de actores:</h6> <p>[Voces] Idris Elba, Ginnifer Goodwin, Alan Tudyk, Jason Bateman, J.K.Simmons, Jenny Slate, Bonnie Hunt, Octavia Spencer, Katie Lowes, Tommy Chong, John DiMaggio, Tommy ‘Tiny’ister, Shakira, Raymond S.Persi, Nate Torrence</p>
                        
                                                  
                        <h6>¿De qué va Zoótropolis?</h6>

                        <p>  Película de Disney. Zootrópolis es una ciudad donde viven animales de todas las especies y está compuesta por los hábitats más variopintos. Una peculiar ciudad donde encontramos a la policía Judy Hopps, primera coneja en un escuadrón policial de animales grandes y rudos que junto a Nick Wilde, un zorro charlatán y estafador experto, tratará de resolver un gran misterio.                        
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
