<%-- 
    Document   : Cat_romanticaJSP
    Created on : 10/05/2016, 12:09:31 PM
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
            <img src="imagenes/categoria/brooklyn.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal" href="#brooklyn">Brooklyn</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/carol.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal"  href="#carol">Carol</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/cuando-cae-la-nieve.jpg" alt="imagen"/> 
            <p><a data-toggle="modal"  href="#cuando-cae-la-nieve">Cuando cae la nieve</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/eisenstein-en-guanajuato.jpg" alt="imagen"/> 
            <p><a data-toggle="modal"  href="#eisenstein-en-guanajuato">Eisenstein en guanajuato</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/frente-al-mar.jpg" alt="imagen"/> 
            <p><a data-toggle="modal"  href="#frente-al-mar">Frente al mar</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/Más-allá-de-las-montañas.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal"  href="#Más-allá-de-las-montañas">Más allá de las montañas</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/mejor-solteras.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal"  href="#mejor-solteras">Mejor solteras</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/Mi-amor.jpg" alt="imagen"/> 
            <p ><a  data-toggle="modal"  href="#Mi-amor">Mi amor</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
           <img src="imagenes/categoria/no-es-mi-tipo.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal"   href="#no-es-mi-tipo">No es mi tipo</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/orgullo-y-prejuicio-y-zombis.jpg" alt="imagen"/> 
            <p><a data-toggle="modal"  href="#orgullo-y-prejuicio-y-zombis">Orgullo y prejuicio y zombis</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/tenemos-que-hablar.jpg" alt="imagen"/> 
            <p><a data-toggle="modal" href="#tenemos-que-hablar">Tenemos que hablar</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
           <img src="imagenes/categoria/up-for-love.jpg" alt="imagen"/> 
            <p><a data-toggle="modal"  href="#up-for-love">Up for love</a></p>
        </div>       
        </div>
        
        
        <!-- D-1-->
        <div id="brooklyn" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Brooklyn</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p> Drama romántico</p>                       
                        <h6>Director:</h6> <p>  John Crowley</p>
                        <h6>Reparto de actores:</h6> <p>Saoirse Ronan, Domhnall Gleeson, Emory Cohen, Julie Walters, Jim Broadbent, Michael Zegen, Mary O’Driscoll, Eileen O’Higgins, Emily Bett Rickards, Paulino Nunes, Eve Macklin, Maeve McGrath, Jenn Murray, Aine Ni Mhuiri, Nora-Jane Noone.</p>
                        
                                                  
                        <h6>¿De qué va Brooklyn ?</h6>

                        <p>
                          Un drama conmovedor centrado en Eilis Lacey (Saoirse Ronan), una joven inmigrante irlandesa que debe abrirse camino en la dura Nueva York de los años 50, y en el barrio de Brooklyn.  
                        </p>
                        <p>
                          La joven deja Irlanda atraída por el “sueño americano”, donde además conocerá el encanto del amor, aunque todavía atada a la añoranza por su pasado, deberá escoger entre su anterior vida y o la nueva.  
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-2-->
        <div id="carol" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Carol</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Drama romántico</p>                       
                        <h6>Director:</h6> <p>Todd Haynes</p>
                        <h6>Reparto de actores:</h6> <p>Cate Blanchett, Rooney Mara, Sarah Paulson, Kyle Chandler, Jake Lacy, Cory Michael Smith, Carrie Brownstein, John Magard, Kevin Crowley, Gielreath, Ryan Wesley Gilreath, Trent Rowland, Jim Dougherty, Douglas Scott Sorenson, Nik Pajic.</p>
                        
                                                  
                        <h6>¿De qué va Carol ?</h6>

                        <p> En la década de 1950 en Nueva York, una joven de 20 años, Teresa (Mara), trabaja en una tienda y sueña con vida mejor cuando conoce a Carol (Blanchett), una seductora mujer atrapada en un matrimonio boyante aunque sin amor.                         
                        </p>
                        <p> La trama se desarolla a través de las vidas de estos dos personajes y como comienzan a desmoronarse cuando Carol teme perder la custodia de su hija tras descubrirse la relación que sostenía con su mejor amiga, Abby (Paulson).                         
                        </p>
                                                  
                        
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-3-->
        <div id="cuando-cae-la-nieve" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Cuando cae la nieve</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Romántica, Thriller</p>                       
                        <h6>Director:</h6> <p>Shamim Sarif</p>
                        <h6>Reparto de actores:</h6> <p>Rebecca Ferguson, Charles Dance, Sam Reid, Antje Traue, Thure Lindhardt, Oliver Jackson-Cohen, Anthony Head, Amy Nuttall, Trudie Styler, Ben Batt, Milos Timotijevic, Branislav Tomasevic, Ana Sofrenovic, Peter J. Chaffey, Tamara Krcunovic, Mark Jax.</p>
                        
                                                  
                        <h6>¿De qué va Cuando cae la nieve?</h6>

                        <p> Un thriller romántico en el Moscú de 1950 donde conoceremos a Katya (Rebecca Ferguson) , una joven espía comunista que trabaja para el gobierno americano en plena carrera armamentística de la Guerra Fría.                       
                        </p>
                        <p> Su misión más importante consiste en conseguir información secreta sobre Alexander (Sam Reid, Charles Dance), joven promesa del gobierno de Rusia del que acabará enamorada y por el que hará algo que él descubrirá treinta años más tarde.                         
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-4-->
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
        
        <!-- D-5-->
        <div id="frente-al-mar" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Frente al Mar</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Drama romántico</p>                       
                        <h6>Director:</h6> <p>Angelina Jolie</p>
                        <h6>Reparto de actores:</h6> <p>Brad Pitt, Angelina Jolie, Mélanie Laurent, Melvil Poupaud, Niels Arestrup, Sarah Naudi, Richard Bohringer, George Camilleri, Anna Cachia, Frédéric Dessains.</p>
                        
                                                  
                        <h6>¿De qué va Frente al Mar?</h6>

                        <p>  Angelina Jolie vuelve como directora y esta vez protagonista, de un drama en el que tenemos además a su marido, Brad Pitt. La película se centra en  Roland (Brad Pitt) y Vanessa (Angelina Jolie Pitt), un matrimonio que llega a un bonito pueblo francés en la década de los 70, donde harán amistad con otra pareja  Lea (Mélanie Laurent) y François (Melvil Poupaud), así como con otros habitantes como Michael (Niels Arestrup) y Patrice (Richard Bohringer).                        
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-6-->
        <div id="Más-allá-de-las-montañas" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Más allá de las montañas</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Drama romántico</p>                       
                        <h6>Director:</h6> <p>Jia Zhang-ke</p>
                        <h6>Reparto de actores:</h6> <p>Zhao Tao, Zhang Yi, Liang Jin Dong, Sylvia Chang, Dong Zijian.</p>
                        
                                                  
                        <h6>¿De qué va Más allá de las montañas?</h6>

                        <p>  En la china de 1999, dos amigos de infancia, Zang y Liangzi, cortejan a Tao, una joven de Fenyang. Zang tiene un gasolinera y un futuro prometedor. Liangzi en cambio, trabaja en una mina de carbón.                        
                        </p>
                        <p>  Tao no sabe a quien elegir pero deberá tomar una decisión que acabará marcando el curso de su vida y la de su futuro hijo, Dólar.                        
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-7-->
        <div id="mejor-solteras" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Mejor… solteras</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Comedia, Romántica</p>                       
                        <h6>Director:</h6> <p>Christian Ditter</p>
                        <h6>Reparto de actores:</h6> <p>Dakota Johnson, Rebel Wilson, Alison Brie, Leslie Mann, Damon Wayans Jr., Nicholas Braun, Jason Mantzoukas, Tuesday Knight, Wellington Barrientos, Charlotte Kirk, Marko Caka, Carla Quevedo, Derek Brantley, Judith Lightfoot Clarke, Stefanie Bloom</p>
                        
                                                  
                        <h6>¿De qué va Mejor… solteras?</h6>

                        <p>Alice (Dakota Johnson) es una chica que acaba de quedar soltera pero que gracias a su mejor amiga, Robin (Rebel Wilson) intentará aprovechar todas las oportunidades que le ofrece la ciudad de Nueva York, repleta de corazones solitarios que buscan la pareja perfecta, algo a medias o un simple “rollo” de una noche.                          
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-8-->
        <div id="Mi-amor" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Mi Amor</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Drama romántico</p>                       
                        <h6>Director:</h6> <p>Maïwenn Le Besco</p>
                        <h6>Reparto de actores:</h6> <p>Vincent Cassel, Emmanuelle Bercot, Louis Garrel, Isild Le Besco, Chrystèle Saint Louis Augustin, Patrick Raynal, Yann Goven, Paul Hamy, Djemel Barek, Slim El Hedli, Lionnel Desruelles, Laetitia Dosch, Félix Bossuet, Giovanni Pucci, Michael Evans, Vincent Nemeth.</p>
                        
                                                  
                        <h6>¿De qué va Mi Amor?</h6>

                        <p> Drama romántico francés que narra la historia de Tony el cuál tras sufrir un accidente de esquí y debido al tratamiento y los calmamentes, rememora mentalmente su tortuosa relación con Georgio. Varias cuestiones abordarán los pensamientos del protagonista, mientras intentar darles respuesta para encontrar por fin una liberación.                         
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-9-->
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
        
        <!-- D-10-->
        <div id="orgullo-y-prejuicio-y-zombis" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Orgullo y prejuicio y zombis</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Comedia, Romántica, Terror</p>                       
                        <h6>Director:</h6> <p>Burr Steers</p>
                        <h6>Reparto de actores:</h6> <p>Lily James, Sam Riley, Bella Heathcote, Douglas Booth, Jack Huston, Charles Dance, Lena Headey, Matt Smith, Emma Greenwell, Janet Henfrey, Sally Phillips, Dolly Wells, Hermione Corfield, Raiden Integra, Millie Brady</p>
                        
                                                  
                        <h6>¿De qué va Orgullo y prejuicio y zombis?</h6>

                        <p> Comedia a partir de la novela de Seth Grahame-Smith, que a su vez es una mezcla de la novela de Jane Austen de 1813 (Orgullo y Prejuicio) aunque añadiendo a una legión de zombis sedientos.                         
                        </p>
                        <p> Cuando en la Inglaterra del Sigño XIX se propaga una misteriosa plaga de zombis, aparece en escena Elizabeth Bennet, una experta en artes marciales y el manejo de las armas.                         
                        </p>
                        <p> Nuestra protagonista deberá asociarse a Mr. Darcy, y juntos tendrán que unirse en el sangriento campo de batalla para luchar contra los zombis y descubrir su amor.                         
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-11-->
        <div id="tenemos-que-hablar" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Tenemos que hablar</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Comedia, Romántica</p>                       
                        <h6>Director:</h6> <p> David Serrano</p>
                        <h6>Reparto de actores:</h6> <p>Michelle Jenner, Hugo Silva, Verónica Forqué, Belén Cuesta, Óscar Ladoire, Ernesto Sevilla, Ilay Kurelovic</p>
                        
                                                  
                        <h6>¿De qué va Tenemos que hablar?</h6>

                        <p>   Nuria tiene todo para ser feliz en la vida: un buen trabajo, una casa de ensuelo y un novio de cuento que le ha pedido en matrimonio. Pero no todo es perfecto ya que necesita los papeles del divorcio de su primer marido: Jorge.                       
                        </p>
                        <p> Jorge, en cambio, no tiene nada para ser feliz, ya que no tiene trabajo, su casa es un desastre y encima vive la vida sin nadie especial a su lado. Nuria ha conseguido pasar página, pero por culpa de la crisis y de una mala inversión, Jorge todavía arrastra las consecuencias. Como no desea acabar de hundirle, Nuria decide inventar que su vida no es tan buena para animar a su “ex” y convencerle así para que firme el divorcio.                         
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>  
        
        <!-- D-12-->
        <div id="up-for-love" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Up for Love</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Romantica</p>                       
                        <h6>Director:</h6> <p>Laurent Tirard</p>
                        <h6>Reparto de actores:</h6> <p> Jean Dujardin, Virginie Efira, Cédric Kahn, César Domboy, Myriam Tekaïa, Eléa Clair, Jean-Michel Lahmi, François-Dominique Blin, Adonis Danieletto, Lionel Mur.</p>
                        
                                                  
                        <h6>¿De qué va Up for Love ?</h6>

                        <p>Diane es una mujer muy hermosa, que hace enloquecer a los hombres. Una abogada brillant, con sentido del humor y personalidad fuerte. Se acaba de divorciar y es libre para conocer al hombre de su vida. Una tarde Diane recibe una llamada telefónica de un cierto Alexandre quien encontró su móvil. Algo hace clic entre ellos durante esta llamada telefónica. Alexandre es educado, divertido y culto. Diane cae bajo su hechizo. Rápidamente se citan. Pero su encuentro no es el esperado.                          
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
