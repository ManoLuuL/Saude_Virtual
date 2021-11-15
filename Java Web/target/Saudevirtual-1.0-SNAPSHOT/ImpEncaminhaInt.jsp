<%@page import="java.io.PrintWriter"%>
<%@page import="dominion.Encaminha"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <%
        Encaminha enca;
        HttpSession sessao = request.getSession();

        enca = (Encaminha) sessao.getAttribute("Encaminhamento");
        if (enca == null) {

            response.setContentType("text/html");
            PrintWriter pw = response.getWriter();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Primeiro, preencha o Encaminhamento Interno!');");
            pw.println("</script>");
            RequestDispatcher rd = request.getRequestDispatcher("/IndexDentista.jsp");

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
            <div class="container"><img src="assets/img/Icon.png" style="width: 60px;height: 60px;"><a class="navbar-brand text-left border rounded d-md-flex justify-content-md-center" style="font-family: Montserrat, sans-serif;margin-left: 14px;">Saúde Digital</a><button class="navbar-toggler" data-toggle="collapse"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button></div>
        </nav>
        <section class="border rounded border-dark shadow-lg" style="background: #ffffff;margin: 10px 30px;margin-left: 30px;margin-right: 30px;">
            <div class="container" style="padding: 9px;">
                <h1 class="border rounded" style="text-align: center;font-size: 30px;padding: 16px;background: rgba(152,149,150,0.2);">ENCAMINHAMENTO INTERNO</h1>
            </div>
            <div class="container">
                <div class="row" style="padding: 3px;">
                    <div class="col"><label>Paciente:&nbsp;</label><label><%= enca.getPaciente()%></label></div>
                    <div class="col"><label>Prontuário:&nbsp;</label><label><%= enca.getProntuario()%></label></div>
                </div>
                <div class="row" style="padding: 3px;">
                    <div class="col"><label>Aluno(s):&nbsp;</label><label><%= enca.getAluno()%></label></div>
                    <div class="col"><label>Data:&nbsp;</label><label>label</label></div>
                </div>
                <div class="row" style="padding: 3px;">
                    <div class="col"><label>Disciplina:&nbsp;</label><label><%= enca.getDisciplina()%></label></div>
                    <div class="col"><label>Professor (a):&nbsp;</label><label><%= enca.getProfessor()%></label></div>
                </div>
                <% if (enca.getGraduacao() != null) {%>
                <div class="row" style="padding: 3px;padding-top: 20px;">
                    <div class="col offset-md-0 text-center"><label class="col-form-label text-center" style="text-align: center;"><strong>Graduação</strong></label></div>
                </div>
                <div class="row" style="padding: 3px;">
                    <div class="col"><label class="col-form-label"><%= enca.getPaciente()%></label></div>
                </div> 
                <%}%>
                <% if (enca.getObs() != null) { %>
                <div class="row" style="padding: 3px;">
                    <div class="col"><label class="col-form-label"><%= enca.getObs() %></label></div>
                </div>
                <%}%>
                <% if (enca.getPos() != null) {%>
                <div class="row" style="padding: 3px;padding-top: 13px;">
                    <div class="col text-center"><label class="col-form-label text-center" style="text-align: center;"><strong>Pós Graduação</strong></label></div>
                </div>
                <div class="row" style="padding: 3px;">
                    <div class="col"><label class="col-form-label"><%= enca.getPos()%></label></div>
                </div>
                <%}%>
                <% if (enca.getProjeto() != null) {%>
                <div class="row" style="padding: 3px;">
                    <div class="col text-center" style="padding: 3px;padding-top: 13px;"><label class="col-form-label text-center" style="text-align: center;"><strong>Projeto de Extensão</strong></label></div>
                </div>
                <div class="row" style="padding: 3px;">
                    <div class="col"><label class="col-form-label"><%= enca.getProjeto()%></label></div>
                </div>
                <%}%>
                <div class="row" style="padding: 3px;">
                    <div class="col"><button class="btn btn-primary" type="button" onclick="window.history.back()">Voltar</button></div>
                    <div class="col"><button class="btn btn-primary" type="button" onClick="window.print()">Imprimir</button></div>
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
