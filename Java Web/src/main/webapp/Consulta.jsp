
<%@page import="br.com.DTO.UsuarioDTO"%>
<%@page import="util.Doutor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<%
UsuarioDTO usuario;
HttpSession sessao = request.getSession();

usuario = (UsuarioDTO)sessao.getAttribute("usuario");

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
        <div class="container"><img src="assets/img/Icon.png" style="width: 60px;height: 60px;"><a class="navbar-brand" href="indexpaciente.html" style="font-family: Montserrat, sans-serif;margin-left: 14px;">Sa??de Digital</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-2"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
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
    <section class="border rounded border-dark shadow-lg" style="margin-top: 10px;margin-right: 30px;margin-left: 30px;background: #ffffff;">
        <div class="container" style="padding: 9px;">
            <h1 class="border rounded" style="text-align: center;font-size: 30px;padding: 16px;background: rgba(152,149,150,0.2);">MARQUE UMA CONSULTA</h1>
        </div>
        <div class="container">
            <div class="row">
                <div class="col">
                    <form action="ServConsulta" method="Post">
                        <div class="form-group">
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><label class="col-form-label">Finalidade da Consulta:</label></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><input class="form-control form-control-sm" type="text" style="width: 200px;" name="finalidade"></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><label class="col-form-label">Escolha um Doutor:</label></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><select class="form-control form-control-sm" style="width: 200px;" name="doutor">
                                    
                                       <%
                                        Doutor medico = new Doutor();
                                        String valor="";
                                        for (int i=0; i < medico.doutor.size(); i++){
                                            valor = medico.doutor.get(i);
                                    %>
                                    <option value="<%= valor%>"><%= valor%></option>
                                    <%} %>
                                        
                                    </select></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><label class="col-form-label">Escolha um dia(Menos Finais de Semana e Feriados):</label></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><input class="form-control form-control-sm" type="date" name="dataconsulta" style="width: 200px;"></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><label class="col-form-label">Telefone para contato:</label></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><input class="form-control form-control-sm" type="text" name="contato" style="width: 200px;"></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
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

</html>
