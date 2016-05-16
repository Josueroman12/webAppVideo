<%-- 
    Document   : Cat_terrorJSP
    Created on : 10/05/2016, 11:57:26 AM
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
            <img src="imagenes/categoria/el-bosque-de-los-suicidios.jpg" alt="imagen"/> 
            <p><a data-toggle="modal" href="#el-bosque-de-los-suicidios">El bosque de los suicidios</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/exorcismo-en-el-vaticano.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal"  href="#exorcismo-en-el-vaticano">Exorcismo en el vaticano</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/maggie.jpg" alt="imagen"/> 
            <p><a data-toggle="modal"  href="#maggie">Maggie</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img src="imagenes/categoria/orgullo-y-prejuicio-y-zombis.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal"  href="#orgullo-y-prejuicio-y-zombis">Orgullo y prejuicio y zombis</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/pesadillas.jpg" alt="imagen"/> 
            <p><a data-toggle="modal"  href="#pesadillas">Pesadillas</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/rings.jpg" alt="imagen"/> 
            <p ><a data-toggle="modal"  href="#rings">Rings</a></p>
        </div>
        
        <div class="col-xs-6 col-sm-3 col-md-2">
            <img  src="imagenes/categoria/underworld.jpg" alt="imagen"/> 
            <p><a data-toggle="modal"  href="#underworld">Underworld</a></p>
        </div>
        </div>
        
        
        
        <!-- D-1-->
        <div id="el-bosque-de-los-suicidios" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">El bosque de los suicidios</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Terror</p>                       
                        <h6>Director:</h6> <p> Jason Zada </p>
                        <h6>Reparto de actores:</h6> <p> Natalie Dormer, Taylor Kinney, Yukiyoshi Ozawa, Eoin Macken, Rina Takasaki, Kikuo Ichikawa, Noriko Sakura, Yûho Yamashita, Stephanie Vogt, James Owen, Nadja Mazalica, Terry Diab, Akiko Iwase, Ibuki Kaneda, Carni Djeric.</p>
                        
                                                  
                        <h6>¿De qué va ? Sinopsis</h6>

                        <p>
                           Éste es un thriller sobrenatural que aquellos a los que les guste esta temática les encantará la película. El escenario se desarrolla en el legendario bosque de Aokigahara en el Monte Fuji en Japón.
                        </p>
                        
                        <p>
                           Una joven americana es nuestra protagonista, Sara (interpretada por Natalie Dormer). Va en busca de su hermana desaparecida misteriosamente. A pesar de todas las advertencias que le dan por continuar en el sendero, nuestra prota se encuentra interna en el bosque con el objetivo de encontrar a su hermana gemela y la verdad sobre lo que le ha ocurrido a ésta. Sin embargo, al hacer este viaje se enfrentará a todas las almas atormentadas de aquellos que han ido muriendo en este lugar, asediándola durante todo el camino por el bosque.
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
        <div id="exorcismo-en-el-vaticano" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Exorcismo en el Vaticano</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Terror</p>                       
                        <h6>Director:</h6> <p>Mark Neveldine</p>
                        <h6>Reparto de actores:</h6> <p>Michael Peña, Olivia Taylor Dudley, Dougray Scott, Kathleen Robertson, Djimon Hounsou, John Patrick Amedori, Michael Paré, Daniel Bernhardt, Tehmina Sunny, Bruno Gunn, Peter Andersson, Noemi Gonzalez.</p>
                        
                                                  
                        <h6>¿De qué va Exorcismo en el Vaticano? Sinopsis</h6>

                        <p> Angela Holmes (protagonista interpretada por Olivia Taylor) lleva una vida de los más normal hasta que, con su sola presencia, comienza a provocar sucesos terribles que ocurren a su alrededor, causando muchísimo dolor y muerte a sus familiares y amigos que están junto a ella.                         
                        </p>
                        <p>  Los expertos en temas de posesión, creen que está poseida, pero cuando piden ayuda al Vatinaco para realizar un exorcismo se can cuenta que la posesión que sufre es mucho más peligrosa ya que se trata de una fuerza satánica muy poderosa, más de lo que se habían imaginado los expertos.                        
                        </p>
                        <p> Con ayuda del Padre Lorenzo (interpretado por Michael Peña) tendrán que luchar contra el mal para poder salvar a nuestra protagonista de las garras del mal y al mundo tal y como lo conocemos.                         
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
        <div id="maggie" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Maggie</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Terror</p>                       
                        <h6>Director:</h6> <p>Henry Hobson</p>
                        <h6>Reparto de actores:</h6> <p>Arnold Schwarzenegger, Abigail Breslin, Joely Richardson, J.D. Evermore, Laura Cayouette, Amy Brassette, Dana Gourrier, John L. Armijo, Aiden Flowers, Wayne Pére, Brett Baker, Haylie Creppel, Tim Bell, Mattie Liptak.</p>
                        
                                                  
                        <h6>¿De qué va Maggie? Sinopsis</h6>

                        <p> En la película de terror de Maggie aparecen zombies, pero no unos cualquiera. Si no que estos también tienen sentimientos.                         
                        </p>
                        <p> Uno de sus protagonistas, Arnold Schwarzenegger, interpreta uno de los papeles más sutiles y emotivos que ha interpretado hasta el momento con el personaje llamado Wade. Un padre que está dispuesto a todo lo que sea con el objetivo de proteger a su hija, que ha sido infectada por un virus y que está obligada a permanecer en cuarentena.                         
                        </p>
                        <p> En la película de Maggie se retrata un momento totalmente inusual en la categoría de películas de zombies, en el que podemos ver el cambio paulatino de una persona a un muerto viviente.                         
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
        <div id="rings" class="modal modal-wide fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Rings</h4>
                    </div>
                    <div class="modal-body">
                        
                        <h6>Género:</h6> <p>Terror</p>                       
                        <h6>Director:</h6> <p>F. Javier Gutiérrez</p>
                        <h6>Reparto de actores:</h6> <p> Matilda Anna Ingrid Lutz, Aimee Teegarden, Johnny Galecki, Alex Roe, Brandon Larracuente, Andrea Powell, NM Garcia, Chris Greene, Adam Fristoe, Jill Jane Clements, Ricky Muse, Wing Liu.</p>
                        
                                                  
                        <h6>¿De qué va Rings? Sinopsis</h6>

                        <p>Rings es una precuela de The Ring. Ambientada en los sucesos anteriores a esta película y contará todo el origen de Samara y de cómo empezó a sembrar el terror entre los protagonistas de la película.                          
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
