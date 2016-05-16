<%-- 
    Document   : Cat_fantasiaJSP
    Created on : 10/05/2016, 12:05:03 PM
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
            <img  src="imagenes/categoria/alicia-a-traves-del-espejo.jpg" alt="imagen"/> 
            <p><a data-toggle="modal" href="#alicia-a-traves-del-espejo">Alicia a traves del espejo</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/batman_vs_superman.jpg" alt="imagen"/> 
            <p><a data-toggle="modal"  href="#batman_vs_superman">Batman vs superman</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/deadpool.jpg" alt="imagen"/> 
            <p><a data-toggle="modal"  href="#deadpool">Deadpool</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/dioses_de_egipto.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal"  href="#dioses_de_egipto">Dioses de egipto</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/underworld.jpg" alt="imagen"/> 
            <p ><a  data-toggle="modal"  href="#underworld">Underworld</a></p>
        </div>
        
        
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/escuadron-suicida.jpg" alt="imagen"/> 
            <p><a data-toggle="modal"  href="#escuadron-suicida">Escuadron suicida</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/la_serie_divergente_leal.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal"  href="#la_serie_divergente_leal">La serie divergente: leal</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/el_cazador_y_la_reina_del_hielo.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal"  href="#el_cazador_y_la_reina_del_hielo">El cazador y la reina del hielo</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
           <img  src="imagenes/categoria/un-monstruo-viene-a-verme.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal"   href="#un-monstruo-viene-a-verme">Un monstruo viene a verme</a></p>
        </div> 
        </div>
         
        
        
        <!-- D-1-->
        <div id="alicia-a-traves-del-espejo" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Alicia a través del espejo</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p> Fantasía</p>                       
                        <h6>Director:</h6> <p>   James Bobin</p>
                        <h6>Reparto de actores:</h6> <p>Mia Wasikowska, Johnny Depp, Helena Bonham Carter y Anne Hathaway.</p>
                        
                                                  
                        <h6>¿De que va Alicia a través del espejo?</h6>

                        <p>
                            Película de Disney Secuela de Alicia en el país de las maravillas (2010). Cuando la joven Alicia despierta en el País de las Maravillas, tendrá que viajar a través de este mundo mágico y misterioso donde nada es lo que parece para recuperar un cetro mágico. Es el único modo para detener al malvado Tiempo (Sacha Baron Cohen) antes de que se cumpla el plazo marcado por el reloj y el País de las Maravillas se convierta en un mundo estéril y sin vida. Además deberá salvar al Sombrerero Loco (Johnny Depp) así como frenar los malvados planes de la Reina Roja (Helena Bonham Carter), con la que se volverá a ver las caras en su intento por ocupar el trono.
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-2-->
        <div id="batman_vs_superman" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Batman vs Superman</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p> Acción y fantasía</p>                       
                        <h6>Director:</h6> <p> Zack Snyder</p>
                        <h6>Reparto de actores:</h6> <p>Henry Cavill, Ben Affleck, Amy Adams, Laurence Fishburne, Diane Lane, Gal Gadot, Jesse Eisenberg, Jeremy Irons, Jena Malone, Holly Hunter, Callan Mulvey, Tao Okamoto, Ray Fisher, Scoot </p>
                        
                                                  
                        <h6>¿De qué va Batman v Superman: El amanecer de la justicia? Sinopsis</h6>

                        <p>
                            Batman vs Superman es la película estrella de este año, la más esperada en 2016. Ante el temor de las acciones de un incontrolable super héroe, el vigilante de Gotham, Batman, se enfrenta a uno de los más poderosos superhéroes de Metropolis, Superman. Con un debate nacional reflexionando si se necesita este tipo de héroes.
                        </p>
                        <p>
                            Mientras Batman y Superman están en guerra, aparece una gran amenaza que pone a la humanidad en peligro, nunca jamás conocidos. Os dejo el trailer de esta impresionante película.
                            
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-3-->
        <div id="deadpool" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Deadpool</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p> Acción y fantasía</p>                       
                        <h6>Director:</h6> <p> Tim Miller</p>
                        <h6>Reparto de actores:</h6> <p>Ryan Reynolds, Morena Baccarin, Gina Carano, T.J. Miller, Ed Skrein, Rachel Sheen, Brianna Hildebrand, Paul Lazenby, Sean Quan, Ben Wilkinson, Naika Toussaint, Olesia Shewchuk, Kyle Cassie, Style Dayne, Fabiola Colmenero</p>
                        
                                                  
                        <h6>¿De qué va Deadpool? Sinopsis</h6>

                        <p>
                            Continuamos con la tercera película de acción de la lista para este 2016. Deadpool es un antihéroe que tiene un gran carisma y que pertenece a los cómics de Marvel. Esta película nos cuenta la historia de Wade Wilson, un antiguo operativo de las fuerzas especiales convertido en mercenario.
                        </p>
                        <p>
                           Nuestro protagonista, después de haber sido utilizado como un sujeto de experimento, tiene la capacidad de curación acelerada. Armado con nuevas habilidades y un retorcido sentido del humor, Wade o Deadpool tiene como objetivo la captura del hombre que casi le destruye la vida.
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-4-->
        <div id="dioses_de_egipto" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Dioses de Egipto</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p> Acción, aventura y fantasía</p>                       
                        <h6>Director:</h6> <p> Alex Proyas</p>
                        <h6>Reparto de actores:</h6> <p>Gerard Butler, Nikolaj Coster-Waldau, Geoffrey Rush, Brenton Thwaites, Courtney Eaton, Chadwick Boseman, Elodie Yung, Bruce Spence, Bryan Brown, Emma Booth, Rachael Blake, Robyn Nevin, Goran D. Kleut, Abbey Lee, Paula Arundell</p>
                        
                                                  
                        <h6>¿De qué va Dioses de Egipto? Sinopsis</h6>

                        <p> La película se ambienta en el antiguo Egipto. La supervivencia del mundo está pendiendo de un hilo, al mismo tiempo que un héroe llamado Bek, comienza un viaje emocionante para salvar al mundo y rescatar a su amor.                      
                        </p>
                        <p> Para tener éxito en el viaje deberá contar con la ayuda del dios Horus, formando una gran dupla para luchar contra el dios de la oscuridad, que ha usurpado el trono de Egipto, sumiendo al pueblo en un profundo caos y conflictos.                      
                        </p>
                        <p> Son muchas las batallas que se celebran en la película hasta llegar a la más épica confrontación final.                      
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-5-->
                <div id="underworld" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Underworld: Next Generation – Underworld: 5</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p> Terror, Fantasía y Acción</p>                       
                        <h6>Director:</h6> <p>Anna Foerster</p>
                        <h6>Reparto de actores:</h6> <p>Kate Beckinsale, Theo James, Bradley James, Clementine Nicholson, Tobias Menzies, Lara Pulver.</p>
                        
                                                  
                        <h6>¿De qué va Underworld: Next Generation – Underworld: 5? Sinopsis</h6>

                        <p> La quinta entrega de la saga UnderWorld. La eterna lucha entre los vampiros y los lobos, con los ciudadanos “normales” en medio de esta guerra.                         
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-6-->
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
        
        <!-- D-7-->
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
        
        <!-- D-8-->
        <div id="el_cazador_y_la_reina_del_hielo" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">El cazador y la reina del hielo</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p> Acción, Aventura y Fantasía</p>                       
                        <h6>Director:</h6> <p> Frank Darabont</p>
                        <h6>Reparto de actores:</h6> <p>Charlize Theron, Jessica Chastain, Chris Hemsworth, Emily Blunt, Sam Claflin, Nick Frost, Sheridan Smith, Alexandra Roach, Rob Brydon, Sam Hazeldine, Jadey Duffield, Mark Haldor, Madeleine Worrall, Robert Portal, Lynne Wilmot</p>
                        
                                                  
                        <h6>¿De qué va El cazador y la reina del hielo? Sinopsis</h6>

                        <p>La película está ambientada en el mundo fantástico de Blancanieves. La leyenda del cazador extiende sus horizontes para enseñarnos el destino del cazador Eric y la Reina Ravenna.
                        </p>
                        <p>Ésta es una aventura de acción épica que promete ser una de las que dé más juego este 2016.
                        </p>
                        <p>Antes de que Ravenna fuese apuñalada y vencida por Blancanieves, la malvada reina fue testigo de como su hermana sufría una traición y tenía que huir del reino.
                        </p>
                        <p>Haciendo valer todas sus habilidades con las que puede congelar a cualquier enemigo que se encuentre, la joven lleva décadas formando una legión de cazadores letales en un palacio invernal, y que cuenta con Eric (protagonizado por Chris Hemsworth) y Sara. Cuando descubre que sus grandes cazadores han incumplido la única regla (enamorarse) tiene que desterrarlos.
                        </p>
                        <p>Además, al enterarse de que su hermana ha muerto, reúne al resto de los cazadores y les ordena traer el espejo mágico para poder resucitar a Ravenna y sembrar el terror en el reino encantado.
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-9-->
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
