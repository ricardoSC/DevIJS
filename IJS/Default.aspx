<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IJS.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
        <title>Innova Jurídico Salla S.C. | Inicio</title>
        <link rel="stylesheet" type="text/css" href="styles/reset.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="styles/styles.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="styles/rcarousel.css" media="screen" />
        <link href='http://fonts.googleapis.com/css?family=BenchNine:700' rel='stylesheet' type='text/css'/>
        <link href='http://fonts.googleapis.com/css?family=Oxygen:300' rel='stylesheet' type='text/css'/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

        <script type="text/javascript" src="js/jquery-1.7.1.js"></script>
		<script type="text/javascript" src="js/jquery.ui.core.js"></script>
		<script type="text/javascript" src="js/jquery.ui.widget.js"></script>
		<script type="text/javascript" src="js/jquery.ui.rcarousel.js"></script>

        <script type="text/javascript">
            jQuery(function ($) {
                function generatePages() {
                    var _total, i, _link;

                    _total = $("#carousel").rcarousel("getTotalPages");

                    for (i = 0; i < _total; i++) {
                        _link = $("<a href='#'></a>");

                        $(_link)
							.bind("click", { page: i },
								function (event) {
								    $("#carousel").rcarousel("goToPage", event.data.page);
								    event.preventDefault();
								}
							)
							.addClass("bullet off")
							.appendTo("#pages");
                    }

                    // mark first page as active
                    $("a:eq(0)", "#pages")
						.removeClass("off")
						.addClass("on")
						.css("background-image", "url(styles/images/page-on.png)");

                }

                function pageLoaded(event, data) {
                    $("a.on", "#pages")
						.removeClass("on")
						.css("background-image", "url(styles/images/page-off.png)");

                    $("a", "#pages")
						.eq(data.page)
						.addClass("on")
						.css("background-image", "url(styles/images/page-on.png)");
                }

                $("#carousel").rcarousel(
					{
					    visible: 1,
					    step: 1,
					    speed: 700,
					    auto: {
					        enabled: false
					    },
					    width: 780,
					    height: 450,
					    start: generatePages,
					    pageLoaded: pageLoaded
					}
				);

                $("#ui-carousel-next")
					.add("#ui-carousel-prev")
					.add(".bullet")
					.hover(
						function () {
						    $(this).css("opacity", 0.7);
						},
						function () {
						    $(this).css("opacity", 1.0);
						}
					);
            });
		</script>

    </head>
    <body>
        <div class="content">
            <div id="header">
                <div id="logo">
                    <a href="/" ><img src="styles/images/logo.png" alt="ijsaalla" border="0" /></a>
                </div>
                <div id="menu">
                    <ul>
                        <li><a href="Default.aspx" class="btnactive">inicio</a></li>
                        <li><a href="Servicios.aspx">servicios</a></li>
                        <li><a href="Contacto.aspx">contacto</a></li>
                        <li><a href="Acceso.aspx">acceso</a></li>
                    </ul>
                </div>
            </div>
            <div class="clear"></div>
            <div id="body">                
                <div id="container">
				<div id="carousel">
					<div id="slide01" class="slide">
						<div class="containertext">
				            <h1>¿Qui&eacute;nes somos?</h1>
                            <div class="clear" ></div>
                            <p>
                                La excelencia y la experiencia para la solución de conflictos es nuestro lema.</br></br>
                                Creatividad y decisi&oacute;n en busca de los mejores resultados Innova Jurídico Saalla, S.C.,  
                                es uno de los despachos jur&iacute;dicos  m&aacute;s grandes y prestigiosos, primordialmente orientado a 
                                brindar un servicio jurídico integral.<br /></br>
                                Para ello contamos con especialistas en todas las ramas del derecho, capaces de brindar a nuestros clientes
                                soluciones pr&aacute;cticas, econ&oacute;micamente viables y, de ser necesario, creativas.</br></br> Adem&aacute;s, 
                                nuestra infraestructura nos permite atender las necesidades de asistencia legal de nuestros clientes en 
                                cualquier parte de la Rep&uacute;blica y del mundo.
                            </p>			
						</div>
                        <div class="separator"></div>
                        <div class="containertext">
                           <div class="clear"></div>
                           <image src="styles/images/nuestroequipo.jpg" alt="nuestro equipo | ijsaalla "  style="margin:0 auto;"/>
                        </div>
					</div>
                    <div id="slide02" class="slide">
						<div class="containertext">
				            <h1>Nuestro esp&iacute;ritu</h1>
                            <div class="clear" ></div>
                            <p>
                                Nuestra ense&ntilde;a es la excelencia y habilidad en el dise&ntilde;o de soluciones para nuestros clientes.</br></br> 
                                Para ello exigimos a nuestros abogados, ser no solo intelectualmente capaces, sino creativos y tenaces en 
                                obtener el mejor resultado posible frente a nuestros clientes, dando satisfacci&oacute;n a sus problemas 
                                y anticipando con la soluci&oacute;n sus necesidades futuras, puesto que, nuestro objetivo fundamental 
                                es brindarte una soluci&oacute;n, pero, adem&aacute;s prevenci&oacute;n para cualquier cuesti&oacute;n legal.
                            </p>			
						</div>
                        <div class="separator"></div>
                        <div class="containertext">
                           <div class="clear"></div>
                           <image src="styles/images/nuestroequipo.jpg" alt="nuestro equipo | ijsaalla "  style="margin:0 auto;"/>
                        </div>
					</div>
                    <div id="slide03" class="slide">
						<div class="containertext">
				            <h1>¿C&oacute;mo trabajamos?</h1>
                            <div class="clear" ></div>                            
                            <p>
                                El despacho jur&iacute;dico est&aacute; organizado en equipos de trabajo. Los casos se asignan en funci&oacute;n
                                de la especialidad de que se trate. A su vez, la complejidad del caso determina si se lo encomienda a un 
                                solo abogado o a un grupo de trabajo interdisciplinario.</br></br>
                                La supervisi&oacute;n de todos los asuntos de un cliente est&aacute; siempre a cargo de un socio, como forma 
                                de coordinar la gesti&oacute;n de los mismos, reducir costos y mantener una fluida relaci&oacute;n personal.</br></br>
                                Adem&aacute;s, contamos con una plataforma inform&aacute;tica que permite a nuestros clientes mediante una 
                                cuenta acceder en l&iacute;nea a consultar el avance y trabajos realizados dentro de los asuntos encomendados 
                                a nuestra oficina, lo cual hace innecesario que usted tenga que estar buscando a determinado abogado para 
                                obtener informaci&oacute;n de sus asuntos.
                            </p>			
						</div>
                        <div class="separator"></div>
                        <div class="containertext">
                           <div class="clear"></div>
                           <image src="styles/images/nuestroequipo.jpg" alt="nuestro equipo | ijsaalla "  style="margin:0 auto;"/>

                           <br /><br />
                           <p>
                                El sistema permite dar seguimiento a los asuntos que nuestros clientes tengan activos, para que puedan verificar de 
                                forma personal el status de sus asuntos pendientes.<br /><br />

                                Por medio de este mismo sistema que ofrecemos, nuestros clientes tienen la oportunidad de manifestar cualquier duda, sugerencia, 
                                comentario o queja, que podr&aacute; ser analizada por un socio de nuestro Despacho, para proporcionarle
                                una repuesta rápida y efectiva.
                           </p>
                        </div>
					</div>
                    
				</div>
				<a href="#" id="ui-carousel-next"><span>next</span></a>
				<a href="#" id="ui-carousel-prev"><span>prev</span></a>
				<!--<div id="pages"></div>-->
			</div>                
            </div>
            <div class="clear" ></div>
            <div id="footer">
                <a>2013 | AVISO DE PRIVACIDAD</a>
		    </div>
        </div>
    </body>
</html>
