﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarCurso.aspx.cs" Inherits="Enrollogic.AgregarCurso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
                                <div>
                                    <img src="images/phone-call.svg" alt=""></div>
                                <span>(506) 2523-4000</span>
                            </li>
                            <!-- Address -->
                            <li class="d-flex flex-row align-items-center justify-content-start">
                                <div>
                                    <img src="images/placeholder.svg" alt=""></div>
                                <span>Urbanización Tournón, San José</span>
                            </li>
                            <!-- Email -->
                            <li class="d-flex flex-row align-items-center justify-content-start">
                                <div>
                                    <img src="images/envelope.svg" alt=""></div>
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
                                    <asp:Label ID="lblUsuarioVigente" runat="server" Text="Label"></asp:Label></li>
                                <li><a href="Login.aspx">Cerrar Sesión</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- Header Content -->
                <div class="header_content d-flex flex-row align-items-center justify-content-start">
                    <div class="logo"><a href="#">Enrollogic<span></span></a></div>
                    <nav class="main_nav">
                        <ul class="d-flex flex-row align-items-start justify-content-start">
                            <li><a href="HomeAdministrativo.aspx">Inicio</a></li>
                            <li><a href="AgregarCarrera.aspx">Agregar carrera</a></li>
                            <li class="active"><a href="AgregarCurso.aspx">Agregar Curso</a></li>
                            <li><a href="EditarCurso.aspx">Editar Curso</a></li>
                        </ul>
                    </nav>
                    <div class="hamburger ml-auto"><i class="fa fa-bars" aria-hidden="true"></i></div>
                </div>

            </header>

            <!-- Menu -->
            <!-- Home -->

            <!-- Search -->

            <div class="search">

                <!-- Listing -->
                <!-- Form Name -->
                <br /> <br /> <br /> <br /> <br /> <br /> <br /> 
                <legend>Crear Curso</legend>

                <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="tbCursoid">ID:</label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtId"  name="tbCursoid" type="text" placeholder="Digite el id del curso" class="form-control input-md" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="tbCursoCod">Código:</label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtCodigo"  name="tbCursoCod" type="text" placeholder="Digite el código del curso" class="form-control input-md" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="tbNombreCurso">Nombre</label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtNombre"  name="tbNombreCurso" type="text" placeholder="Digite el nombre del curso" class="form-control input-md" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <!-- Select Basic -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="sbAsignarCarrera">Asignar Carrera:</label>
                        <div class="col-md-4">
                            <asp:DropDownList ID="ddlCarreras" runat="server" class="form-control"></asp:DropDownList>
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="tbPeriodo">Periodo:</label>
                        <div class="col-md-4"> 
                            <asp:TextBox ID="txtPeriodo" runat="server" name="tbPeriodo" type="text" placeholder="Digite el periodo" class="form-control input-md"></asp:TextBox>
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="tbDescripcion">Descripción:</label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtDescripcion" name="tbDescripcion" type="text" placeholder="Digite la descripción del curso" class="form-control input-md" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="tbAula">Aula:</label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtAula" name="tbAula" type="text" placeholder="Digite el aula asignada" class="form-control input-md" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <!-- Select Basic -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="sbProfesor">Asignar Profesor:</label>
                        <div class="col-md-4">
                            <asp:DropDownList ID="ddlProfesores" runat="server" class="form-control"></asp:DropDownList>
                        </div>
                    </div>
                    
                    
                    <!-- Button (Double) -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="btnGuardar"></label>
                        <div class="col-md-8">
                            <asp:Button ID="btnGuardar" name="btnGuardar" class="btn btn-primary" runat="server" Text="Agregar Curso" OnClick="btnGuardar_Click" />
                            <asp:Button ID="btnCancelar" name="btnCancelar" class="btn btn-danger" runat="server" Text="Cancelar" />
                        </div>
                    </div>
                <asp:Label ID="lblMensaje" runat="server" Text="" Font-Bold="True" ForeColor="Red" Font-Size="Medium"></asp:Label>
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
                                        <div>
                                            <img src="images/phone-call.svg" alt=""></div>
                                        <span>(506) 2523-4000</span>
                                    </li>
                                    <!-- Address -->
                                    <li class="d-flex flex-row align-items-center justify-content-start">
                                        <div>
                                            <img src="images/placeholder.svg" alt=""></div>
                                        <span>Urbanización Tournón, San José</span>
                                    </li>
                                    <!-- Email -->
                                    <li class="d-flex flex-row align-items-center justify-content-start">
                                        <div>
                                            <img src="images/envelope.svg" alt=""></div>
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
                                <li><a href="index.aspx">Inicio</a></li>
                                <li><a href="acerca.aspx">Acerca de</a></li>
                                <li><a href="carreras.aspx">Carreras</a></li>
                                <li><a href="blog.aspx">Noticias</a></li>
                                <li><a href="contacto.aspx">Contacto</a></li>
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
