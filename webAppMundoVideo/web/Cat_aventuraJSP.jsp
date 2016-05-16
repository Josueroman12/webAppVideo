<%-- 
    Document   : Cat_aventuraJSP
    Created on : 10/05/2016, 12:03:01 PM
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
            <img  src="imagenes/categoria/el-libro-de-la-selva.jpg" alt="imagen"/> 
            <p><a data-toggle="modal" href="#el-libro-de-la-selva">El libro de la selva</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/las-ardillas-fiesta-sobre-ruedas.jpg" alt="imagen"/> 
            <p><a data-toggle="modal" href="#las-ardillas-fiesta-sobre-ruedas">Las ardillas</a></p>
        </div>
        
         <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/ice-age-el-gran-cataclismo.jpg" alt="imagen"/> 
            <p><a data-toggle="modal" href="#ice-age-el-gran-cataclismo">Ice Age: el gran cataclismo </a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/cazafantasmas-3.jpg" alt="imagen" /> 
            <p><a data-toggle="modal" href="#cazafantasmas-3">Cazafantasmas 3</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/pesadillas.jpg" alt="imagen"/> 
            <p><a data-toggle="modal"  href="#pesadillas">Pesadillas</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/la_serie_divergente_leal.jpg" alt="imagen"/> 
            <p><a data-toggle="modal"  href="#la_serie_divergente_leal">La serie divergente: leal</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/el_cazador_y_la_reina_del_hielo.jpg" alt="imagen"/> 
            <p><a  data-toggle="modal"  href="#el_cazador_y_la_reina_del_hielo">El cazador y la reina del hielo</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
           <img src="imagenes/categoria/dioses_de_egipto.jpg" alt="imagen"/> 
            <p><a data-toggle="modal"   href="#dioses_de_egipto">Dioses de egipto</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/captain_america_civil_war.jpg" alt="imagen"/> 
            <p><a data-toggle="modal"  href="#captain_america_civil_war">Captain America: civil war</a></p>
        </div>
        
         <div class="col-xs-6 col-sm-3 col-md-2">
           <img src="imagenes/categoria/mi-amigo-el-gigante.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal" href="#mi-amigo-el-gigante">Mi amigo el gigante</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/moana.jpg" alt="imagen"/> 
            <p><a data-toggle="modal" href="#moana">Moana</a></p>
        </div>      
         
        </div>
        
        <!-- D-1-->
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
                        <h6>Reparto de actores:</h6> <p>[Voces]  Scarlett Johansson doblando al personaje de Kaa.,Idris Elba (Shere Khan), Bill Murray (Baloo), Ben Kingsley (Bagheera), Christopher Walken (King Louie), Giancarlo Esposito (Akela), Lupita Nyong’o (Raksha), Emjay Anthony (Gray), Ralph Ineson (Rama), Neel Sethi (Mowgli), Brandon Henschel, Sara Arrington y Allan Trautman. </p>
                        
                                                  
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
        
        <!-- D-2-->
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
        
        <!-- D-3-->
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
        
        <!-- D-4-->
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
        
        <!-- D-5-->
        <div id="pesadillas" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Pesadillas</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Terror y aventuras</p>                       
                        <h6>Director:</h6> <p> Rob Letterman</p>
                        <h6>Reparto de actores:</h6> <p>Odeya Rush, Jack Black, Amy Ryan, Halston Sage, Jillian Bell, Dylan Minnette, Ken Marino, Ryan Lee, Ella Wahlestedt, Kumail Nanjiani, Steven Krueger, Jared Sandler, Timothy Simons, Karan Soni, Gabriela Fraile.</p>
                        
                                                  
                        <h6>¿De qué va Pesadillas? Sinopsis</h6>

                        <p> Un adolescente llamado Zach Cooper e interpretado por Dylan Minnette se muda del lugar donde vivía con su familia, la gran ciudad de New York, a un pequeño pueblo que se llama Greendale.                         
                        </p>
                        <p> En este pueblo se encuentra a una bellísima chica que se llama Hannah (Odeya Rush), que vive en la casa de al lado. Además se hace amigo de Champ interpretado por Ryan Lee. Pero toda esperanza se pierde cuando Zach se entera de quién es el padre de su bella vecina, Hannah.                         
                        </p>
                        <p> Nuestro protagonista empieza a investigar a esta extraña familia y descubre que el padre, Stine tiene un gran secreto oculto. Los monstruos o criaturas de las historias que le hicieron famosos son totalmente reales y Stine los mantiene encerrados en los libros para proteger a los lectores. Cuando todos ellos son liberados de forma accidental la vida de Zach, el protagonista, da un giro inesperado.                         
                        </p>
                        <p> Zach, Hannah, Champ y Stine tienen que formar un equipo para poder atrapar a todas las criaturas de la imaginación del escritor Stine, incluyendo al monstruo Slappy, que es un muñeco ventrículocuo demoniaco, una chica con una máscara que está encantada, gnomos y muchas más criaturas para devolverlos a los libros de donde vinieron, con el objetivo de salvar a la ciudad.                         
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                        
                    </div>
                </div>
            </div>
        </div>
                
        <!-- D-6-->
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
        
        <!-- D-7-->
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
        
        <!-- D-8-->
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
        
        <!-- D-9-->
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
        
        <!-- D-10-->
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
        
        <!-- D-11-->
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
