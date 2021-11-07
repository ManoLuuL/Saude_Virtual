<%@page import="dominion.FichaIdentificacao"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="dominion.QuestExame2"%>
<%@page import="dominion.QuestExame"%>
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
    QuestExame exame;
    QuestExame2 exame2;
    FichaIdentificacao ficha;
    HttpSession sessao = request.getSession(); 
     
    
    exame = (QuestExame)sessao.getAttribute("EXAME");
    exame2 = (QuestExame2)sessao.getAttribute("EXAME2");
    ficha = (FichaIdentificacao) sessao.getAttribute("FICHA");
    
    if(exame == null || exame2 == null){
    
        response.setContentType("text/html");
        PrintWriter pw=response.getWriter();
        pw.println("<script type=\"text/javascript\">");
        pw.println("alert('Primeiro, preencha o Exame Físico.');");
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
    <section class="border rounded border-dark shadow-lg" style="background: #ffffff;margin-left: 30px;margin-right: 30px;margin-top: 10px;">
        <div class="container" style="padding: 9px;">
            <h1 class="border rounded" style="text-align: center;font-size: 30px;padding: 16px;background: rgba(152,149,150,0.2);">EXAME FÍSICO<br></h1>
        </div>
        <div class="container">
            <div class="row">
                <div class="col">
                    <form>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col"><label style="font-weight: bold;">Paciente:&nbsp;</label><label><%= ficha.getNome() %></label></div>
                                <div class="col"><label style="font-weight: bold;">CPF:&nbsp;</label><label><%= ficha.getCpf() %></label></div>
                            </div>
                            <div class="form-row">
                                <div class="col"><label>Lábios:&nbsp;&nbsp;</label><label><%=exame.getLabio() %></label></div>
                                <div class="col"><label>Mucosa Jugal:&nbsp;&nbsp;</label><label><%=exame.getMucosa() %></label></div>
                            </div>
                            <div class="form-row">
                                <div class="col"><label>Língua:&nbsp;&nbsp;</label><label><%=exame.getLingua() %></label></div>
                                <div class="col"><label>Soalho da boca:&nbsp;&nbsp;</label><label><%=exame.getBoca() %></label></div>
                            </div>
                            <div class="form-row">
                                <div class="col"><label>Palato duro:&nbsp;&nbsp;</label><label><%=exame.getPalato() %></label></div>
                                <div class="col"><label>Garganta:&nbsp;&nbsp;</label><label><%=exame.getGarganta() %></label></div>
                            </div>
                            <div class="form-row">
                                <div class="col"><label>Palato mole:&nbsp;&nbsp;</label><label><%=exame.getPalato_mole() %></label></div>
                                <div class="col"><label>Mucosa Alveolar:&nbsp;&nbsp;</label><label><%=exame.getAlveolar() %></label></div>
                            </div>
                            <div class="form-row">
                                <div class="col"><label>Gengivas:&nbsp;&nbsp;</label><label><%=exame.getGengiva() %></label></div>
                                <div class="col"><label>Glândulas Salivares:&nbsp;&nbsp;</label><label><%=exame.getGlandula() %></label></div>
                            </div>
                            <div class="form-row">
                                <div class="col"><label>Linfonodos:&nbsp;&nbsp;</label><label><%=exame.getLinfonodos() %></label></div>
                                <div class="col"><label>ATM:&nbsp;&nbsp;</label><label><%=exame.getAtm() %></label></div>
                            </div>
                            <div class="form-row">
                                <div class="col"><label>Músculos Mastigadores:&nbsp;&nbsp;</label><label><%=exame.getMusculo() %></label></div>
                                <div class="col"><label>Oclusão:&nbsp;&nbsp;</label><label><%=exame.getOclusao() %></label></div>
                            </div>
                            <div class="form-row">
                                <div class="col"><label>Alterações encontradas:&nbsp;&nbsp;</label><label><%=exame2.getAlteracao() %></label></div>
                            </div>
                            <div class="form-row">
                                <div class="col"><label class="col-form-label">PRESSÃO ARTERIAL:</label></div>
                            </div>
                            <div class="form-row">
                                <div class="col"><label>Máxima:&nbsp;</label><label><%=exame2.getPressaomin() %></label><label>&nbsp;mmHG</label></div>
                            </div>
                            <div class="form-row">
                                <div class="col"><label>Mínima:&nbsp;&nbsp;</label><label><%=exame2.getPressaomax() %></label><label>&nbsp;mmHG</label></div>
                            </div>
                            <div class="form-row">
                                <div class="col"><label>Diagnóstico presuntivo:&nbsp;&nbsp;</label><label><%=exame2.getDiagpresuntivo() %></label></div>
                            </div>
                            <div class="form-row">
                                <div class="col"><label>Exames complementares:&nbsp;&nbsp;</label><label><%=exame2.getExamecompl() %></label></div>
                            </div>
                            <div class="form-row">
                                <div class="col"><label>Diagnóstico definitivo:&nbsp;&nbsp;</label><label><%=exame2.getDiagdef() %></label></div>
                            </div>
                            <div class="form-row">
                                <div class="col"><label>Tratamento/Proservação:&nbsp;&nbsp;</label><label><%=exame2.getTratamento() %></label></div>
                            </div>
                            <div class="form-row">
                                <div class="col"><label>Plano de Tratamento:&nbsp;&nbsp;</label><label><%=exame2.getPlanotrat() %></label></div>
                            </div>
                            <% if (exame2.getAtendimentourg() != null) { %>
                            <div class="form-row">
                                <div class="col"><label class="col-form-label">Atendimento de Urgência (Estágio Sup. em Clínica Odontológica Integrada – URGÊNCIA)</label></div>
                            </div>
                            <%}%>
                            <div class="form-row">
                                <div class="col"><label>Medicação:&nbsp;&nbsp;</label><label><%=exame2.getMedicacao() %></label></div>
                            </div>
                            <% if (exame2.getRemedios() != null ) { %>
                            <div class="form-row">
                                <div class="col"><label class="col-form-label"><%= exame2.getRemedios() %></label></div>
                            </div>
                            <%}%>
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
