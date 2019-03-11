<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InformacionPersonal.aspx.cs" Inherits="Enrollogic.InformacionPersonal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Informacion Personal</title>
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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
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
                            <li><a></a>
                                <asp:Label ID="UsuarioVigente" runat="server" Text="Label"></asp:Label></li>
                            <li><a href="Login.aspx">CerrarSesion</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- Header Content -->
            <div class="header_content d-flex flex-row align-items-center justify-content-start">
                <div class="logo"><a href="#">Enrollogic<span></span></a></div>
                <nav class="main_nav">
                    <ul class="d-flex flex-row align-items-start justify-content-start">
                        <li><a href="HomeEstudiante.aspx">Inicio</a></li>
                        <li class="active"><a href="InformacionPersonal.aspx">Informacion Personal</a></li>
                        <li><a href="carreras.html">Carreras</a></li>
                        <li><a href="blog.html">Noticias</a></li>
                        <li><a href="contacto.html">Contacto</a></li>
                    </ul>
                </nav>
                <div class="submit ml-auto"><a href="carreras.html">Buscar carreras</a></div>
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
        
            <form class="form-horizontal">
<fieldset>
    <br /><br /><br />
<!-- Form Name -->
<legend>Informacion Personal</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Id:</label>  
  <div class="col-md-4">
    <asp:TextBox ID="txtId" runat="server"  class="form-control input-md" ReadOnly="True"></asp:TextBox>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Nombre:</label>  
  <div class="col-md-4">
    <asp:TextBox ID="txtNombre" runat="server"  class="form-control input-md" ReadOnly="True"></asp:TextBox>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Apellido:</label>  
  <div class="col-md-4">
    <asp:TextBox ID="txtApellido" runat="server"  class="form-control input-md" ReadOnly="True"></asp:TextBox>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Correo:</label>  
  <div class="col-md-4">
    <asp:TextBox ID="txtCorreo" runat="server"  class="form-control input-md"></asp:TextBox>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Telefono:"</label>  
  <div class="col-md-4">
    <asp:TextBox ID="txtTelefono" runat="server"  class="form-control input-md" ></asp:TextBox>
  </div>
</div>

<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="button1id">Double Button</label>
  <div class="col-md-8">
      <asp:Button ID="btnActualizarInformacion" runat="server" Text="Actualizar Informacion"  class="btn btn-primary" OnClick="btnActualizarInformacion_Click"/>
      <asp:Button ID="Cancelar" runat="server" Text="Cancelar"  class="btn btn-primary"/><br />
      <asp:Label ID="lblMensaje" runat="server" Text="" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
  </div>
</div>

</fieldset>
</form>




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
