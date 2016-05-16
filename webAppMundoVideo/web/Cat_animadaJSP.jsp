<%-- 
    Document   : Cat_animadaJSP
    Created on : 10/05/2016, 12:02:13 PM
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
            <img src="imagenes/categoria/anomalisa.jpg" alt="image"/> 
            <p><a data-toggle="modal" href="#anomalisa">Anomalisa</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/Buscando-a-dory.jpg" alt="image"/> 
            <p ><a data-toggle="modal" href="#Buscando-a-dory">Buscando a dory</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/ciguenas.jpg" alt="image"/> 
            <p ><a data-toggle="modal" href="#ciguenas">Cigüeñas</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/el-libro-de-la-selva.jpg" alt="image"/> 
            <p ><a data-toggle="modal" href="#el-libro-de-la-selva">El libro de la selva</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/ice-age-el-gran-cataclismo.jpg" alt="image"/> 
            <p ><a data-toggle="modal" href="#ice-age-el-gran-cataclismo">Ice Age: el gran cataclismo </a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/Kung-fu-panda-3.jpg" alt="image"/> 
            <p ><a data-toggle="modal" href="#Kung-fu-panda-3">Kung fu panda 3</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/las-ardillas-fiesta-sobre-ruedas.jpg" alt="image"/> 
            <p ><a data-toggle="modal" href="#las-ardillas-fiesta-sobre-ruedas">Las ardillas: fiesta sobre ruedas</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/mascotas.jpg" alt="image"/> 
            <p ><a data-toggle="modal" href="#mascotas">Mascotas</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
           <img  src="imagenes/categoria/mi-amigo-el-gigante.jpg" alt="image"/> 
            <p><a data-toggle="modal" href="#mi-amigo-el-gigante">Mi amigo el gigante</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/moana.jpg" alt="image"/> 
            <p ><a data-toggle="modal" href="#moana">Moana</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/zootropolis.jpg" alt="image"/> 
            <p ><a data-toggle="modal" href="#zootropolis">Zootropolis</a></p>
        </div>
         </div>
         
        <!-- D-1-->
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
        
        <!-- D-2-->
        <div id="Buscando-a-dory" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Buscando a Dory</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>animación, comedia</p>                       
                        <h6>Director:</h6> <p>Andrew Stanton, Angus MacLane</p>
                        <h6>Reparto de actores:</h6> <p>[Voces] Ellen De Generes</p>
                        
                                                  
                        <h6>¿De qué va Buscando a Dory?</h6>

                        <p>Lo nuevo de Pixar reúne a la simpática pescado azul, amigable pero olvidadiza, con sus seres queridos, y todos conocerán sobre el verdadero significado de la familia a lo largo del camino. La nueva aventura en la gran pantalla se sumerge en los cines en 2016, reencontrando a los espectadores de vuelta al mundo submarino que ya conocimos en Buscando a Nemo.                          
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-3-->
        <div id="ciguenas" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Cigüeñas</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>animación, comedia</p>                       
                        <h6>Director:</h6> <p> Doug Sweetland, Nicholas Stoller</p>
                        <h6>Reparto de actores:</h6> <p> [Voces] Andy Samberg, Kelsey Grammer, Keegan-Michael Key, Jordan Peele</p>
                        
                                                  
                        <h6>¿De qué va Cigüeñas?</h6>

                        <p>  Película de animación que nos desvela qué es lo que pasa sucede realmente en la organización del reparto de bebes por parte de las cigüeñas.                        
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-4-->
        <div id="el-libro-de-la-selva" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">El libro de la selva</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>animacion, aventura</p>                       
                        <h6>Director:</h6> <p>Jon Favreau</p>
                        <h6>Reparto de actores:</h6> <p>[Voces]  Scarlett Johansson doblando al personaje de Kaa.
