<!DOCTYPE html>
<html lang="en">
<head>
    <title>Carreras</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Enrollogic - Una plataforma para los estudiantes de ULACIT">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="images/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="styles/bootstrap-4.1.2/bootstrap.min.css">
    <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/owl.theme.default.css">
    <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/animate.css">
    <link rel="stylesheet" type="text/css" href="styles/carreras.css">
    <link rel="stylesheet" type="text/css" href="styles/carreras_responsive.css">
</head>
<body>

<div class="super_container">
	<div class="super_overlay"></div>
	
	<!-- Header -->

	<header class="header">
		
		<!-- Header Bar -->
		<div class="header_bar d-flex flex-row align-items-center justify-content-start">
			<div class="header_list">
				<ul class="d-flex flex-row align-items-center justify-content-start">
					<!-- Phone -->
					<li class="d-flex flex-row align-items-center justify-content-start">
						<div><img src="images/phone-call.svg" alt=""></div>
                        <span>(506) 2523-4000</span>
					</li>
					<!-- Address -->
					<li class="d-flex flex-row align-items-center justify-content-start">
						<div><img src="images/placeholder.svg" alt=""></div>
                        <span>Urbanización Tournón, San José</span>
					</li>
					<!-- Email -->
					<li class="d-flex flex-row align-items-center justify-content-start">
						<div><img src="images/envelope.svg" alt=""></div>
                        <span>info@ulacit.ac.cr</span>
					</li>
				</ul>
			</div>
			<div class="ml-auto d-flex flex-row align-items-center justify-content-start">
				<div class="social">
                    <ul class="d-flex flex-row align-items-center justify-content-start">
                        <li><a href="https://www.facebook.com/ulacitcostarica/"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                        <li><a href="https://twitter.com/ulacitcostarica?lang=es"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                        <li><a href="https://www.instagram.com/ulacitcr/?hl=es-la"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                        <li><a href="https://www.linkedin.com/company/ulacitcostarica/"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                        <li><a href="https://www.youtube.com/channel/UCbcGsttMQC9H9eBPY1U59BA"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
                    </ul>
				</div>
				<div class="log_reg d-flex flex-row align-items-center justify-content-start">
					<ul class="d-flex flex-row align-items-start justify-content-start">
						<li><a href="Login.aspx">Login</a></li>
						<li><a href="#">Register</a></li>
					</ul>
				</div>
			</div>
		</div>

		<!-- Header Content -->
		<div class="header_content d-flex flex-row align-items-center justify-content-start">
			<div class="logo"><a href="#">Enrollogic<span></span></a></div>
			<nav class="main_nav">
				<ul class="d-flex flex-row align-items-start justify-content-start">
					<li><a href="Inicio.aspx">Inicio</a></li>
					<li><a href="Acerca.aspx">Acerca de</a></li>
					<li class="active"><a href="Carreras.aspx">Carreras</a></li>
					<li><a href="Blog.aspx">Noticias</a></li>
					<li><a href="Contacto.aspx">Contacto</a></li>
				</ul>
			</nav>
			<div class="submit ml-auto"><a href="Carreras.aspx">Buscar carreras</a></div>
			<div class="hamburger ml-auto"><i class="fa fa-bars" aria-hidden="true"></i></div>
		</div>

	</header>

	<!-- Menu -->

	<div class="menu text-right">
		<div class="menu_close"><i class="fa fa-times" aria-hidden="true"></i></div>
		<div class="menu_log_reg">
			<div class="log_reg d-flex flex-row align-items-center justify-content-end">
				<ul class="d-flex flex-row align-items-start justify-content-start">
					<li><a href="Login.aspx">Login</a></li>
					<li><a href="#">Register</a></li>
				</ul>
			</div>
			<nav class="menu_nav">
				<ul>
					<li><a href="Inicio.aspx">Inicio</a></li>
					<li><a href="Acerca.aspx">Acerca de</a></li>
					<li><a href="Carreras.aspx">Carreras</a></li>
					<li><a href="Blog.aspx">Noticias</a></li>
					<li><a href="Contacto.aspx">Contacto</a></li>
				</ul>
			</nav>
		</div>
	</div>

	<!-- Home -->

	<div class="home">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/ulacit_def.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_content text-center">
                        <div class="home_title">Carreras</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Search -->

	<div class="search">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="search_container">
						<div class="search_form_container">
							<form action="#" class="search_form" id="search_form">
								<div class="d-flex flex-lg-row flex-column align-items-start justify-content-lg-between justify-content-start">
									<div class="search_inputs d-flex flex-lg-row flex-column align-items-start justify-content-lg-between justify-content-start">
										<input type="text" class="search_input" placeholder="Property type" required="required">
										<input type="text" class="search_input" placeholder="No rooms" required="required">
										<input type="text" class="search_input" placeholder="Location" required="required">
									</div>
									<button class="search_button">Buscar carreras</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Listings -->

	<div class="listings">
		<div class="container">
			<div class="row">
				<div class="col">
					
					<!-- Sorting -->
					<div class="sorting d-flex flex-md-row flex-column align-items-start justify-content-start">
						
						

					</div>

					<!-- Listings Container -->
                    <div class="listings_container">

                        <!-- Listing -->
                        <div class="listing_box house sale">
                            <div class="listing">
                                <div class="listing_image">
                                    <div class="listing_image_container">
                                        <img src="images/adminNegocios.jpeg" alt="">
                                    </div>
                                    <div class="tags d-flex flex-row align-items-start justify-content-start flex-wrap">
                                        <div class="tag tag_sale"><a href="login.aspx">Matricula Aquí</a></div>
                                    </div>
                                </div>
                                <div class="listing_content">
                                    <div class="prop_location listing_location d-flex flex-row align-items-start justify-content-start">
                                        <img src="images/icon_1.png" alt="">
                                        <a href="carrera.html">Administración de Negocios</a>
                                    </div>
                                    <div class="listing_info">
                                        <ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Listing -->
                        <div class="listing_box house sale">
                            <div class="listing">
                                <div class="listing_image">
                                    <div class="listing_image_container">
                                        <img src="images/arte.jpeg" alt="">
                                    </div>
                                    <div class="tags d-flex flex-row align-items-start justify-content-start flex-wrap">
                                        <div class="tag tag_sale"><a href="login.aspx">Matricula Aquí</a></div>
                                    </div>
                                </div>
                                <div class="listing_content">
                                    <div class="prop_location listing_location d-flex flex-row align-items-start justify-content-start">
                                        <img src="images/icon_1.png" alt="">
                                        <a href="carrera.html">Animación y Artes Digitales<br></a>
                                    </div>
                                    <div class="listing_info">
                                        <ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Listing -->
                        <div class="listing_box house sale">
                            <div class="listing">
                                <div class="listing_image">
                                    <div class="listing_image_container">
                                        <img src="images/pelicula.jpeg" alt="">
                                    </div>
                                    <div class="tags d-flex flex-row align-items-start justify-content-start flex-wrap">
                                        <div class="tag tag_sale"><a href="login.aspx">Matricula Aquí</a></div>
                                    </div>
                                </div>
                                <div class="listing_content">
                                    <div class="prop_location listing_location d-flex flex-row align-items-start justify-content-start">
                                        <img src="images/icon_1.png" alt="">
                                        <a href="carrera.html">Cine y Televisión</a>
                                    </div>
                                    <div class="listing_info">
                                        <ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Listing -->
                        <div class="listing_box house sale">
                            <div class="listing">
                                <div class="listing_image">
                                    <div class="listing_image_container">
                                        <img src="images/accountancy.jpg" alt="">
                                    </div>
                                    <div class="tags d-flex flex-row align-items-start justify-content-start flex-wrap">
                                        <div class="tag tag_sale"><a href="login.aspx">Matricula Aquí</a></div>
                                    </div>
                                </div>
                                <div class="listing_content">
                                    <div class="prop_location listing_location d-flex flex-row align-items-start justify-content-start">
                                        <img src="images/icon_1.png" alt="">
                                        <a href="carrera.html">Contaduría</a>
                                    </div>
                                    <div class="listing_info">
                                        <ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Listing -->
                        <div class="listing_box house sale">
                            <div class="listing">
                                <div class="listing_image">
                                    <div class="listing_image_container">
                                        <img src="images/law.jpg" alt="">
                                    </div>
                                    <div class="tags d-flex flex-row align-items-start justify-content-start flex-wrap">
                                        <div class="tag tag_sale"><a href="login.aspx">Matricula Aquí</a></div>
                                    </div>
                                </div>
                                <div class="listing_content">
                                    <div class="prop_location listing_location d-flex flex-row align-items-start justify-content-start">
                                        <img src="images/icon_1.png" alt="">
                                        <a href="carrera.html">Derecho</a>
                                    </div>
                                    <div class="listing_info">
                                        <ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Listing -->
                        <div class="listing_box house sale">
                            <div class="listing">
                                <div class="listing_image">
                                    <div class="listing_image_container">
                                        <img src="images/interior_design.jpg" alt="">
                                    </div>
                                    <div class="tags d-flex flex-row align-items-start justify-content-start flex-wrap">
                                        <div class="tag tag_sale"><a href="login.aspx">Matricula Aquí</a></div>
                                    </div>
                                </div>
                                <div class="listing_content">
                                    <div class="prop_location listing_location d-flex flex-row align-items-start justify-content-start">
                                        <img src="images/icon_1.png" alt="">
                                        <a href="carrera.html">Diseño de Interiores</a>
                                    </div>
                                    <div class="listing_info">
                                        <ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Listing -->
                        <div class="listing_box house sale">
                            <div class="listing">
                                <div class="listing_image">
                                    <div class="listing_image_container">
                                        <img src="images/listing_7.jpg" alt="">
                                    </div>
                                    <div class="tags d-flex flex-row align-items-start justify-content-start flex-wrap">
                                        <div class="tag tag_sale"><a href="login.aspx">Matricula Aquí</a></div>
                                    </div>
                                </div>
                                <div class="listing_content">
                                    <div class="prop_location listing_location d-flex flex-row align-items-start justify-content-start">
                                        <img src="images/icon_1.png" alt="">
                                        <a href="carrera.html">Economía Empresarial</a>
                                    </div>
                                    <div class="listing_info">
                                        <ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Listing -->
                        <div class="listing_box house sale">
                            <div class="listing">
                                <div class="listing_image">
                                    <div class="listing_image_container">
                                        <img src="images/listing_8.jpg" alt="">
                                    </div>
                                    <div class="tags d-flex flex-row align-items-start justify-content-start flex-wrap">
                                        <div class="tag tag_sale"><a href="login.aspx">Matricula Aquí</a></div>
                                    </div>
                                </div>
                                <div class="listing_content">
                                    <div class="prop_location listing_location d-flex flex-row align-items-start justify-content-start">
                                        <img src="images/icon_1.png" alt="">
                                        <a href="carrera.html">Educación</a>
                                    </div>
                                    <div class="listing_info">
                                        <ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Listing -->
                        <div class="listing_box house sale">
                            <div class="listing">
                                <div class="listing_image">
                                    <div class="listing_image_container">
                                        <img src="images/Languages.jpg" alt="">
                                    </div>
                                    <div class="tags d-flex flex-row align-items-start justify-content-start flex-wrap">
                                        <div class="tag tag_sale"><a href="login.aspx">Matricula Aquí</a></div>
                                    </div>
                                </div>
                                <div class="listing_content">
                                    <div class="prop_location listing_location d-flex flex-row align-items-start justify-content-start">
                                        <img src="images/icon_1.png" alt="">
                                        <a href="carrera.html">Idiomas</a>
                                    </div>
                                    <div class="listing_info">
                                        <ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Listing -->
                        <div class="listing_box house sale">
                            <div class="listing">
                                <div class="listing_image">
                                    <div class="listing_image_container">
                                        <img src="images/Sound_engineering.jpg" alt="">
                                    </div>
                                    <div class="tags d-flex flex-row align-items-start justify-content-start flex-wrap">
                                        <div class="tag tag_sale"><a href="login.aspx">Matricula Aquí</a></div>
                                    </div>
                                </div>
                                <div class="listing_content">
                                    <div class="prop_location listing_location d-flex flex-row align-items-start justify-content-start">
                                        <img src="images/icon_1.png" alt="">
                                        <a href="carrera.html">Ingeniería del Sonido</a>
                                    </div>
                                    <div class="listing_info">
                                        <ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Listing -->
                        <div class="listing_box house sale">
                            <div class="listing">
                                <div class="listing_image">
                                    <div class="listing_image_container">
                                        <img src="images/Electric_engineering.jpg" alt="">
                                    </div>
                                    <div class="tags d-flex flex-row align-items-start justify-content-start flex-wrap">
                                        <div class="tag tag_sale"><a href="login.aspx">Matricula Aquí</a></div>
                                    </div>
                                </div>
                                <div class="listing_content">
                                    <div class="prop_location listing_location d-flex flex-row align-items-start justify-content-start">
                                        <img src="images/icon_1.png" alt="">
                                        <a href="carrera.html">Ingeniería Electrónica</a>
                                    </div>
                                    <div class="listing_info">
                                        <ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Listing -->
                        <div class="listing_box house sale">
                            <div class="listing">
                                <div class="listing_image">
                                    <div class="listing_image_container">
                                        <img src="images/industrial_engineering.jpg" alt="">
                                    </div>
                                    <div class="tags d-flex flex-row align-items-start justify-content-start flex-wrap">
                                        <div class="tag tag_sale"><a href="login.aspx">Matricula Aquí</a></div>
                                    </div>
                                </div>
                                <div class="listing_content">
                                    <div class="prop_location listing_location d-flex flex-row align-items-start justify-content-start">
                                        <img src="images/icon_1.png" alt="">
                                        <a href="carrera.html">Ingeniería Industrial</a>
                                    </div>
                                    <div class="listing_info">
                                        <ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Listing -->
                        <div class="listing_box house sale">
                            <div class="listing">
                                <div class="listing_image">
                                    <div class="listing_image_container">
                                        <img src="images/systems_engineering.jpg" alt="">
                                    </div>
                                    <div class="tags d-flex flex-row align-items-start justify-content-start flex-wrap">
                                        <div class="tag tag_sale"><a href="login.aspx">Matricula Aquí</a></div>
                                    </div>
                                </div>
                                <div class="listing_content">
                                    <div class="prop_location listing_location d-flex flex-row align-items-start justify-content-start">
                                        <img src="images/icon_1.png" alt="">
                                        <a href="carrera.html">Ingeniería Informática</a>
                                    </div>
                                    <div class="listing_info">
                                        <ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Listing -->
                        <div class="listing_box house sale">
                            <div class="listing">
                                <div class="listing_image">
                                    <div class="listing_image_container">
                                        <img src="images/chemical_engineering.jpg" alt="">
                                    </div>
                                    <div class="tags d-flex flex-row align-items-start justify-content-start flex-wrap">
                                        <div class="tag tag_sale"><a href="login.aspx">Matricula Aquí</a></div>
                                    </div>
                                </div>
                                <div class="listing_content">
                                    <div class="prop_location listing_location d-flex flex-row align-items-start justify-content-start">
                                        <img src="images/icon_1.png" alt="">
                                        <a href="carrera.html">Ingeniería Química Industrial</a>
                                    </div>
                                    <div class="listing_info">
                                        <ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Listing -->
                        <div class="listing_box house sale">
                            <div class="listing">
                                <div class="listing_image">
                                    <div class="listing_image_container">
                                        <img src="images/dentist.jpg" alt="">
                                    </div>
                                    <div class="tags d-flex flex-row align-items-start justify-content-start flex-wrap">
                                        <div class="tag tag_sale"><a href="login.aspx">Matricula Aquí</a></div>
                                    </div>
                                </div>
                                <div class="listing_content">
                                    <div class="prop_location listing_location d-flex flex-row align-items-start justify-content-start">
                                        <img src="images/icon_1.png" alt="">
                                        <a href="carrera.html">Odontología</a>
                                    </div>
                                    <div class="listing_info">
                                        <ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Listing -->
                        <div class="listing_box house sale">
                            <div class="listing">
                                <div class="listing_image">
                                    <div class="listing_image_container">
                                        <img src="images/Psychology.jpg" alt="">
                                    </div>
                                    <div class="tags d-flex flex-row align-items-start justify-content-start flex-wrap">
                                        <div class="tag tag_sale"><a href="login.aspx">Matricula Aquí</a></div>
                                    </div>
                                </div>
                                <div class="listing_content">
                                    <div class="prop_location listing_location d-flex flex-row align-items-start justify-content-start">
                                        <img src="images/icon_1.png" alt="">
                                        <a href="carrera.html">Psicología</a>
                                    </div>
                                    <div class="listing_info">
                                        <ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Listing -->
                        <div class="listing_box house sale">
                            <div class="listing">
                                <div class="listing_image">
                                    <div class="listing_image_container">
                                        <img src="images/advertising.jpg" alt="">
                                    </div>
                                    <div class="tags d-flex flex-row align-items-start justify-content-start flex-wrap">
                                        <div class="tag tag_sale"><a href="login.aspx">Matricula Aquí</a></div>
                                    </div>
                                </div>
                                <div class="listing_content">
                                    <div class="prop_location listing_location d-flex flex-row align-items-start justify-content-start">
                                        <img src="images/icon_1.png" alt="">
                                        <a href="carrera.html">Publicidad</a>
                                    </div>
                                    <div class="listing_info">
                                        <ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Listing -->
                        <div class="listing_box house sale">
                            <div class="listing">
                                <div class="listing_image">
                                    <div class="listing_image_container">
                                        <img src="images/international_relationships.jpg" alt="">
                                    </div>
                                    <div class="tags d-flex flex-row align-items-start justify-content-start flex-wrap">
                                        <div class="tag tag_sale"><a href="login.aspx">Matricula Aquí</a></div>
                                    </div>
                                </div>
                                <div class="listing_content">
                                    <div class="prop_location listing_location d-flex flex-row align-items-start justify-content-start">
                                        <img src="images/icon_1.png" alt="">
                                        <a href="carrera.html">Relaciones Internacionales</a>
                                    </div>
                                    <div class="listing_info">
                                        <ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Listing -->
                        <div class="listing_box house sale">
                            <div class="listing">
                                <div class="listing_image">
                                    <div class="listing_image_container">
                                        <img src="images/labor_security.jpg" alt="">
                                    </div>
                                    <div class="tags d-flex flex-row align-items-start justify-content-start flex-wrap">
                                        <div class="tag tag_sale"><a href="login.aspx">Matricula Aquí</a></div>
                                    </div>
                                </div>
                                <div class="listing_content">
                                    <div class="prop_location listing_location d-flex flex-row align-items-start justify-content-start">
                                        <img src="images/icon_1.png" alt="">
                                        <a href="carrera.html">Seguridad Laboral y Ambiental</a>
                                    </div>
                                    <div class="listing_info">
                                        <ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Listing -->
                        <div class="listing_box house sale">
                            <div class="listing">
                                <div class="listing_image">
                                    <div class="listing_image_container">
                                        <img src="images/TIC.jpg" alt="">
                                    </div>
                                    <div class="tags d-flex flex-row align-items-start justify-content-start flex-wrap">
                                        <div class="tag tag_sale"><a href="login.aspx">Matricula Aquí</a></div>
                                    </div>
                                </div>
                                <div class="listing_content">
                                    <div class="prop_location listing_location d-flex flex-row align-items-start justify-content-start">
                                        <img src="images/icon_1.png" alt="">
                                        <a href="carrera.html">Tecnologías de Información y Comunicación TIC</a>
                                    </div>
                                    <div class="listing_info">
                                        <ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->

    <footer class="footer">
        <div class="footer_content">
            <div class="container">
                <div class="row">

                    <!-- Footer Column -->
                    <div class="col-xl-3 col-lg-6 footer_col">
                        <div class="footer_about">
                            <div class="footer_title">Enrollogic</div>
                            <div class="footer_text">
                                <p>Enrollogic es un sistema de gestión, en línea, utilizado por los alumnos de la Universidad Latinoamericana de Ciencia y Tecnología para hacer sus trámites de matrícula desde la comodidad de su casa u oficina.</p>
                            </div>
                        </div>
                    </div>

                    <!-- Footer Column -->
                    <div class="col-xl-3 col-lg-6 footer_col">
                        <div class="footer_column">
                            <div class="footer_title">Información</div>
                            <div class="footer_info">
                                <ul>
                                    <!-- Phone -->
                                    <li class="d-flex flex-row align-items-center justify-content-start">
                                        <div><img src="images/phone-call.svg" alt=""></div>
                                        <span>(506) 2523-4000</span>
                                    </li>
                                    <!-- Address -->
                                    <li class="d-flex flex-row align-items-center justify-content-start">
                                        <div><img src="images/placeholder.svg" alt=""></div>
                                        <span>Urbanización Tournón, San José</span>
                                    </li>
                                    <!-- Email -->
                                    <li class="d-flex flex-row align-items-center justify-content-start">
                                        <div><img src="images/envelope.svg" alt=""></div>
                                        <span>info@ulacit.ac.cr</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- Footer Column -->
                    <div class="col-xl-3 col-lg-6 footer_col">
                        <div class="footer_links">
                            <div class="footer_title">Acceso Rápido</div>
                            <ul>
                                <li><a href="Inicio.aspx">Inicio</a></li>
                                <li><a href="Acerca.aspx">Acerca de</a></li>
                                <li><a href="Carreras.aspx">Carreras</a></li>
                                <li><a href="Blog.aspx">Noticias</a></li>
                                <li><a href="Contacto.aspx">Contacto</a></li>
                            </ul>
                        </div>
                    </div>

                    <!-- Footer Column -->
                    <div class="col-xl-3 col-lg-6 footer_col">
                        <div class="footer_about">
                            <div class="footer_title">Redes Sociales</div>
                            <div class="social">
                                <ul class="d-flex flex-row align-items-center justify-content-start">
                                    <li><a href="https://www.facebook.com/ulacitcostarica/"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                    <li><a href="https://twitter.com/ulacitcostarica?lang=es"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                    <li><a href="https://www.instagram.com/ulacitcr/?hl=es-la"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                    <li><a href="https://www.linkedin.com/company/ulacitcostarica/"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                    <li><a href="https://www.youtube.com/channel/UCbcGsttMQC9H9eBPY1U59BA"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>

        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="styles/bootstrap-4.1.2/popper.js"></script>
        <script src="styles/bootstrap-4.1.2/bootstrap.min.js"></script>
        <script src="plugins/greensock/TweenMax.min.js"></script>
        <script src="plugins/greensock/TimelineMax.min.js"></script>
        <script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
        <script src="plugins/greensock/animation.gsap.min.js"></script>
        <script src="plugins/greensock/ScrollToPlugin.min.js"></script>
        <script src="plugins/OwlCarousel2-2.3.4/owl.carousel.js"></script>
        <script src="plugins/easing/easing.js"></script>
        <script src="plugins/progressbar/progressbar.min.js"></script>
        <script src="plugins/parallax-js-master/parallax.min.js"></script>
        <script src="plugins/Isotope/isotope.pkgd.min.js"></script>
        <script src="js/carreras.js"></script>
</body>
</html>