<%@page import="br.com.DTO.UsuarioDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <%
        UsuarioDTO usuario;
        HttpSession sessao = request.getSession();

        usuario = (UsuarioDTO) sessao.getAttribute("usuario");

    %>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <title>Trabalho 2</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Abril+Fatface&amp;display=swap">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alata&amp;display=swap">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alegreya&amp;display=swap">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat&amp;display=swap">
        <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
        <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
        <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css">
        <link rel="stylesheet" href="assets/css/Features-Boxed.css">
        <link rel="stylesheet" href="assets/css/Features-Clean.css">
        <link rel="stylesheet" href="assets/css/Footer-Basic.css">
        <link rel="stylesheet" href="assets/css/Footer-Dark.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
        <link rel="stylesheet" href="assets/css/Login-Form-Dark.css">
        <link rel="stylesheet" href="assets/css/Navigation-with-Button.css">
        <link rel="stylesheet" href="assets/css/Registration-Form-with-Photo.css">
        <link rel="stylesheet" href="assets/css/Simple-Slider.css">
        <link rel="stylesheet" href="assets/css/styles.css">
        <link rel="stylesheet" href="assets/css/Team-Boxed.css">
    </head>

    <body style="background: url(&quot;assets/img/padrao-sem-emenda-colorido-pastel-para-cuidados-dentarios_1284-44406.jpg&quot;);">
        <nav class="navbar navbar-light navbar-expand-md navigation-clean-button" style="color: #222222;">
            <div class="container"><img src="assets/img/Icon.png" style="width: 60px;height: 60px;"><a class="navbar-brand" href="indexdentista.html" style="font-family: Montserrat, sans-serif;margin-left: 14px;">Saúde Digital</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-2"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navcol-2">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item"><a class="nav-link active" href="IndexDentista.jsp" style="color: rgb(0,0,0);font-size: 15px;font-family: Alata, sans-serif;">Página Inicial</a></li>
                        <li class="nav-item"><a class="nav-link" href="#" style="color: rgb(0,0,0);font-size: 15px;font-family: Alata, sans-serif;">Contato</a></li>
                        <li class="nav-item dropdown"><a class="dropdown-toggle nav-link" aria-expanded="false" data-toggle="dropdown" href="#" style="color: rgb(0,0,0);font-size: 15px;font-family: Alata, sans-serif;">Sobre</a>
                            <div class="dropdown-menu"><a class="dropdown-item" href="#">First Item</a><a class="dropdown-item" href="#">Second Item</a><a class="dropdown-item" href="#">Third Item</a></div>
                        </li>
                    </ul><span class="navbar-text actions"> </span><label class="text-uppercase border rounded border-white mr-auto"><label>Bem Vindo Usuario:&nbsp;</label><%= usuario.getUsuario()%></label>
                </div>
            </div>
        </nav>
        <section class="border rounded border-dark shadow-lg features-boxed" style="color: var(--gray-dark);margin-left: 30px;margin-right: 30px;margin-top: 10px;margin-bottom: 10px;">
            <div class="container" style="color: var(--gray-dark);">
                <div class="intro">
                    <h2 class="text-center">Formulários para Preencher antes da Impressão</h2>
                </div>
                <div class="row justify-content-center features">
                    <div class="col-sm-6 col-md-5 col-lg-4 item">
                        <div class="border rounded box"><i class="fas fa-copy icon" style="color: rgb(33,132,248);"></i><a class="learn-more" href="atestado.jsp" style="font-size: 18px;color: var(--gray-dark);margin: 0px 0px 8px;height: 21px;width: 210px;"><br><strong>ATESTADO</strong><br></a></div>
                    </div>
                    <div class="col-sm-6 col-md-5 col-lg-4 item">
                        <div class="border rounded box"><i class="far fa-clipboard icon" style="color: rgb(33,132,248);"></i><a class="learn-more" href="receituario.jsp" style="width: 210px;height: 21px;margin: 0px 0px 8px;font-size: 18px;color: var(--gray-dark);"><br><strong>RECEITUARIO</strong><br></a></div>
                    </div>
                    <div class="col-sm-6 col-md-5 col-lg-4 item">
                        <div class="border rounded box"><i class="fa fa-list-alt icon" style="color: rgb(33,132,248);"></i><a class="learn-more" href="questionario.jsp" style="width: 210px;height: 21px;margin: 0px 0px 8px;color: var(--gray-dark);font-size: 18px;"><br><strong>QUESTIONÁRIO DE SAÚDE</strong><br></a></div>
                    </div>
                    <div class="col-sm-6 col-md-5 col-lg-4 item">
                        <div class="border rounded box"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round" class="icon icon-tabler icon-tabler-mood-kid icon" style="color: rgb(33,132,248);">
                            <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                            <circle cx="12" cy="12" r="9"></circle>
                            <line x1="9" y1="10" x2="9.01" y2="10"></line>
                            <line x1="15" y1="10" x2="15.01" y2="10"></line>
                            <path d="M9.5 15a3.5 3.5 0 0 0 5 0"></path>
                            <path d="M12 3a2 2 0 0 0 0 4"></path>
                            </svg><a class="learn-more" href="questionario2.jsp" style="width: 210px;height: 21px;margin: 0px 0px 8px;color: var(--gray-dark);font-size: 18px;"><br><strong>QUESTIONÁRIO INFANTIL</strong><br></a></div>
                    </div>
                    <div class="col-sm-6 col-md-5 col-lg-4 item">
                        <div class="border rounded box"><i class="fa fa-list-alt icon" style="color: rgb(33,132,248);"></i><a class="learn-more" href="questionario3.jsp" style="width: 210px;height: 21px;margin: 0px 0px 8px;color: var(--gray-dark);font-size: 18px;"><br><strong>EXAME FÍSICO</strong><br></a></div>
                    </div>
                    <div class="col-sm-6 col-md-5 col-lg-4 item">
                        <div class="border rounded box"><i class="fa fa-pencil-square-o icon" style="color: rgb(33,132,248);"></i><a class="learn-more" href="anotacoes.jsp" style="width: 210px;height: 21px;margin: 0px 0px 8px;color: var(--gray-dark);font-size: 18px;"><br><strong>ANOTAÇÕS</strong><br></a></div>
                    </div>
                    <div class="col-sm-6 col-md-5 col-lg-4 item">
                        <div class="border rounded box"><i class="fa fa-print icon" style="color: rgb(33,132,248);"></i><a class="learn-more" href="Impressao.jsp" style="width: 210px;height: 21px;margin: 0px 0px 8px;color: var(--gray-dark);font-size: 18px;"><br><strong>IMPRESSÃO</strong><br></a></div>
                    </div>
                </div>
            </div>
        </section>
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
        <script src="assets/js/Simple-Slider.js"></script>
        <script src="assets/js/untitled.js"></script>
    </body>

</html>
