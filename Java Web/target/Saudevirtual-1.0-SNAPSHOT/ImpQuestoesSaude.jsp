<%@page import="dominion.QuestSaude2"%>
<%@page import="dominion.QuestSaude"%>
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
    QuestSaude saude;
    QuestSaude2 saude2;
    HttpSession sessao = request.getSession(); 
     
    
    saude = (QuestSaude)sessao.getAttribute("Saude");
    saude2 = (QuestSaude2)sessao.getAttribute("Saude2");
    
    if(saude == null || saude2 == null){
    
        response.setContentType("text/html");
        PrintWriter pw=response.getWriter();
        pw.println("<script type=\"text/javascript\">");
        pw.println("alert('Primeiro, preencha o Formulario de Saúde.');");
        pw.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/Formularios.html");

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
    <section class="border rounded border-dark shadow-lg" style="margin-top: 10px;margin-right: 30px;margin-left: 30px;background: #ffffff;">
        <div class="container" style="padding: 9px;">
            <h1 class="border rounded" style="text-align: center;font-size: 30px;padding: 16px;background: rgba(152,149,150,0.2);">QUESTIONÁRIO DE SAÚDE<br></h1>
        </div>
        <div class="container">
            <div class="row">
                                <div class="col"><label style="font-weight: bold;">Paciente:&nbsp;</label><label>nome</label></div>
                                <div class="col"><label style="font-weight: bold;">CPF:&nbsp;</label><label>CPFpaciente</label></div>
                            </div>
                            <div class="row">
                                <div class="col"><label class="col-form-label">Queixa:&nbsp;</label></div>
                            </div>
                            <div class="row">
                                <div class="col"><label class="col-form-label"><%= saude.getQueixa() %></label></div>
                            </div>
                            <div class="row">
                                <div class="col"><label class="col-form-label">Historia da doença atual:</label></div>
                            </div>
                            <div class="row">
                                <div class="col"><label class="col-form-label"><%= saude.getHitdoenca() %></label></div>
                            </div>
                            <div class="row" style="padding: 3PX;">
                                <div class="col"><label class="col-form-label">1- Já teve hemorragia?</label></div>
                                <div class="col"><label class="col-form-label"><%= saude.getHemorragia() %></label></div>
                            </div>
                            <div class="row" style="padding: 3PX;">
                                <div class="col"><label class="col-form-label">2- Sofre(u) de alergia?</label></div>
                                <div class="col"><label class="col-form-label"><%= saude.getAlergia() %></label></div>
                            </div>
                            <div class="row" style="padding: 3PX;">
                                <div class="col"><label class="col-form-label">3-&nbsp;&nbsp;Teve reumatismo infeccioso?</label></div>
                                <div class="col"><label class="col-form-label"><%= saude.getInfeccioso() %></label></div>
                            </div>
                            <div class="row" style="padding: 3PX;">
                                <div class="col"><label class="col-form-label">4-&nbsp;&nbsp;Sofre(u) de distúrbio cardiovascular?</label></div>
                                <div class="col"><label class="col-form-label"><%= saude.getCardiovascular() %></label></div>
                            </div>
                            <div class="row" style="padding: 3PX;">
                                <div class="col"><label class="col-form-label">5-&nbsp;&nbsp;Sofre(u) de gastrite?</label></div>
                                <div class="col"><label class="col-form-label"><%= saude.getGastrite() %></label></div>
                            </div>
                            <div class="row" style="padding: 3PX;">
                                <div class="col"><label class="col-form-label">6-&nbsp;&nbsp;É diabético ou tem familiares diabéticos? </label></div>
                                <div class="col"><label class="col-form-label"><%= saude.getDiabetico() %></label></div>
                            </div>
                            <div class="row" style="padding: 3PX;">
                                <div class="col"><label class="col-form-label">7-&nbsp;&nbsp;Já desmaiou alguma vez?</label></div>
                                <div class="col"><label class="col-form-label"><%= saude.getDesmaiou() %></label></div>
                            </div>
                            <div class="row" style="padding: 3PX;">
                                <div class="col"><label class="col-form-label">8-&nbsp;&nbsp;Está sob tratamento médico?</label></div>
                                <div class="col"><label class="col-form-label"><%= saude.getTratamento_med() %></label></div>
                            </div>
                            <div class="row" style="padding: 3PX;">
                                <div class="col"><label class="col-form-label">9-&nbsp;&nbsp;Está tomando algum medicamento?</label></div>
                                <div class="col"><label class="col-form-label"><%= saude.getToma_medc() %></label></div>
                            </div>
                            <div class="row" style="padding: 3PX;">
                                <div class="col"><label class="col-form-label">10-&nbsp;&nbsp;Esteve doente ou foi operado nos últimos 5 anos?</label></div>
                                <div class="col"><label class="col-form-label"><%= saude.getDoente_5() %></label></div>
                            </div>
                            <div class="row" style="padding: 3PX;">
                                <div class="col"><label class="col-form-label">11-&nbsp;&nbsp;Tem hábitos, vícios ou manias?</label></div>
                                <div class="col"><label class="col-form-label"><%= saude.getHabitos() %></label></div>
                            </div>
                            <div class="row" style="padding: 3PX;">
                                <div class="col"><label class="col-form-label">12-&nbsp;&nbsp;Tem ansiedade/depressão?</label></div>
                                <div class="col"><label class="col-form-label"><%= saude.getAnsie_depre() %></label></div>
                            </div>
                            <div class="row" style="padding: 3PX;">
                                <div class="col"><label class="col-form-label">13-&nbsp;&nbsp;Você e/ou algum familiar&nbsp;teve algumas dessas doenças:</label></div>
                            </div>
                            <div class="row" style="padding: 3PX;">
                                <div class="col"><label>Tuberculose&nbsp;&nbsp;</label><label><%= saude2.getTuberculose() %></label></div>
                                <div class="col"><label>Sífilis&nbsp;&nbsp;</label><label><%= saude2.getSifilis() %></label></div>
                            </div>
                            <div class="row" style="padding: 3PX;">
                                <div class="col offset-md-0"><label>Sarampo&nbsp;&nbsp;</label><label><%= saude2.getSarampo() %></label></div>
                                <div class="col"><label>Caxumba&nbsp;&nbsp;</label><label><%= saude2.getCaxumba() %></label></div>
                            </div>
                            <div class="row" style="padding: 3PX;">
                                <div class="col"><label>Hepatite A, B, C&nbsp;&nbsp;</label><label><%= saude2.getHepatite() %></label></div>
                                <div class="col"><label>Varicela&nbsp;&nbsp;</label><label><%= saude2.getVaricela() %></label></div>
                            </div>
                            <div class="row" style="padding: 3PX;">
                                <div class="col"><label>SIDA/AIDS&nbsp;&nbsp;</label><label><%= saude2.getAids() %></label></div>
                                <div class="col"><label>Outras:&nbsp;&nbsp;</label><label><%= saude2.getOutra_doenca() %></label></div>
                            </div>
                            <div class="row" style="padding: 3PX;">
                                <div class="col"><label>14- É Fumante?&nbsp;&nbsp;</label><label><%= saude2.getFumanete() %></label></div>
                            </div>
                            <div class="row" style="padding: 3PX;">
                                <div class="col"><label>Frequência:&nbsp;</label><label><%= saude2.getFrequencia() %></label><label>&nbsp;/dia<br></label></div>
                            </div>
                            <div class="row" style="margin-top: 12px;margin-bottom: 0px;">
                                <div class="col"><label class="col-form-label">______________________________________</label></div>
                                <div class="col"><label class="col-form-label">______________________________________</label></div>
                            </div>
                            <div class="row">
                                <div class="col"><label class="col-form-label">Assinatura do Paciente/Responsável</label></div>
                                <div class="col"><label class="col-form-label">Ass. Do (a) professor(a) com carimbo ou nome completo e CRO</label></div>
                            </div>
                            <div class="row" style="padding: 5px;">
                                <div class="col"><a class="btn btn-primary" role="button" href="Impressao.html">Voltar</a></div>
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
