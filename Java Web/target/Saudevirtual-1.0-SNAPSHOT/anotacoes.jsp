<%@page import="java.io.PrintWriter"%>
<%@page import="dominion.FichaIdentificacao"%>
<%@page import="br.com.DTO.UsuarioDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <%
        UsuarioDTO usuario;
        FichaIdentificacao ficha;
        HttpSession sessao = request.getSession();

        usuario = (UsuarioDTO) sessao.getAttribute("usuario");
        ficha = (FichaIdentificacao) sessao.getAttribute("FICHA");

        if (ficha == null) {

            response.setContentType("text/html");
            PrintWriter pw = response.getWriter();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Primeiro, preencha a Ficha de Identificação.');");
            pw.println("</script>");
            RequestDispatcher rd = request.getRequestDispatcher("/Formularios.jsp");

            try {
                rd.forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
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
        <section class="border rounded border-dark shadow-lg" style="background: #ffffff;margin-left: 30px;margin-right: 30px;margin-top: 10px;">
            <div class="container" style="padding: 9px;">
                <h1 class="border rounded" style="text-align: center;font-size: 30px;padding: 16px;background: rgba(152,149,150,0.2);"><strong>ANOTAÇÕES DE ATENDIMENTO DE PACIENTES</strong><br></h1>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col">
                        <form action="Servpronto" method="Post">
                            <div class="form-group">
                                <div class="form-row" style="padding: 5PX;">
                                    <div class="col"><label>Nome:&nbsp;</label><label><%= ficha.getNome()%></label></div>
                                    <div class="col"><label>Cpf:&nbsp;</label><label><%= ficha.getCpf()%></label></div>
                                </div>
                                <div class="form-row" style="padding: 5PX;">
                                    <div class="col"><label>PROCEDIMENTO REALIZADO</label><input class="form-control form-control-sm" type="text" name="PROCD"></div>
                                </div>
                                <div class="form-row" style="padding: 5PX;">
                                    <div class="col"><label class="col-form-label">DISCIPLINA</label></div>
                                </div>
                                <div class="form-row" style="padding: 5PX;">
                                    <div class="col"><input class="form-control form-control-sm" type="text" name="DISC"></div>
                                </div>
                                <div class="form-row" style="padding: 5PX;">
                                    <div class="col"><label>ALUNO(S)</label><input class="form-control form-control-sm" type="text" name="ALUNO"></div>
                                </div>
                                <div class="form-row" style="padding: 5PX;">
                                    <div class="col"><label>PROFESSOR</label><input class="form-control form-control-sm" type="text" name="PROF"></div>
                                </div>
                                <div class="form-row">
                                    <div class="col"><label style="font-weight: bold;">Anotações:&nbsp;<br></label><textarea class="form-control" name="anotacao" rows="5"></textarea></div>
                                </div>
                                <div class="form-row" style="padding: 5PX;">
                                    <div class="col"><button class="btn btn-primary" type="submit">Enviar</button></div>
                                </div>
                            </div>
                        </form>
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

</html>>
