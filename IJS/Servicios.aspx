<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Servicios.aspx.cs" Inherits="IJS.Servicios" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
        <title>Innova Jurídico Salla S.C. | Servicios</title>
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
                        <li><a href="Default.aspx">inicio</a></li>
                        <li><a href="Servicios.aspx" class="btnactive">servicios</a></li>
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
						<div class="containertext" style="width:700px !important;" >
				            <h1>Innova Jurídico Saalla S.C.</h1>
                            <div class="clear" ></div>
                            <p>
                               <b>Innova Jur&iacute;dico Saalla, S.C.</b>, es una sociedad integrada por profesionales del derecho, 
                               con amplia y reconocida trayectoria en el &aacute;mbito legal; basados en los principios de &eacute;tica 
                               profesional. Establecidos en el estado de San Luis Potos&iacute;, Capital.
                            </p>
                            </br>
                            <p>
                                Nuestra misi&oacute;n es brindar a nuestros clientes, la seguridad y estabilidad jur&iacute;dica necesaria 
                                para una vida tranquila.
                            </p>
                            </br>
                            <p>
                                Tenemos un compromiso con la sociedad y buscamos que exista una estabilidad en tu vida, 
                                por tanto estamos para solucionar tus conflictos legales.
                            </p>
                            </br>
                            <p>
                                Trabajamos con un sistema de acci&oacute;n renovado, basado en la mediaci&oacute;n, conciliaci&oacute;n y 
                                prevenci&oacute;n, siempre tratando de obtener el resultado más ben&eacute;fico para tus intereses.
                            </p>
                            </br>
                            <p>
                                Lo m&aacute;s importante para nosotros, es ayudarte a resolver tus controversias legales en plazos cortos, 
                                con resultados positivos que garanticen la seguridad de tu patrimonio.      
                            </p>
						</div>                        
					</div>
                    <div id="slide02" class="slide">
						<div class="containertext">
				            <h1>Servicios</h1>
                            <div class="clear" ></div>                            
                            <p>
                                Contamos con un grupo de abogados con amplia capacidad y  especializados en las distintas ramas del derecho penal, 
                                familiar, civil, mercantil, administrativo, fiscal y laboral que están a tu disposici&oacute;n para darte la 
                                opci&oacute;n más viable para la soluci&oacute;n y prevenci&oacute;n de cualquier clase de conflicto legal, 
                                pues nosotros en primer lugar observamos los posibles escenarios reales conforme a tus necesidades, y en 
                                base a ello, te ofrecemos la mejor opci&oacute;n que en forma eficiente, solvente tus expectativas.  
                            </p>
						</div>  
                        <div class="separator"></div>
                        <div class="containertext">
                            <h1>Penal</h1>
                            <div class="clear"></div>
                            <p>
                                Brindamos asistencia jur&iacute;dica y legal a todas las personas que se encuentren en alg&uacute;n problema 
                                de car&aacute;cter penal, es decir, que estén en peligro de perder su libertad porque se les atribuye 
                                la comisi&oacute;n de alg&uacute;n delito, o bien, porque tiene el temor fundado de que se est&eacute; 
                                realizando alguna investigaci&oacute;n en su contra.
                            </p>
                            </br>
                            <p>
                                Adem&aacute;s, se formulan denuncias y querellas por hechos delictuosos, cometidos en perjuicio de personas 
                                físicas o morales
                                
                            </p>
                            </br>
                            <ul>
                                <li>Asesor&iacute;a y asistencia jur&iacute;dica en Averiguaciones previas y Carpetas de Investigaci&oacute;n</li>
                                <li>
                                    Asistencia legal para Citatorios y comparecencias ante el Ministerio P&uacute;blico por cualquier tipo de delito:
                                    <ul>
                                    </br>
                                        <li>    -En procesos.</li>
                                        <li>    -En Apelaciones.</li>
                                        <li>    -En Amparos.</li>
                                        <li>    -Defensas penales en Juicios Orales.</li>
                                        <li>    -Tramitaci&oacute;n fianzas.</li>
                                    </ul>
                                </li>
                            </ul>
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
            <div class="clear"></div>
            <div id="footer">
                <a>2013 | AVISO DE PRIVACIDAD</a>
            </div>
        </div>
    </body>
</html>