,Idris Elba (Shere Khan), Bill Murray (Baloo), Ben Kingsley (Bagheera), Christopher Walken (King Louie), Giancarlo Esposito (Akela), Lupita Nyong’o (Raksha), Emjay Anthony (Gray), Ralph Ineson (Rama), Neel Sethi (Mowgli), Brandon Henschel, Sara Arrington y Allan Trautman. </p>
                        
                                                  
                        <h6>¿De que va El libro de la selva?</h6>

                        <p> Película de Disney. Tras ser abandonado en la selva, una familia de lobos cría al pequeño cachorro humano Mowgli (Neel Sethi) el cual vive como uno más de la manada hasta la llegada de Shere Khan, un temible tigre, resentido por las heridas que le ha ocasionado el hombre, que tiene la promesa de acabar con cualquier humano que conozca.                         
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-5-->
        <div id="ice-age-el-gran-cataclismo" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Ice Age: El gran cataclismo</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Animación, Aventura, Comedia</p>                       
                        <h6>Director:</h6> <p>Mike Thurmeier, Galen T. Chu</p>
                        <h6>Reparto de actores:</h6> <p>[Voces] Melissa Rauch, Simon Pegg, Stephanie Beatriz, Nick Offerman, Jennifer Lopez, Adam DeVine, Keke Palmer, John Leguizamo, Max Greenfield, Denis Leary, Ray Romano, Carlos Ponce, Jesse Tyler Ferguson, Wanda Sykes, Michael Strahan</p>
                        
                                                  
                        <h6>¿De qué va Ice Age: El gran cataclismo?</h6>

                        <p>  Scrat la ardilla de Ice Age da inicio a esta nueva aventura en la saga de Dreamworks en la que además, Sid, Manny, Diego y el resto de la manada tendrán que abandonar su hogar y embarcarse en una divertida aventura.                        
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-6-->
        <div id="Kung-fu-panda-3" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Kung Fu Panda 3</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Animación, Aventura, Comedia</p>                       
                        <h6>Director:</h6> <p> Jennifer Yuh, Alessandro Carloni</p>
                        <h6>Reparto de actores:</h6> <p> [Voces] Jack Black, Angelina Jolie, Jackie Chan, Seth Rogen, Lucy Liu, David Cross, James Hong, Bryan Cranston, Rebel Wilson, J.K. Simmons, Dustin Hoffman, Randall Duk Kim, Steele Gagnon</p>
                        
                                                  
                        <h6>¿De qué va Kung Fu Panda 3?</h6>

                        <p>Tercera película de la famosa saga de Kung Fu Panda. En esta ocasión, el simpático Po tendrá que hacer frente a dos desafíos épicos: uno, de origen sobrenatural; el otro, muy cerca de su hogar y de su corazón ya que por sorpresa, aparecerá un panda que dice ser su padre biológico.                          
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-7-->
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
        
        <!-- D-8-->
        <div id="mascotas" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Mascotas</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Animación, Comedia</p>                       
                        <h6>Director:</h6> <p>Chris Renaud, Yarrow Cheney</p>
                        <h6>Reparto de actores:</h6> <p>[Voces] Kevin Hart, Bobby Moynihan, Louis C.K., Albert Brooks, Ellie Kemper, Jenny Slate, Hannibal Buress, Lake Bell, Eric Stonestreet</p>
                        
                                                  
                        <h6>¿De qué va Mascotas?</h6>

                        <p>  ¿Qué hacen nuestras mascotas cuando nos vamos de casa? La nueva comedia de los responsables de Gru Mi Villano Favorito, nos descubre cómo es la vida real de los animales que viven en casa.                        
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-9-->
        <div id="mi-amigo-el-gigante" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Mi amigo el gigante</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Animación, aventura</p>                       
                        <h6>Director:</h6> <p>Steven Spielberg</p>
                        <h6>Reparto de actores:</h6> <p>Mark Rylance, Ruby Barnhill, Penelope Wilton, Rebecca Hall, Bill Hader, Jemaine Clement, Adam Godley, Michael David Adamthwaiste, Daniel Bacon, Chris Gibbs,Jonathan Holmes, Paul Moniz de Sa, Olafur Olaffson</p>
                        
                                                  
                        <h6>¿De qué va Mi amigo el gigante ?</h6>

                        <p> Película de Disney que es la versión cinematográfica del cuento de Roald Dahl. Sofía es una niña huérfana que una noche descubre la presencia de un hombre muy alto que se asoma a las ventanas de las casas con una trompeta a la que sopla para que un polvo caiga sobre las camas. Se trata de un gigante que coge a Sofía de la mano y se la lleva consigo al País de los Gigantes.                   
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-10-->
        <div id="moana" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Moana</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>animación, aventura</p>                       
                        <h6>Director:</h6> <p>John Musker, Ron Clements</p>
                        <h6>Reparto de actores:</h6> <p>Sin confirmar</p>
                        
                                                  
                        <h6>¿De qué va Moana?</h6>

                        <p>  Película de Disney que nos descubre a en Moana Waialiki, joven que vive en el Pacífico y desea explorar el mundo navegando por el océano. Moana es la única hija de un importante capitán que pertenece a una familia con varias generaciones de marineros.                        
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- D-11-->
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
