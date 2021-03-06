
<%@page import="dominion.Consulta"%>
<%@page import="br.com.DTO.UsuarioDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

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

<%
UsuarioDTO usuario;
Consulta consu;
HttpSession sessao = request.getSession();

usuario = (UsuarioDTO)sessao.getAttribute("usuario");
consu = (Consulta)sessao.getAttribute("Consulta");
%>

<body style="background: url(&quot;assets/img/padrao-sem-emenda-colorido-pastel-para-cuidados-dentarios_1284-44406.jpg&quot;);">
    <nav class="navbar navbar-light navbar-expand-md navigation-clean-button" style="color: #222222;">
        <div class="container"><img src="assets/img/Icon.png" style="width: 60px;height: 60px;"><a class="navbar-brand" href="IndexPaciente.jsp" style="font-family: Montserrat, sans-serif;margin-left: 14px;">Sa??de Digital</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-2"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-2">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link active" href="IndexPaciente.jsp" style="color: rgb(0,0,0);font-size: 15px;font-family: Alata, sans-serif;">P??gina Inicial</a></li>
                    <li class="nav-item"><a class="nav-link" href="#" style="color: rgb(0,0,0);font-size: 15px;font-family: Alata, sans-serif;">Contato</a></li>
                    <li class="nav-item dropdown"><a class="dropdown-toggle nav-link" aria-expanded="false" data-toggle="dropdown" href="#" style="color: rgb(0,0,0);font-size: 15px;font-family: Alata, sans-serif;">Sobre</a>
                        <div class="dropdown-menu"><a class="dropdown-item" href="#">First Item</a><a class="dropdown-item" href="#">Second Item</a><a class="dropdown-item" href="#">Third Item</a></div>
                    </li>
                </ul><span class="navbar-text actions"> </span><label class="text-uppercase border rounded border-white mr-auto"><label>Bem Vindo Usuario:&nbsp;</label><%= usuario.getUsuario() %>
            </div>
        </div>
    </nav>
    <section class="border rounded shadow-lg" style="margin-right: 30px;margin-left: 30px;background: rgba(255,255,255,0.57);margin-top: 10px;">
        <h1 class="text-center" style="margin-bottom: 17px;margin-top: 17px;"><strong>Todos a bordo para sorrisos saud??veis!</strong><br></h1>
        <section class="border rounded border-dark shadow-lg features-boxed" style="color: var(--gray-dark);margin-left: 30px;margin-right: 30px;margin-top: 10px;margin-bottom: 10px;background: rgba(255,255,255,0.24);">
            <div class="container" style="color: var(--gray-dark);">
                <div class="row justify-content-center features">
                    <div class="col-sm-6 col-md-5 col-lg-4 item">
                        <div class="border rounded box"><i class="far fa-id-badge icon" style="color: rgb(33,132,248);"></i><a class="learn-more" href="Identificacao.jsp" style="width: 210px;height: 21px;margin: 0px 0px 8px;font-size: 18px;color: var(--gray-dark);"><br><strong>FICHA IDENTIFICA????O</strong><br></a></div>
                    </div>
                    <div class="col-sm-6 col-md-5 col-lg-4 item">
                        <div class="border rounded box"><i class="fas fa-file-alt icon" style="color: rgb(33,132,248);"></i><a class="learn-more" href="PreTermos.html" style="width: 210px;height: 21px;margin: 0px 0px 8px;color: var(--gray-dark);font-size: 18px;"><br><strong>TERMO DE ESCLARECIMENTO</strong><br></a></div>
                    </div>
                    <div class="col-sm-6 col-md-5 col-lg-4 item">
                        <div class="border rounded box"><i class="far fa-handshake icon" style="color: rgb(33,132,248);"></i><a class="learn-more" href="Consulta.jsp" style="width: 210px;height: 21px;margin: 0px 0px 8px;font-size: 18px;color: var(--gray-dark);"><br><strong>MARCAR CONSULTA</strong><br></a></div>
                    </div>
                </div>
            </div>
        </section>
        <% if(consu != null) {%>
        <section class="features-clean" style="background: rgba(255,255,255,0.32);padding-top: 10px;">
            <div class="container">
                <div class="row">
                    <div class="col"><label class="col-form-label"><strong>CONSULTAS:&nbsp;</strong></label></div>
                </div>
                <div class="row">
                    <div class="col"><label>Data:&nbsp;</label><label><%= consu.getData() %></label></div>
                    <div class="col"><label>Doutor:&nbsp;</label><label><%= consu.getDoutor() %></label></div>
                </div>
                <div class="row">
                    <div class="col"><label>Finalidade:&nbsp;</label><label><%= consu.getFinalidade() %></label></div>
                </div>
            </div>
        </section>
                           <% }%>
        <section class="features-clean" style="background: rgba(255,255,255,0.32);padding-top: 10px;">
            <div class="container">
                <h4 class="text-center" style="margin-bottom: 17px;margin-top: 17px;padding-bottom: 10px;"><strong>Servi??os prestados pelos nossos Profissionais:</strong><br></h4>
                <div class="row features">
                    <div class="col-sm-6 col-lg-4 item">
                        <h3 class="name"><strong>Cl??nico geral</strong><br></h3>
                        <p class="description" style="color: rgb(0,0,0);">S??o realizados os tratamentos mais simples, como consultas preventivas, limpezas, remo????o de t??rtaro, entre outros procedimentos.<br></p>
                    </div>
                    <div class="col-sm-6 col-lg-4 item">
                        <h3 class="name"><strong>Ortodontia</strong><br></h3>
                        <p class="description" style="color: rgb(0,0,0);">Por meio do uso de aparelhos dent??rios, os pacientes de todas as idades podem corrigir o posicionamento dos dentes e ossos faciais, tornando o sorriso mais harm??nico e funcional.<br></p>
                    </div>
                    <div class="col-sm-6 col-lg-4 item">
                        <h3 class="name"><strong>Odontopediatria</strong><br></h3>
                        <p class="description" style="color: rgb(0,0,0);">As crian??as tamb??m precisam de acompanhamento dent??rio e essa ?? a fun????o da odontopediatria. Mesmo durante a denti????o de leite, elas j?? est??o suscet??veis a c??ries e outros problemas, por isso ?? preciso visitar um profissional especializado com regularidade.<br></p>
                    </div>
                    <div class="col-sm-6 col-lg-4 item">
                        <h3 class="name"><strong>Implantodontia</strong><br></h3>
                        <p class="description" style="color: rgb(0,0,0);">O tratamento com implantodontia ?? indicado para substituir dentes faltantes na boca de forma muito eficiente. Ele ?? realizado por meio da implanta????o de um cilindro de tit??nio no osso maxilar, substituindo a raiz do dente ausente. Em seguida, ?? colocada a pr??tese feita sob medida, fixada no implante por meio de parafusos.<br></p>
                    </div>
                    <div class="col-sm-6 col-lg-4 item">
                        <h3 class="name"><strong>Pr??tese dent??ria</strong><br></h3>
                        <p class="description" style="color: rgb(0,0,0);">Respons??vel pela reconstru????o e reposi????o dos dentes danificados ou perdidos. O uso de pr??teses pode influenciar positivamente a mastiga????o, dic????o e est??tica do paciente, al??m de proteger as fun????es articulares.<br></p>
                    </div>
                    <div class="col-sm-6 col-lg-4 item">
                        <h3 class="name">Outros servi??os</h3>
                        <p class="description" style="color: rgb(0,0,0);">Periodontia<br>Dent??stica<br>Clareamento dent??rio<br>Facetas de porcelana ou lentes de contato<br>E muito mais...</p>
                    </div>
                </div>
            </div>
        </section>
        <div class="simple-slider" style="margin: -1px;margin-bottom: 14px;">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide" style="background: url(&quot;assets/img/3b5e178bba8cd55963fbc8fdbafc-1446755.jpg&quot;) center center / contain no-repeat;"></div>
                    <div class="swiper-slide" style="background: url(&quot;assets/img/brace_dentist_teeth_wire_orthodontic-73724.jpg&quot;) center center / contain no-repeat;"></div>
                    <div class="swiper-slide" style="background: url(&quot;assets/img/2a22eab82645342dd5170312fb83-1446753.jpg&quot;) center center / contain no-repeat;"></div>
                </div>
                <div class="swiper-pagination"></div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
            </div>
        </div>
    </section>
    <section class="border rounded shadow-lg team-boxed" style="margin-right: 30px;margin-left: 30px;background: rgba(255,255,255,0.57);margin-top: -2px;margin-bottom: 10px;">
        <div class="container">
            <div class="intro" style="padding: 10px;">
                <h3 class="text-center border rounded-pill border-dark shadow-lg d-md-flex justify-content-md-center" style="font-family: 'Abril Fatface', serif;font-size: 42px;">Depoimentos</h3>
                <p class="lead text-center" style="color: rgb(0,0,0);">Para aqueles que possuem alguma d??vida sobre nosso servi??o, aqui vai alguns depoimentos dos nossos pacientes!</p>
            </div>
            <div class="row people">
                <div class="col-md-6 col-lg-4 item">
                    <div class="box"><img class="rounded-circle" src="assets/img/1630635867871.jpg">
                        <h3 class="name">Lucas Develis</h3>
                        <p class="title">Criador de Conte??do</p>
                        <p class="description">Muito obrigado Dr. Vitor Molina por seu excelente atendimento e profissionalismo. Frequentei a cl??nica durante um ano e s?? tenho elogios a fazer. O espa??o ?? ??timo e os profissionais extremamente competentes. Estou muito satisfeito e recomendo!<br></p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 item">
                    <div class="box"><img class="rounded-circle" src="assets/img/1618767954276.jpg">
                        <h3 class="name">Gabriel Mattos</h3>
                        <p class="title">Desenvolvedor de Automa????o</p>
                        <p class="description">A dedica????o e o profissionalismo do Dr. Vitor em satisfazer plenamente os anseios de seus pacientes s??o de fazer inveja a qualquer um. Estou completamente realizada com todo o tratamento que tive desde a minha primeira consulta. Ah se todos os profissionais de todas as outras ??reas escutassem os desejos de seus pacientes... Deixo aqui, com sinceridade, o meu muito obrigado por tudo.<br></p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 item">
                    <div class="box"><img class="rounded-circle" src="assets/img/1591815195805.jpg">
                        <h3 class="name">Paulo Leonardo</h3>
                        <p class="title">Desenvolvedor de API's</p>
                        <p class="description">Dr Luis, gostaria de agradecer o tratamento que tive em sua cl??nica desde a minha primeira consulta. O sr me passou seguran??a desde o primeiro momento. E isso tirou o medo que sempre tive de dentista. Um sorriso bonito realmente faz toda a diferen??a em nossas vidas. Estou muito feliz. Muito obrigado!<br></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <footer class="footer-dark">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-3 item">
                    <h3>Services</h3>
                    <ul>
                        <li><a href="#">Web design</a></li>
                        <li><a href="#">Development</a></li>
                        <li><a href="#">Hosting</a></li>
                    </ul>
                </div>
                <div class="col-sm-6 col-md-3 item">
                    <h3>About</h3>
                    <ul>
                        <li><a href="#">Company</a></li>
                        <li><a href="#">Team</a></li>
                        <li><a href="#">Careers</a></li>
                    </ul>
                </div>
                <div class="col-md-6 item text">
                    <h3>Sa??de Digital</h3>
                    <p>Praesent sed lobortis mi. Suspendisse vel placerat ligula. Vivamus ac sem lacus. Ut vehicula rhoncus elementum. Etiam quis tristique lectus. Aliquam in arcu eget velit pulvinar dictum vel in justo.</p>
                </div>
            </div>
            <p class="copyright">Company Name ?? 2021</p>
        </div>
    </footer>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
    <script src="assets/js/Simple-Slider.js"></script>
    <script src="assets/js/untitled.js"></script>
</body>

</html>
