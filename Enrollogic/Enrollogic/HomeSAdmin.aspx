<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeSAdmin.aspx.cs" Inherits="Enrollogic.HomeSAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SAdmin</title>
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
    <link rel="stylesheet" type="text/css" href="styles/main_styles.css">
    <link rel="stylesheet" type="text/css" href="styles/responsive.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="super_container">
        <div class="super_overlay"></div>

        <!-- Header -->

        <header class="header">

            <!-- Header Bar -->
            

            <!-- Header Content -->
            <div class="header_content d-flex flex-row align-items-center justify-content-start">
                <div class="logo"><a href="#">Enrollogic<span></span></a></div>
                <nav class="main_nav">
                    <ul class="d-flex flex-row align-items-start justify-content-start">
                        <li class="active"><a href="index.html">Inicio</a></li>
                        <li><a href="CrearEstudiante.aspx">Crear Estudiante</a></li>
                        <li><a href="CrearProfesor.aspx">Crear Profesor</a></li>
                        <li><a href="CrearAdministrativo.aspx">Crear Administrativo</a></li>
                        <li align="right"><a href="Login.aspx">Cerrar Sesion</a></li>
                    </ul>
                </nav>
                
                <div class="hamburger ml-auto"><i class="fa fa-bars" aria-hidden="true"></i></div>
            </div>

        </header>

        <!-- Menu -->

        <div class="menu text-right">
            <div class="menu_close"><i class="fa fa-times" aria-hidden="true"></i></div>
            <div class="menu_log_reg">
                <div class="log_reg d-flex flex-row align-items-center justify-content-end">
                    <ul class="d-flex flex-row align-items-start justify-content-start">
                        <li><a href="login.html">Login</a></li>
                        <li><a href="#">Register</a></li>
                    </ul>
                </div>
                <nav class="menu_nav">
                    <ul>
                        <li><a href="index.html">Inicio</a></li>
                        <li><a href="acerca.html">Acerca de</a></li>
                        <li><a href="carreras.html">Carreras</a></li>
                        <li><a href="blog.html">Noticias</a></li>
                        <li><a href="contacto.html">Contacto</a></li>
                    </ul>
                </nav>
            </div>
        </div>

        <!-- Home -->

        <div class="home">

            <!-- Home Slider -->
            <div class="home_slider_container">
                <div class="home_slider_nav"><i class="fa fa-angle-left" aria-hidden="true"></i></div>
                <div class="owl-carousel owl-theme home_slider">

                    <!-- Slide -->
                    <div class="slide">
                        <div class="background_image" style="background-image:url(images/programador.jpg)"></div>
                        <div class="home_container">
                            <div class="container">
                                <div class="row">
                                    <div class="col">
                                        <div class="home_content">
                                            <div class="home_title"><h1>Ingeniería en Informática</h1></div>
                                            <div class="home_price_tag">acreditada</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Slide -->
                    <div class="slide">
                        <div class="background_image" style="background-image:url(images/publicista.jpg)"></div>
                        <div class="home_container">
                            <div class="container">
                                <div class="row">
                                    <div class="col">
                                        <div class="home_content">
                                            <div class="home_title"><h1>Publicidad</h1></div>
                                            <div class="home_price_tag">acreditada</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Slide -->
                    <div class="slide">
                        <div class="background_image" style="background-image:url(images/admin_negocios.jpg)"></div>
                        <div class="home_container">
                            <div class="container">
                                <div class="row">
                                    <div class="col">
                                        <div class="home_content">
                                            <div class="home_title"><h1>Administración de Negocios</h1></div>
                                            <div class="home_price_tag">acreditada</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <!-- Home Slider Navigation -->
                <div class="home_slider_nav"><i class="fa fa-angle-right" aria-hidden="true"></i></div>

            </div>
        </div>


        <!-- Search -->
        <!-- <div class="search">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="search_container">
                        <div class="search_title">Find your home</div>
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
    </div> -->
        <!-- Featured -->

        <div class="featured">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="section_title_container text-center">
                            <div class="section_subtitle">Acreditadas</div>
                            <div class="section_title"><h1>Licenciaturas</h1></div>
                        </div>
                    </div>
                </div>
                <div class="row featured_row">

                    <!-- Featured Item -->
                    <div class="col-lg-4">
                        <div class="listing">
                            <div class="listing_image">
                                <div class="listing_image_container">
                                    <img src="images/listing_1.jpg" alt="">
                                </div>
                                <div class="tags d-flex flex-row align-items-start justify-content-start flex-wrap">
                                    <div class="tag tag_house"><a href="carreras.html">house</a></div>
                                    <div class="tag tag_sale"><a href="carreras.html">for sale</a></div>
                                </div>
                                <div class="tag_price listing_price">$ 217 346</div>
                            </div>
                            <div class="listing_content">
                                <div class="prop_location listing_location d-flex flex-row align-items-start justify-content-start">
                                    <img src="images/icon_1.png" alt="">
                                    <a href="carrera.html">280 Doe Meadow Drive Landover, MD 20785</a>
                                </div>
                                <div class="listing_info">
                                    <ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
                                        <li class="property_area d-flex flex-row align-items-center justify-content-start">
                                            <img src="images/icon_2.png" alt="">
                                            <span>2500 sq ft</span>
                                        </li>
                                        <li class="d-flex flex-row align-items-center justify-content-start">
                                            <img src="images/icon_3.png" alt="">
                                            <span>2</span>
                                        </li>
                                        <li class="d-flex flex-row align-items-center justify-content-start">
                                            <img src="images/icon_4.png" alt="">
                                            <span>5</span>
                                        </li>
                                        <li class="d-flex flex-row align-items-center justify-content-start">
                                            <img src="images/icon_5.png" alt="">
                                            <span>2</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Featured Item -->
                    <div class="col-lg-4">
                        <div class="listing">
                            <div class="listing_image">
                                <div class="listing_image_container">
                                    <img src="images/listing_2.jpg" alt="">
                                </div>
                                <div class="tags d-flex flex-row align-items-start justify-content-start flex-wrap">
                                    <div class="tag tag_house"><a href="carreras.html">house</a></div>
                                    <div class="tag tag_rent"><a href="carreras.html">for rent</a></div>
                                </div>
                                <div class="tag_price listing_price">$ 515 957</div>
                            </div>
                            <div class="listing_content">
                                <div class="prop_location listing_location d-flex flex-row align-items-start justify-content-start">
                                    <img src="images/icon_1.png" alt="">
                                    <a href="carrera.html">4812 Haul Road Saint Paul, MN 55102</a>
                                </div>
                                <div class="listing_info">
                                    <ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
                                        <li class="property_area d-flex flex-row align-items-center justify-content-start">
                                            <img src="images/icon_2.png" alt="">
                                            <span>1234 sq ft</span>
                                        </li>
                                        <li class="d-flex flex-row align-items-center justify-content-start">
                                            <img src="images/icon_3.png" alt="">
                                            <span>2</span>
                                        </li>
                                        <li class="d-flex flex-row align-items-center justify-content-start">
                                            <img src="images/icon_4.png" alt="">
                                            <span>5</span>
                                        </li>
                                        <li class="d-flex flex-row align-items-center justify-content-start">
                                            <img src="images/icon_5.png" alt="">
                                            <span>2</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Featured Item -->
                    <div class="col-lg-4">
                        <div class="listing">
                            <div class="listing_image">
                                <div class="listing_image_container">
                                    <img src="images/listing_3.jpg" alt="">
                                </div>
                                <div class="tags d-flex flex-row align-items-start justify-content-start flex-wrap">
                                    <div class="tag tag_house"><a href="carreras.html">house</a></div>
                                    <div class="tag tag_sale"><a href="carreras.html">for sale</a></div>
                                </div>
                                <div class="tag_price listing_price">$ 375 255</div>
                            </div>
                            <div class="listing_content">
                                <div class="prop_location listing_location d-flex flex-row align-items-start justify-content-start">
                                    <img src="images/icon_1.png" alt="">
                                    <a href="carrera.html">4067 Wolf Pen Road Mountain View, CA 94041</a>
                                </div>
                                <div class="listing_info">
                                    <ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
                                        <li class="property_area d-flex flex-row align-items-center justify-content-start">
                                            <img src="images/icon_2.png" alt="">
                                            <span>2000 sq ft</span>
                                        </li>
                                        <li class="d-flex flex-row align-items-center justify-content-start">
                                            <img src="images/icon_3.png" alt="">
                                            <span>2</span>
                                        </li>
                                        <li class="d-flex flex-row align-items-center justify-content-start">
                                            <img src="images/icon_4.png" alt="">
                                            <span>5</span>
                                        </li>
                                        <li class="d-flex flex-row align-items-center justify-content-start">
                                            <img src="images/icon_5.png" alt="">
                                            <span>2</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <!-- Map Section -->

        <div class="map_section container_reset">
            <div class="container">
                <div class="row row-xl-eq-height">

                    <!-- Map -->
                    <div class="col-xl-7 order-xl-1 order-2">
                        <div class="map">
                            <div id="google_map" class="google_map">
                                <div class="map_container">
                                    <div id="map"></div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Content -->
                    <div class="col-xl-5 order-xl-2 order-1">
                        <div class="map_section_content">
                            <div class="map_overlay">
                                <svg fill="#55407d" width="100%" height="100%" viewBox="0 0 100 100" preserveAspectRatio="none">
                                    <path d="M100,0 a-200,150 0 0 0 -100,100 h100 v-100 z" />
                                </svg>
                            </div>
                            <div class="section_title_container">
                                <div class="section_subtitle">sedes</div>
                                <div class="section_title"><h1>Escoje una sede</h1></div>
                            </div>
                            <div class="locations_list d-flex flex-column align-items-start justify-content-start">
                                <label class="location_contaner" data-lat="9.941248" data-lng="-84.077394">
                                    <input type="radio" name="location_radio">
                                    <span></span>
                                    Urbanización Tournón
                                </label>
                                <label class="location_contaner" data-lat="9.939928" data-lng="-84.145532">
                                    <input type="radio" name="location_radio">
                                    <span></span>
                                    Escazú
                                </label>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <!-- Testimonials -->

        <div class="testimonials container_reset">
            <div class="container">
                <div class="row row-eq-height">

                    <!-- Testimonials Image -->
                    <div class="col-xl-6">
                        <div class="testimonials_image">
                            <div class="background_image" style="background-image:url(images/testimonials.jpg)"></div>
                            <div class="testimonials_image_overlay"></div>
                        </div>
                    </div>

                    <!-- Testimonials Content -->
                    <div class="col-xl-6">
                        <div class="testimonials_content">
                            <div class="section_title_container">
                                <div class="section_subtitle">the best deals</div>
                                <div class="section_title"><h1>Clients testimonials</h1></div>
                            </div>

                            <!-- Testimonials Slider -->
                            <div class="testimonials_slider_container">
                                <div class="owl-carousel owl-theme test_slider">

                                    <!-- Slide -->
                                    <div class="test_slide">
                                        <div class="test_quote">"They helped us find our home"</div>
                                        <div class="test_text">
                                            <p>Nulla aliquet bibendum sem, non placerat risus venenatis at. Prae sent vulputate bibendum dictum. Cras at vehicula urna. Suspendisse fringilla lobortis justo, ut tempor leo cursus in. Nulla aliquet bibendum sem, non placerat risus venenatis at. Prae sent vulputate bibendum dictum. Cras at vehicula urna. Suspendisse fringilla lobortis justo, ut tempor leo cursus in.</p>
                                        </div>
                                        <div class="test_author"><a href="#">Cristinne Smith</a>, Client</div>
                                    </div>

                                    <!-- Slide -->
                                    <div class="test_slide">
                                        <div class="test_quote">"They helped us find our home"</div>
                                        <div class="test_text">
                                            <p>Nulla aliquet bibendum sem, non placerat risus venenatis at. Prae sent vulputate bibendum dictum. Cras at vehicula urna. Suspendisse fringilla lobortis justo, ut tempor leo cursus in. Nulla aliquet bibendum sem, non placerat risus venenatis at. Prae sent vulputate bibendum dictum. Cras at vehicula urna. Suspendisse fringilla lobortis justo, ut tempor leo cursus in.</p>
                                        </div>
                                        <div class="test_author"><a href="#">Cristinne Smith</a>, Client</div>
                                    </div>

                                    <!-- Slide -->
                                    <div class="test_slide">
                                        <div class="test_quote">"They helped us find our home"</div>
                                        <div class="test_text">
                                            <p>Nulla aliquet bibendum sem, non placerat risus venenatis at. Prae sent vulputate bibendum dictum. Cras at vehicula urna. Suspendisse fringilla lobortis justo, ut tempor leo cursus in. Nulla aliquet bibendum sem, non placerat risus venenatis at. Prae sent vulputate bibendum dictum. Cras at vehicula urna. Suspendisse fringilla lobortis justo, ut tempor leo cursus in.</p>
                                        </div>
                                        <div class="test_author"><a href="#">Cristinne Smith</a>, Client</div>
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
                                    <li><a href="index.html">Inicio</a></li>
                                    <li><a href="acerca.html">Acerca de</a></li>
                                    <li><a href="carreras.html">Carreras</a></li>
                                    <li><a href="blog.html">Noticias</a></li>
                                    <li><a href="contacto.html">Contacto</a></li>
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
            <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
            <script src="js/custom.js"></script>
    </form>
</body>
</html>
