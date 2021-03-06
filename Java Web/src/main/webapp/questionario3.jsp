<%@page import="br.com.DTO.UsuarioDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

    <%
        UsuarioDTO usuario;
        HttpSession sessao = request.getSession();

        usuario = (UsuarioDTO) sessao.getAttribute("usuario");

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
        <div class="container"><img src="assets/img/Icon.png" style="width: 60px;height: 60px;"><a class="navbar-brand" href="indexdentista.html" style="font-family: Montserrat, sans-serif;margin-left: 14px;">Sa??de Digital</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-2"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-2">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link active" href="IndexDentista.jsp" style="color: rgb(0,0,0);font-size: 15px;font-family: Alata, sans-serif;">P??gina Inicial</a></li>
                    <li class="nav-item"><a class="nav-link" href="#" style="color: rgb(0,0,0);font-size: 15px;font-family: Alata, sans-serif;">Contato</a></li>
                    <li class="nav-item dropdown"><a class="dropdown-toggle nav-link" aria-expanded="false" data-toggle="dropdown" href="#" style="color: rgb(0,0,0);font-size: 15px;font-family: Alata, sans-serif;">Sobre</a>
                        <div class="dropdown-menu"><a class="dropdown-item" href="#">First Item</a><a class="dropdown-item" href="#">Second Item</a><a class="dropdown-item" href="#">Third Item</a></div>
                    </li>
                </ul><span class="navbar-text actions"> </span><label class="text-uppercase border rounded border-white mr-auto"><label>Bem Vindo Usuario:&nbsp;</label><%= usuario.getUsuario() %></label>
            </div>
        </div>
    </nav>
        <section class="border rounded border-dark shadow-lg" style="margin-right: 30px;margin-left: 30px;background: #ffffff;margin-top: 10px;margin-bottom: 10px;">
            <div class="container" style="padding: 9px;">
                <h1 class="border rounded" style="text-align: center;font-size: 30px;padding: 16px;background: rgba(152,149,150,0.2);">QUESTION??RIO DE SA??DE: <br>CRIAN??A E ADULTO<br></h1>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col">
                        <form action="ServQuest3" method="post">
                            <div class="form-group">
                                <div class="form-row" style="padding: 3px;padding-top: 10px;">
                                    <div class="col"><label class="col-form-label"><strong>4-&nbsp;EXAME F??SICO</strong></label></div>
                                </div>
                                <div class="form-row" style="padding: 3px;padding-top: 10px;padding-bottom: 9px;padding-left: 18px;">
                                    <div class="col"><label>1-&nbsp;&nbsp;L??bios</label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-2" name="labio" value="NORMAL">
                                            <label class="form-check-label" for="formCheck-2">NORMAL</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-1" name="labio" value="ALTERADO">
                                            <label class="form-check-label" for="formCheck-1">ALTERADO</label></div>
                                    </div>
                                    <div class="col"><label>2-&nbsp;&nbsp;Mucosa Jugal</label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-3" name="mucosa" value="NORMAL">
                                            <label class="form-check-label" for="formCheck-2">NORMAL</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-4" name="mucosa" value="ALTERADO">
                                            <label class="form-check-label" for="formCheck-1">ALTERADO</label></div>
                                    </div>
                                    <div class="col"><label>3-&nbsp;&nbsp;L??ngua</label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-5" name="lingua" value="NORMAL">
                                            <label class="form-check-label" for="formCheck-2">NORMAL</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-6" name="lingua" value="ALTERADO">
                                            <label class="form-check-label" for="formCheck-1">ALTERADO</label></div>
                                    </div>
                                    <div class="col"><label>4-&nbsp;&nbsp;Soalho da boca</label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-7" name="boca" value="NORMAL">
                                            <label class="form-check-label" for="formCheck-2">NORMAL</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-8" name="boca" value="ALTERADO">
                                            <label class="form-check-label" for="formCheck-1">ALTERADO</label></div>
                                    </div>
                                </div>
                                <div class="form-row" style="padding: 3px;padding-top: 10px;padding-bottom: 9px;padding-left: 18px;">
                                    <div class="col"><label>5-&nbsp;&nbsp;Palato duro</label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-9" name="palato" value="NORMAL">
                                            <label class="form-check-label" for="formCheck-2">NORMAL</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-10" name="palato" value="ALTERADO">
                                            <label class="form-check-label" for="formCheck-1">ALTERADO</label></div>
                                    </div>
                                    <div class="col"><label>6-&nbsp;&nbsp;Garganta</label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-11" name="garganta" value="NORMAL">
                                            <label class="form-check-label" for="formCheck-2">NORMAL</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-12" name="garganta" value="ALTERADO">
                                            <label class="form-check-label" for="formCheck-1">ALTERADO</label></div>
                                    </div>
                                    <div class="col"><label>7-&nbsp;&nbsp;Palato mole</label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-13" name="palmole" value="NORMAL">
                                            <label class="form-check-label" for="formCheck-2">NORMAL</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-14" name="palmole" value="ALTERADO">
                                            <label class="form-check-label" for="formCheck-1">ALTERADO</label></div>
                                    </div>
                                    <div class="col"><label>8- Mucosa Alveolar</label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-15" name="alveolar" value="NORMAL">
                                            <label class="form-check-label" for="formCheck-2">NORMAL</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-16" name="alveolar" value="ALTERADO">
                                            <label class="form-check-label" for="formCheck-1">ALTERADO</label></div>
                                    </div>
                                </div>
                                <div class="form-row" style="padding: 3px;padding-top: 10px;padding-bottom: 9px;padding-left: 18px;">
                                    <div class="col"><label>9- Gengivas</label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-17" name="gengiva" value="NORMAL">
                                            <label class="form-check-label" for="formCheck-2">NORMAL</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-18" name="gengiva" value="ALTERADO">
                                            <label class="form-check-label" for="formCheck-1">ALTERADO</label></div>
                                    </div>
                                    <div class="col"><label>10- Gl??ndulas Salivares</label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-19" name="glandula" value="NORMAL">
                                            <label class="form-check-label" for="formCheck-2">NORMAL</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-20" name="glandula" value="ALTERADO">
                                            <label class="form-check-label" for="formCheck-1">ALTERADO</label></div>
                                    </div>
                                    <div class="col"><label>11- Linfonodos</label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-21" name="linfonodos" value="NORMAL">
                                            <label class="form-check-label" for="formCheck-2">NORMAL</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-22" name="linfonodos" value="ALTERADO">
                                            <label class="form-check-label" for="formCheck-1">ALTERADO</label></div>
                                    </div>
                                    <div class="col"><label>12- ATM</label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-29" name="atm" value="NORMAL">
                                            <label class="form-check-label" for="formCheck-2">NORMAL</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-30" name="atm" value="ALTERADO">
                                            <label class="form-check-label" for="formCheck-1">ALTERADO</label></div>
                                    </div>
                                </div>
                                <div class="form-row" style="padding: 3px;padding-top: 10px;padding-bottom: 9px;padding-left: 18px;">
                                    <div class="col"><label>13- M??sculos Mastigadores</label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-25" name="musculo" value="NORMAL">
                                            <label class="form-check-label" for="formCheck-2">NORMAL</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-26" name="musculo" value="ALTERADO">
                                            <label class="form-check-label" for="formCheck-1">ALTERADO</label></div>
                                    </div>
                                    <div class="col"><label>14- Oclus??o</label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-27" name="oclusao" value="NORMAL">
                                            <label class="form-check-label" for="formCheck-2">NORMAL</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-28" name="oclusao" value="ALTERADO">
                                            <label class="form-check-label" for="formCheck-1">ALTERADO</label></div>
                                    </div>
                                    <div class="col"></div>
                                    <div class="col"></div>
                                </div>
                                <div class="form-row" style="padding: 3px;padding-top: 10px;">
                                    <div class="col"><label>Altera????es encontradas:</label><textarea class="form-control form-control-sm" rows="6" name="alteracao"></textarea></div>
                                </div>
                                <div class="form-row" style="padding: 3px;padding-top: 0px;padding-bottom: 13px;">
                                    <div class="col"><label>Press??o Arterial</label><input class="form-control form-control-sm" type="text" style="margin: 5PX;width: 150px;" name="pressaomin" placeholder="M??nima em mmHG"><input class="form-control form-control-sm" type="text" style="margin: 5PX;width: 150px;" placeholder="M??xima em mmHG" name="pressaomax"></div>
                                </div>
                                <div class="form-row" style="padding: 3px;">
                                    <div class="col"><label>Diagn??stico presuntivo:<br></label><textarea class="form-control form-control-sm" name="diagpresu" rows="4"></textarea></div>
                                </div>
                                <div class="form-row" style="padding: 3px;">
                                    <div class="col"><label>Exames complementares:<br></label><textarea class="form-control form-control-sm" name="examecomp" rows="4"></textarea></div>
                                </div>
                                <div class="form-row" style="padding: 3px;">
                                    <div class="col"><label>Diagn??stico definitivo:<br></label><textarea class="form-control form-control-sm" name="diagdef" rows="4"></textarea></div>
                                </div>
                                <div class="form-row" style="padding: 3px;">
                                    <div class="col"><label>Tratamento/Proserva????o:<br></label><textarea class="form-control form-control-sm" name="tratamento" rows="4"></textarea></div>
                                </div>
                                <div class="form-row" style="padding: 3px;">
                                    <div class="col"><label>Plano de Tratamento:<br></label><textarea class="form-control form-control-sm" name="planotratamento" rows="4"></textarea></div>
                                </div>
                                <div class="form-row" style="padding: 3px;padding-top: 7px;">
                                    <div class="col">
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-32" name="atendimentourg"><label class="form-check-label" for="formCheck-23">Atendimento de Urg??ncia (Est??gio Sup. em Cl??nica Odontol??gica Integrada ???<strong> URG??NCIA</strong>)<br></label></div>
                                    </div>
                                </div>
                                <div class="form-row" style="padding: 3px;">
                                    <div class="col"><label>Medica????o<br></label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-33" name="medicacao" value="SIM">
                                            <label class="form-check-label" for="formCheck-31">SIM</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-34" name="medicacao" value="N??O">
                                            <label class="form-check-label" for="formCheck-24">N??O</label></div><input class="form-control form-control-sm" type="text" name="remedios" placeholder="SE SIM QUAL?" style="width: 300PX;">
                                    </div>
                                </div>
                                <div class="form-row" style="padding: 3px;padding-top: 12px;">
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
