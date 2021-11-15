<%@page import="java.io.PrintWriter"%>
<%@page import="dominion.Prontuario"%>
<%@page import="dominion.FcIdFiliacao"%>
<%@page import="dominion.FichaIdentificacao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <%
        Prontuario prontuario;
        FcIdFiliacao filiacao;
        FichaIdentificacao ficha;
        HttpSession sessao = request.getSession();

        prontuario = (Prontuario) sessao.getAttribute("Prontuario");
        filiacao = (FcIdFiliacao) sessao.getAttribute("Filiacao");
        ficha = (FichaIdentificacao) sessao.getAttribute("Ficha");

        if (prontuario == null) {

            response.setContentType("text/html");
            PrintWriter pw = response.getWriter();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Primeiro, preencha as Anotações!');");
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
            <div class="container"><img src="assets/img/Icon.png" style="width: 60px;height: 60px;"><a class="navbar-brand" href="indexdentista.html" style="font-family: Montserrat, sans-serif;margin-left: 14px;">Saúde Digital</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navcol-1">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item"><a class="nav-link" href="indexdentista.html" style="color: rgb(0,0,0);font-size: 15px;font-family: Alata, sans-serif;">Página Inicial</a></li>
                        <li class="nav-item"><a class="nav-link" href="#" style="color: rgb(0,0,0);font-size: 15px;font-family: Alata, sans-serif;">Contato</a></li>
                        <li class="nav-item dropdown"><a class="dropdown-toggle nav-link" aria-expanded="false" data-toggle="dropdown" href="#" style="color: rgb(0,0,0);font-size: 15px;font-family: Alata, sans-serif;">Sobre</a>
                            <div class="dropdown-menu"><a class="dropdown-item" href="#">First Item</a><a class="dropdown-item" href="#">Second Item</a><a class="dropdown-item" href="#">Third Item</a></div>
                        </li>
                    </ul><label class="text-uppercase border rounded border-white mr-auto">Label</label><span class="navbar-text actions"> </span>
                </div>
            </div>
        </nav>
        <section class="border rounded border-dark shadow-lg" style="margin-top: 10px;margin-right: 30px;margin-left: 30px;background: #ffffff;">
            <div class="container" style="padding: 9px;">
                <h1 class="border rounded" style="text-align: center;font-size: 30px;padding: 16px;background: rgba(152,149,150,0.2);"><strong>PRONTUÁRIO</strong><br></h1>
            </div>
            <div class="container">
                <div class="row" style="padding: 3px;">
                    <div class="col"><label class="col-form-label"><strong>Dados Pessoais:</strong></label></div>
                </div>
                <div class="row" style="padding: 3px;">
                    <div class="col"><label>Nome:&nbsp;</label><label><%= ficha.getNome() %></label></div>
                    <div class="col"><label>RG:&nbsp;</label><label><%= ficha.getRg() %></label></div>
                    <div class="col"><label>CPF:&nbsp;</label><label><%= ficha.getCpf() %></label></div>
                </div>
                <div class="row" style="padding: 3px;">
                    <div class="col"><label>Sexo:&nbsp;</label><label><%= ficha.getSexo() %></label></div>
                    <div class="col"><label>Nascimento:&nbsp;</label><label><%= ficha.getNascimento() %></label></div>
                </div>
                <div class="row" style="padding: 3px;">
                    <div class="col"><label>Peso:&nbsp;</label><label><%= ficha.getPeso() %></label></div>
                    <div class="col"><label>Altura:&nbsp;</label><label><%= ficha.getAltura() %></label></div>
                </div>
                <div class="row" style="padding: 3px;">
                    <div class="col"><label>Estado Civil:&nbsp;</label><label><%= ficha.getEstado_civil() %></label></div>
                </div>
                <div class="row" style="padding: 3px;">
                    <div class="col"><label>Cor:&nbsp;</label><label><%= ficha.getCor() %></label></div>
                    <div class="col"><label>Naturalidade:&nbsp;</label><label><%= ficha.getCidade() %></label></div>
                </div>
                <div class="row" style="padding: 3px;">
                    <div class="col"><label class="col-form-label"><strong>Antecedentes:&nbsp;</strong></label></div>
                </div>
                <div class="row" style="padding: 3px;">
                    <div class="col"><label>Pai:&nbsp;</label><label><%= filiacao.getNome_pai() %></label></div>
                    <div class="col"><label>Mãe:&nbsp;</label><label><%= filiacao.getNome_mae() %></label></div>
                </div>
                <div class="row" style="padding: 3px;">
                    <div class="col"><label>Contato:&nbsp;</label><label><%= filiacao.getTelefone() %></label></div>
                </div>
                <div class="row" style="padding: 3px;">
                    <div class="col"><label class="col-form-label"><strong>Histórico&nbsp;Doença Atual:</strong></label></div>
                </div>
                <div class="row" style="padding: 3px;">
                    <div class="col"><label class="col-form-label"><%= prontuario.getHistoria() %></label></div>
                </div>
                <div class="row" style="padding: 3px;">
                    <div class="col"><label class="col-form-label"><strong>Anotações:</strong></label></div>
                </div>
                <div class="row" style="padding: 3px;">
                    <div class="col"><label class="col-form-label"><%= prontuario.getAnotacoes() %></label></div>
                </div>
                <div class="row" style="padding: 3px;">
                    <div class="col"><label>Disciplina:&nbsp;</label><label><%= prontuario.getDisciplina() %></label></div>
                </div>
                <div class="row" style="padding: 3px;">
                    <div class="col"><label>Alunos:&nbsp;</label><label><%= prontuario.getAluno() %></label></div>
                </div>
                <div class="row" style="padding: 3px;">
                    <div class="col"><label>Procedimento Realizado:&nbsp;</label><label><%= prontuario.getProcedimento() %></label></div>
                </div>
                <div class="row" style="padding: 3px;">
                    <div class="col"><label>Professor:&nbsp;</label><label><%= prontuario.getProfessor() %></label></div>
                </div>
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
