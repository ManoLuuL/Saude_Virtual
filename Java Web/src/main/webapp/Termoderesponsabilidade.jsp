<%@page import="java.io.PrintWriter"%>
<%@page import="dominion.FcIdFiliacao"%>
<%@page import="dominion.FichaIdentificacao"%>
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
    FichaIdentificacao ficha;
    FcIdFiliacao pais;
    HttpSession sessao = request.getSession(); 
    
    
    ficha = (FichaIdentificacao) sessao.getAttribute("FICHA");
    pais = (FcIdFiliacao) sessao.getAttribute("PAIS");
    
    if(ficha == null || pais == null){
        response.setContentType("text/html");
        PrintWriter pw=response.getWriter();
        pw.println("<script type=\"text/javascript\">");
        pw.println("alert('Primeiro, preencha a Ficha de Identifica????o.');");
        pw.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/Identificacao.jsp");
        rd.include(request, response);

    }
%>

<body style="background: url(&quot;assets/img/padrao-sem-emenda-colorido-pastel-para-cuidados-dentarios_1284-44406.jpg&quot;);">
    <nav class="navbar navbar-light navbar-expand-md navigation-clean-button" style="color: #222222;">
        <div class="container"><img src="assets/img/Icon.png" style="width: 60px;height: 60px;"><a class="navbar-brand text-left border rounded d-md-flex justify-content-md-center" style="font-family: Montserrat, sans-serif;margin-left: 14px;">Sa??de Digital</a><button class="navbar-toggler" data-toggle="collapse"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button></div>
    </nav>
    <section class="border rounded border-dark shadow-lg" style="background: #ffffff;margin-left: 30px;margin-right: 30px;margin-top: 10px;">
        <div class="container" style="padding: 9px;">
            <h1 class="border rounded" style="text-align: center;font-size: 30px;padding: 16px;background: rgba(152,149,150,0.2);"><strong>TERMO DE ESCLARECIMENTO/INFORMA????ES E RESPONSABILIDADE COMPARTILHADA DAS PARTES SOBRE A EXECU????O DE TRATAMENTO ODONTOL??GICO</strong><br></h1>
        </div>
        <div class="container">
            <div class="row">
                <div class="col"><label class="col-form-label">Por este instrumento de esclarecimento e informa????es sobre o tratamento odontol??gico a ser realizado.</label></div>
            </div>
            <div class="row">
                <div class="col"><label>Eu/Respons??vel:&nbsp;<br></label><label><%=ficha.getNome() %></label></div>
                <div class="col"><label>&nbsp;Portador do RG n??&nbsp;</label><label><%=ficha.getRg() %></label></div>
            </div>
            <div class="row">
                <div class="col"><label>Inscrito no CPF sob n??&nbsp;</label><label><%=ficha.getCpf() %></label><label>Tomo ci??ncia que tenho a responsabilidade compartilhada com o IASCJ-Universidade do Sagrado Cora????o sobre o mesmo. Estou ciente que deverei seguir rigorosamente algumas regras para o bom andamento, finaliza????o e preserva????o do tratamento como:&nbsp;</label></div>
            </div>
            <div class="row">
                <div class="col"><label class="col-form-label">1- Comparecer a todas as consultas agendadas em todas as especialidades envolvidas no tratamento.<br><br>2- Avisar com 48 horas de anteced??ncia o respons??vel pelo agendamento do atendimento caso n??o possa comparecer. Caso uma situa????o de emerg??ncia ocorra durante as 48 horas que antecedem o tratamento, deverei justificar atrav??s de atestado ou documento que revelam o real motivo de minha falta.<br><br>3- Zelar pela manuten????o de pr??teses odontol??gicas fixas ou moveis, placas de mordidas, aparelhos ortod??nticos que venha a fazer uso, n??o quebrando ou<br><br>danificando quaisquer acess??rios.<br><br>4- Seguir todas as orienta????es de cuidados p??s-atendimentos cir??rgicos, restauradores e prot??ticos fornecidos pela equipe respons??vel pelo tratamento.<br><br>5- Seguir as orienta????es dadas sobre a manuten????o di??ria de higiene dos tecidos buco-dentais.<br><br>6- Comparecer as consultas de controle ap??s o termino do tratamento.<br><br>7- Quando tratamento for de pr??tese sobre implante, pr??tese fixa, pr??tese remov??vel, pr??tese total, compreendem ser uma obriga????o de meio, restabelecendo<br><br>a fun????o que foi perdida com a perda dos dentes.<br><br>8- Tenho ci??ncia do limite toler??vel de apenas duas faltas, uma vez que coloco em comprometimento a aula do aluno e do professor<br><br>Declaro sob as penas da lei, que:<br><br>- Ter sido submetido a um question??rio de avalia????o biom??dica, no qual foram pesquisados e exclu??dos poss??veis fatores sist??micos que possam comprometer ou contra indicar o tratamento proposto, bem como oferecer riscos ?? minha sa??de geral;<br><br>- Ter sido informado de que n??o existem garantias absolutas e que o sucesso do presente tratamento dependera de uma manuten????o regular;<br><br>- Tenho pleno conhecimento de que terei meu tratamento automaticamente cancelado, seja em qual for, caso n??o cumpra corretamente as regras aqui estabelecidas,<br><br>assumindo todos os riscos e responsabilidade por minha neglig??ncia e imprud??ncia;<br><br>- Consinto com plano de tratamento apresentado, decorrente de particularidades inerentes ao meu caso;<br><br>- Autorizo que todas as radiografias, fotografias, modelos, desenho, hist??ricos de antecedentes familiares, resultados de exames cl??nicos e laboratoriais e quaisquer outras informa????es concernentes ao planejamento e tratamento que comp??e meu prontu??rio, sejam retidos e utilizados para fins de ensino e divulga????o em todo e qualquer meio de comunica????o/ Publica????es cientificas nacionais e internacionais, respeitado o C??digo de ??tica institucional e da profiss??o;<br></label></div>
            </div>
            <div class="row">
                <div class="col"><label class="col-form-label"><br>- Recebi informa????es sobre os poss??veis riscos e complica????es decorrentes da cirurgia, medicamentos e anestesia. Tais complica????es incluem dor, edema (incha??os), infec????es, hematomas das estruturas bucais (manchas arroxeadas) e tamb??m poss??veis danos a estrutura ??ssea, patologias sinusais (sinusites), atraso na cicatriza????o, rea????es al??rgicas ??s drogas e aos medicamentos utilizados, at?? a poss??vel perda do tratamento proposto, sendo que na eventualidade disto acontecer, deverei assumir os eventuais custos para um novo tratamento;<br><br>- Se necess??rio tratamento endod??ntico observado pelo cirurgi??o-dentista, ap??s finaliza-lo nesta cl??nica, devo dar continuidade no tratamento restaurador com qualquer outro profissional/ outra cl??nica de odontologia o mais r??pido poss??vel, n??o dependendo mais da USC, uma vez que tal tratamento ?? necess??rio e sua n??o realiza????o acarretara preju??zos ao dente tratado e a minha sa??de;<br><br>- Em caso de tratamento de URG??NCIA, tenho conhecimento que os procedimentos ser??o os necess??rios apenas para o atendimento da urg??ncia e que deverei providenciar sua continuidade/finaliza????o do tratamento e/ou outros procedimentos, o mais r??pido poss??vel, com qualquer outro profissional/outra cl??nica de odontologia;<br><br>- Ter sido orientado e me responsabilizo por procurar o mais breve poss??vel qualquer outro profissional da ??rea para dar continuidade e/ou finalizar qualquer tratamento iniciado nas cl??nicas de odontologia da Universidade do Sagrado Cora????o, n??o dependendo apenas das disponibilidades de vagas dispon??veis na universidade;<br><br>- Tenho ci??ncia da grade/hor??rio das disciplinas e seus respectivos atendimentos do curso de odontologia da USC e que devo me adequar aos hor??rios dispon??veis do mesmo, bem como aguardar a disponibilidade de vagas para atendimento na universidade, uma vez que essas s??o limitadas e devo respeitar seus crit??rios preestabelecidos, tais como a lista de espera e que s??o selecionados casos de interesse de aprendizado/pesquisa estipulado pelo professor e/ou aluno e a pedido dos mesmos;<br><br>- Compreendo se tratar de uma institui????o de ensino e tenho conhecimento das limita????es de datas e hor??rios do per??odo letivo e que o atendimento dentro da universidade ?? feito apenas nesse per??odo, podendo variar em semanas de provas, avalia????es e eventos, sendo encerrados nas f??rias letivas, finais de semana, feriados, entre outros, me tornando respons??vel por procurar tratamento externo a Universidade, independente do caso.<br><br>- Fui informado que todas as informa????es contidas em meu prontu??rio dever??o permanecer no arquivo pelo prazo legal da Institui????o de Ensino, podendo ser copiada para os fins acima autorizados e/ou meu interesse ou de minha fam??lia em particular;<br><br>Por este instrumento de autoriza????o por mim assinado e acima qualificado, dou pleno consentimento ao IASCJ- Universidade do Sagrado Cora????o para, por interm??dio de seus discentes, doentes (alunos e professores) e funcion??rios do Curso de Odontologia, gradua????o e p??s-gradua????o, fazer diagn??stico, ap??s a realiza????o ou solicita????o de exames cl??nicos e/ou de laborat??rios, planejamento e execu????o do meu tratamento, de acordo com os conhecimentos enquadrados no campo da especialidade, dentro das disciplinas acad??micas e materiais existentes.<br><br></label></div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-1"><label class="form-check-label" for="formCheck-1">Declaro ainda que efetuei a leitura de toda esta autoriza????o, aceito e concordo com o acima exposto.</label></div>
                </div>
            </div>
            <div class="row" style="margin-top: 12px;margin-bottom: 12px;">
                <div class="col"><label>Bauru,</label><label>Label</label><label>&nbsp;de&nbsp;</label><label>Label</label><label>&nbsp;de&nbsp;</label><label>Label</label></div>
            </div>
            <div class="row" style="margin-top: 12px;margin-bottom: 12px;">
                <div class="col"><label>CPF:&nbsp;</label><label><%=ficha.getCpf() %></label></div>
                <div class="col"><label>RG:&nbsp;</label><label><%=ficha.getRg() %></label></div>
            </div>
            <div class="row" style="margin-top: 12px;margin-bottom: 12px;">
                <div class="col"></div>
            </div>
            <div class="row" style="margin-top: 12px;margin-bottom: 0px;">
                <div class="col"><label class="col-form-label">______________________________________</label></div>
            </div>
            <div class="row">
                <div class="col"><label class="col-form-label">Assinatura do Paciente/Respons??vel</label></div>
            </div>
            <div class="row" style="padding: 5px;">
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
