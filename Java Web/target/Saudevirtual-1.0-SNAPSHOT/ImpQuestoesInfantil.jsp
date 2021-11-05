<%@page import="dominion.QuestInf2"%>
<%@page import="dominion.QuestInf"%>
<%@page import="java.io.PrintWriter"%>
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
    QuestInf Infantil;
    QuestInf2 Infantil2;
    HttpSession sessao = request.getSession(); 
     
    
    Infantil = (QuestInf)sessao.getAttribute("Infantil");
    Infantil2 = (QuestInf2)sessao.getAttribute("Infantil2");
    
    if(Infantil == null || Infantil2 == null){
    
        response.setContentType("text/html");
        PrintWriter pw=response.getWriter();
        pw.println("<script type=\"text/javascript\">");
        pw.println("alert('Primeiro, preencha o Formulario Infantil.');");
        pw.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/questionario2.html");
        
        try {
            rd.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        } 
    }
    %> 

<body style="background: url(&quot;assets/img/padrao-sem-emenda-colorido-pastel-para-cuidados-dentarios_1284-44406.jpg&quot;);">
    <nav class="navbar navbar-light navbar-expand-md navigation-clean-button" style="color: #222222;">
        <div class="container"><img src="assets/img/Icon.png" style="width: 60px;height: 60px;"><a class="navbar-brand text-left border rounded d-md-flex justify-content-md-center" style="font-family: Montserrat, sans-serif;margin-left: 14px;">Saúde Digital</a><button class="navbar-toggler" data-toggle="collapse"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button></div>
    </nav>
    <section class="border rounded border-dark shadow-lg" style="background: #ffffff;margin-left: 30px;margin-right: 30px;margin-top: 10px;">
        <div class="container" style="padding: 9px;">
            <h1 class="border rounded" style="text-align: center;font-size: 30px;padding: 16px;background: rgba(152,149,150,0.2);">QUESTIONÁRIO DE SAÚDE INFANTIL<br></h1>
        </div>
        <div class="container">
            <form>
                <div class="form-group">
                    <div class="form-row" style="padding: 3px;">
                        <div class="col"><label style="font-weight: bold;">Paciente:&nbsp;</label><label>nome</label></div>
                        <div class="col"><label style="font-weight: bold;">CPF:&nbsp;</label><label>CPFpaciente</label></div>
                    </div>
                    <div class="form-row" style="padding: 3px;">
                        <div class="col"><label class="col-form-label">História da gestação:</label></div>
                    </div>
                    <div class="form-row" style="padding: 3px;">
                        <div class="col"><label class="col-form-label">Label</label></div>
                    </div>
                    <div class="form-row" style="padding: 3px;">
                        <div class="col"><label>Nasceu de parto:&nbsp;&nbsp;</label><label>Label</label></div>
                    </div>
                    <div class="form-row" style="padding: 3px;">
                        <div class="col"><label class="col-form-label">A criança teve algum problema no parto?</label></div>
                    </div>
                    <div class="form-row" style="padding: 3px;">
                        <div class="col"><label class="col-form-label">Label</label></div>
                    </div>
                    <div class="form-row" style="padding: 3px;">
                        <div class="col"><label>A amamentação foi:&nbsp;</label><label>Label</label></div>
                        <div class="col"><label>até a idade de&nbsp;</label><label>Label</label></div>
                    </div>
                    <div class="form-row" style="padding: 3px;">
                        <div class="col"><label class="col-form-label">Já lhe foi dito para não tomar anestesia local?&nbsp;</label></div>
                    </div>
                    <div class="form-row" style="padding: 3px;">
                        <div class="col"><label class="col-form-label">Label</label></div>
                    </div>
                    <div class="form-row" style="padding: 3px;">
                        <div class="col"><label class="col-form-label">Já teve ou viveu com alguém que tivesse doença grave e contagiosa?</label></div>
                    </div>
                    <div class="form-row" style="padding: 3px;">
                        <div class="col"><label class="col-form-label">Label</label></div>
                    </div>
                    <div class="form-row" style="padding: 3px;">
                        <div class="col"><label class="col-form-label">A criança já foi vacinada?</label></div>
                    </div>
                    <div class="form-row" style="padding: 3px;">
                        <div class="col-md-12 offset-md-4"><label class="col-form-label" style="text-align: center;"><strong>CONDUTA DA CRIANÇA</strong></label></div>
                    </div>
                    <div class="form-row" style="padding: 3px;">
                        <div class="col"><label>Durante os 2 primeiros anos de vida:&nbsp;&nbsp;</label><label>Label</label></div>
                    </div>
                    <div class="form-row" style="padding: 3px;">
                        <div class="col"><label>No lar e na escola teve alguma dificuldade no aprendizado?&nbsp;&nbsp;</label><label>Label</label></div>
                    </div>
                    <div class="form-row" style="padding: 3px;">
                        <div class="col"><label>Estado anímico:&nbsp;&nbsp;</label><label>Label</label></div>
                    </div>
                    <div class="form-row" style="padding: 3px;">
                        <div class="col"><label>Tem sono:&nbsp;&nbsp;</label><label>Label</label></div>
                    </div>
                    <div class="form-row" style="padding: 3px;">
                        <div class="col"><label>Conduta psicomotora:&nbsp;&nbsp;</label><label>Label</label></div>
                    </div>
                    <div class="form-row" style="padding: 3px;">
                        <div class="col"><label>Alimentação:&nbsp;&nbsp;</label><label>Label</label></div>
                    </div>
                    <div class="form-row" style="padding: 3px;">
                        <div class="col"><label>Sociabilidade:&nbsp;&nbsp;</label><label>Label</label></div>
                    </div>
                    <div class="form-row" style="padding: 3px;">
                        <div class="col"><label>Apresenta alguma patologia de conduta:&nbsp;&nbsp;</label><label>Label</label></div>
                    </div>
                    <div class="form-row" style="padding: 3px;">
                        <div class="col"><label>Observações:&nbsp;&nbsp;</label><label>Label</label></div>
                    </div>
                    <div class="form-row" style="margin-top: 12px;margin-bottom: 0px;">
                        <div class="col"><label class="col-form-label">______________________________________</label></div>
                        <div class="col"><label class="col-form-label">______________________________________</label></div>
                    </div>
                    <div class="form-row">
                        <div class="col"><label class="col-form-label">Assinatura do Paciente/Responsável</label></div>
                        <div class="col"><label class="col-form-label">Ass. Do (a) professor(a) com carimbo ou nome completo e CRO</label></div>
                    </div>
                    <div class="form-row" style="margin-top: 12px;margin-bottom: 0px;">
                        <div class="col"><label class="col-form-label">Aluno(s): ______________________________________</label></div>
                    </div>
                    <div class="form-row" style="padding: 5px;">
                        <div class="col"><a class="btn btn-primary" role="button" href="Impressao.html">Voltar</a></div>
                        <div class="col"><button class="btn btn-primary" type="button" onClick="window.print()">Imprimir</button></div>
                    </div>
                </div>
            </form>
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
