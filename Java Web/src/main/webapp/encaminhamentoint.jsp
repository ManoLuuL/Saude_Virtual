
<%@page import="util.Graduacao"%>
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

<body style="background: url(&quot;assets/img/padrao-sem-emenda-colorido-pastel-para-cuidados-dentarios_1284-44406.jpg&quot;);">
    <nav class="navbar navbar-light navbar-expand-md navigation-clean-button" style="color: #222222;">
        <div class="container"><img src="assets/img/Icon.png" style="width: 60px;height: 60px;"><a class="navbar-brand" href="indexdentista.html" style="font-family: Montserrat, sans-serif;margin-left: 14px;">Saúde Digital</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-2"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-2">
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
    <section class="border rounded border-dark shadow-lg" style="background: #ffffff;margin: 10px 30px;margin-left: 30px;margin-right: 30px;">
        <div class="container" style="padding: 9px;">
            <h1 class="border rounded" style="text-align: center;font-size: 30px;padding: 16px;background: rgba(152,149,150,0.2);">ENCAMINHAMENTO INTERNO</h1>
        </div>
        <div class="container">
            <div class="row">
                <div class="col">
                    <form>
                        <div class="form-group">
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><label>Paciente:&nbsp;</label><label>nomepasciente</label></div>
                                <div class="col"><label>Prontuário:&nbsp;</label><label>numeroprontuario</label></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><label>Aluno(s):&nbsp;</label><input class="form-control form-control-sm" type="text" name="txtaluno" placeholder="Nome do Aluno" style="width: 250px;"></div>
                                <div class="col"><label>Data:&nbsp;</label><label id="date">label</label></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><label>Disciplina:&nbsp;</label><input class="form-control form-control-sm" type="text" name="txtdisciplina" placeholder="Informe a Disciplina" style="width: 250px;"></div>
                                <div class="col"><label>Professor (a):&nbsp;</label><input class="form-control form-control-sm" type="text" style="width: 250px;" name="txtprofessor" placeholder="Informe o Professor"></div>
                            </div>
                            <div class="form-row" style="padding: 3px;padding-top: 20px;">
                                <div class="col offset-md-0 text-center"><label class="col-form-label text-center" style="text-align: center;"><strong>Graduação</strong></label></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                        <div class="col"><select class="form-control form-control-sm" style="width: 300px;" name="graduacao">
                                    <select class="form-control form-control-sm" style="width: 630px;" name="graduacao">
                                    <%
                                        Graduacao disciplinas = new Graduacao();
                                        String valor="";
                                        for (int i = 0; i < disciplinas.graduacoes.size(); i++) {
                                                valor = disciplinas.graduacoes.get(i);
                                    %>
                                    <option value="<%= valor%>"><%= valor%></option>
                                    <%} %>
                                    </select></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><textarea class="form-control form-control-sm" name="txtgraduacao" rows="4" placeholder="Quando for necessario"></textarea></div>
                            </div>
                            <div class="form-row" style="padding: 3px;padding-top: 13px;">
                                <div class="col text-center"><label class="col-form-label text-center" style="text-align: center;"><strong>Pós Graduação</strong></label></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                        <div class="col"><select class="form-control form-control-sm" style="width: 300px;" name="posgraduacao">
                                    <%
                                        Graduacao posg = new Graduacao();
                                        String valor2="";
                                        for (int i = 0; i < posg.posgraduacao.size(); i++) {
                                                valor2 = posg.posgraduacao.get(i);
                                    %>
                                    <option value="<%= valor2%>"><%= valor2%></option>
                                    <%} %>
                                    </select></div>
                            </div>
                            <div class="form-row">
                                <div class="col text-center" style="padding: 3px;padding-top: 13px;"><label class="col-form-label text-center" style="text-align: center;"><strong>Projeto de Extensão</strong></label></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                        <div class="col"><select class="form-control form-control-sm" style="width: 300px;" name="projeto">
                                    <%
                                        Graduacao projeto = new Graduacao();
                                        String valor3="";
                                        for (int i = 0; i < projeto.projetoextensao.size(); i++) {
                                                valor3 = projeto.projetoextensao.get(i);
                                    %>
                                    <option value="<%= valor3%>"><%= valor3%></option>
                                    <%} %>
                                    </select></div>
                            </div>
                            <div class="form-row" style="padding: 3px;padding-top: 20px;">
                                <div class="col"><button class="btn btn-primary" type="button">Enviar</button></div>
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
    <script>var currentDate  = new Date(),
    currentDay   = currentDate.getDate() < 10 
                 ? '0' + currentDate.getDate() 
                 : currentDate.getDate(),
    currentMonth = currentDate.getMonth() < 9 
                 ? '0' + (currentDate.getMonth() + 1) 
                 : (currentDate.getMonth() + 1);

document.getElementById("date").innerHTML = currentDay + '/' + currentMonth + '/' +  currentDate.getFullYear();
</script>
</body>

</html>
