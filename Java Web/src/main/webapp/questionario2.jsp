<%@page import="br.com.DTO.UsuarioDTO"%>
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
UsuarioDTO usuario;
HttpSession sessao = request.getSession();

usuario = (UsuarioDTO)sessao.getAttribute("usuario");

%>

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
    <section class="border rounded border-dark shadow-lg" style="background: #ffffff;margin: 10px 30px;margin-right: 30px;margin-left: 30px;">
        <div class="container" style="padding: 9px;">
            <h1 class="border rounded" style="text-align: center;font-size: 30px;padding: 16px;background: rgba(152,149,150,0.2);">QUESTION??RIO DE SA??DE:<br>CRIAN??A E ADULTO<br></h1>
        </div>
        <div class="container">
            <div class="row">
                <div class="col">
                    <form action="ServQuest2" method="post">
                        <div class="form-group">
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><label class="col-form-label"><strong>3.2)&nbsp;Question??rio complementar infantil - ODONTOPEDIATRIA</strong><br></label></div>
                            </div>
                            <div class="form-row" style="padding: 3px;padding-left: 18px;">
                                <div class="col"><label>1- Hist??ria da gesta????o:</label>
                                    <textarea class="form-control form-control-sm" name="historiages" rows="4"></textarea></div>
                            </div>
                            <div class="form-row" style="padding: 3px;padding-left: 18px;">
                                <div class="col"><label class="col-form-label">2-&nbsp;Nasceu de parto:</label></div>
                            </div>
                            <div class="form-row" style="padding: 3px;padding-left: 18px;">
                                <div class="col">
                                    <div class="form-check" style="margin: 8PX;"><input class="form-check-input" type="checkbox" id="formCheck-1" name="parto" value="NORMAL">
                                        <label class="form-check-label" for="formCheck-1">Normal</label></div>
                                    <div class="form-check" style="margin: 8PX;"><input class="form-check-input" type="checkbox" id="formCheck-2" name="parto" value="A F??RCEPS">
                                        <label class="form-check-label" for="formCheck-2">A f??rceps</label></div>
                                    <div class="form-check" style="margin: 8PX;"><input class="form-check-input" type="checkbox" id="formCheck-3" name="parto" value="CESARIANA">
                                        <label class="form-check-label" for="formCheck-3">Cesariana</label></div>
                                </div>
                            </div>
                            <div class="form-row" style="padding: 3px;padding-left: 18px;">
                                <div class="col-md-6"><label class="col-form-label">3-&nbsp;A crian??a teve algum problema no parto?</label></div>
                            </div>
                            <div class="form-row" style="padding: 3px;padding-left: 18px;">
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-4" name="prob" value="SIM">
                                        <label class="form-check-label" for="formCheck-4">SIM</label></div>
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-5" name="prob" value="N??O">
                                        <label class="form-check-label" for="formCheck-5">N??O</label></div>
                                </div>
                            </div>
                            <div class="form-row" style="padding: 3px;padding-left: 18px;">
                                <div class="col-md-2"><label class="col-form-label">4-&nbsp;A amamenta????o foi:</label></div>
                                <div class="col-md-2">
                                    <div class="form-check" style="margin: 8PX;"><input class="form-check-input" type="checkbox" id="formCheck-6" name="amame" value="NORMAL">
                                        <label class="form-check-label" for="formCheck-6">Normal</label></div>
                                </div>
                                <div class="col">
                                    <div class="form-check" style="margin: 8PX;"><input class="form-check-input" type="checkbox" id="formCheck-7" name="amame" value="MAMADEIRA">
                                        <label class="form-check-label" for="formCheck-7">Mamadeira</label></div>
                                </div>
                            </div>
                            <div class="form-row" style="padding: 3px;padding-left: 18px;">
                                <div class="col"><label class="col-form-label">at?? a idade de:&nbsp;</label></div>
                                <div class="col-md-10"><input class="form-control form-control-sm" type="text" name="idadeamame" style="width: 250px;"></div>
                            </div>
                            <div class="form-row" style="padding: 3px;padding-left: 18px;">
                                <div class="col"><label class="col-form-label">5-&nbsp;J?? lhe foi dito para n??o tomar anestesia local?</label></div>
                            </div>
                            <div class="form-row" style="padding: 3px;padding-left: 18px;">
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-8" name="anes" value="SIM">
                                        <label class="form-check-label" for="formCheck-8">SIM</label></div>
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-9" name="anes" value="N??O">
                                        <label class="form-check-label" for="formCheck-9">N??O</label></div>
                                </div>
                            </div>
                            <div class="form-row" style="padding: 3px;padding-left: 18px;">
                                <div class="col"><label class="col-form-label">6- J?? teve ou viveu com algu??m que tivesse doen??a grave e contagiosa?</label></div>
                            </div>
                            <div class="form-row" style="padding: 3px;padding-left: 18px;">
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-10" name="grave" value="SIM">
                                        <label class="form-check-label" for="formCheck-10">SIM</label></div>
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-11" name="grave" value="N??O">
                                        <label class="form-check-label" for="formCheck-11">N??O</label></div>
                                </div>
                            </div>
                            <div class="form-row" style="padding: 3px;padding-left: 18px;">
                                <div class="col"><label class="col-form-label">7-&nbsp;A crian??a j?? foi vacinada?</label></div>
                            </div>
                            <div class="form-row" style="padding: 3px;padding-left: 18px;">
                                <div class="col">
                                    <div class="form-check" style="margin: 8PX;"><input class="form-check-input" type="checkbox" id="formCheck-12" name="vac" value="SIM">
                                        <label class="form-check-label" for="formCheck-12">SIM</label></div>
                                    <div class="form-check" style="margin: 8PX;"><input class="form-check-input" type="checkbox" id="formCheck-13" name="vac" value="N??O">
                                        <label class="form-check-label" for="formCheck-13">N??O</label></div>
                                </div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col offset-md-0 text-center"><label class="col-form-label"><strong>CONDUTA DA CRIAN??A</strong></label></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><label class="col-form-label">Durante os 2 primeiros anos de vida:</label></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-24" name="sentou" value="0">
                                        <label class="form-check-label" for="formCheck-14">Sentou-se</label></div>
                                </div>
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-25" name="engatinhou" value="1">
                                        <label class="form-check-label" for="formCheck-14">Engatinhou</label></div>
                                </div>
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-53" name="andou" value="2">
                                        <label class="form-check-label" for="formCheck-14">Andou</label></div>
                                </div>
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-54" name="falou" value="3">
                                        <label class="form-check-label" for="formCheck-14">Falou</label></div>
                                </div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><label class="col-form-label">No lar e na escola: teve alguma dificuldade no aprendizado?</label></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-55" name="aprend" value="SIM">
                                        <label class="form-check-label" for="formCheck-18">SIM</label></div>
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-56" name="aprend" value="N??O">
                                        <label class="form-check-label" for="formCheck-19">N??O</label></div>
                                </div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><label class="col-form-label">Estado an??mico:</label></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-57" name="estadoa" value="ALEGRE">
                                        <label class="form-check-label" for="formCheck-20">Alegre</label></div>
                                </div>
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-58" name="estadoa" value="TRISTE">
                                        <label class="form-check-label" for="formCheck-20">Triste</label></div>
                                </div>
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-59" name="estadoa" value="TIMIDO">
                                        <label class="form-check-label" for="formCheck-20">T??mido</label></div>
                                </div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-60" name="estadoa" value="TRANQUILO">
                                        <label class="form-check-label" for="formCheck-20">Tranquilo</label></div>
                                </div>
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-61" name="estadoa" value="INQUIETO">
                                        <label class="form-check-label" for="formCheck-20">Inquieto</label></div>
                                </div>
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-62" name="estadoa" value="ASSUSTADO">
                                        <label class="form-check-label" for="formCheck-20">Assustado</label></div>
                                </div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><label class="col-form-label">Tem sono:</label></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-63" name="sono" value="TRANQUILO">
                                        <label class="form-check-label" for="formCheck-26">Tranquilo</label></div>
                                </div>
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-64" name="sono" value="INTRANQUILO">
                                        <label class="form-check-label" for="formCheck-26">Intranquilo</label></div>
                                </div>
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-65" name="sono" value="TERROR">
                                        <label class="form-check-label" for="formCheck-26">Terror noturno</label></div>
                                </div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-66" name="sono" value="SONAMBULISMO">
                                        <label class="form-check-label" for="formCheck-26">Sonambulismo</label></div>
                                </div>
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-67" name="sono" value="INSONIA">
                                        <label class="form-check-label" for="formCheck-26">Ins??nia</label></div>
                                </div>
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-68" name="sono" value="PESSADELO">
                                        <label class="form-check-label" for="formCheck-26">Pesadelos</label></div>
                                </div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><label class="col-form-label">Conduta psicomotora:</label></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-69" name="conduta" value="POSTURA NORMAL">
                                        <label class="form-check-label" for="formCheck-32">Postura normal</label></div>
                                </div>
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-70" name="conduta" value="POSTURA ALTERADA">
                                        <label class="form-check-label" for="formCheck-32">Postura alterada</label></div>
                                </div>
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-71" name="conduta" value="FONA????O NORMAL">
                                        <label class="form-check-label" for="formCheck-32">Fona????o normal</label></div>
                                </div>
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-72" name="conduta" value="DIST??RBIOS DA FALA">
                                        <label class="form-check-label" for="formCheck-32">Dist??rbios da fala</label></div>
                                </div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-73" name="conduta" value="ALGUMA PARALISIA">
                                        <label class="form-check-label" for="formCheck-33">Alguma paralisia</label></div>
                                </div>
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-74" name="conduta" value="ENURESE NOTURNA">
                                        <label class="form-check-label" for="formCheck-32">Enurese noturna</label></div>
                                </div>
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-75" name="conduta" value="DESCONTROLE DOS ESF??NCTERES">
                                        <label class="form-check-label" for="formCheck-32">Descontrole dos esf??ncteres</label></div>
                                </div>
                                <div class="col"></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><label class="col-form-label">Alimenta????o:</label></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col-md-2">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-76" name="alimentacao" value="REJEITA">
                                        <label class="form-check-label" for="formCheck-39">Rejeita</label></div>
                                </div>
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-77" name="alimentacao" value="ALIMENTA-SE NORMALMENTE">
                                        <label class="form-check-label" for="formCheck-39">Alimenta-se normalmente</label></div>
                                </div>
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-78" name="alimentacao" value="SUPRA ALIMENTA-SE">
                                        <label class="form-check-label" for="formCheck-39">Supra alimenta-se</label></div>
                                </div>
                                <div class="col"></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><label class="col-form-label">Sociabilidade:</label></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-79" name="relacao" value="ISOLADA">
                                        <label class="form-check-label" for="formCheck-42">Isolada</label></div>
                                </div>
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-80" name="relacao" value="AGRESSIVA">
                                        <label class="form-check-label" for="formCheck-42">Agressiva</label></div>
                                </div>
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-81" name="relacao" value="RELA????ES NORMAIS">
                                        <label class="form-check-label" for="formCheck-42">Rela????es normais</label></div>
                                </div>
                                <div class="col"></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><label class="col-form-label">Apresenta alguma patologia de conduta:</label></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-82" name="patologia" value="TIQUES">
                                        <label class="form-check-label" for="formCheck-45">Tiques</label></div>
                                </div>
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-83" name="patologia" value="FOBIAS">
                                        <label class="form-check-label" for="formCheck-45">Fobias</label></div>
                                </div>
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-84" name="patologia" value="ANSIEDADE">
                                        <label class="form-check-label" for="formCheck-45">Ansiedade</label></div>
                                </div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-85" name="patologia" value="MEDO">
                                        <label class="form-check-label" for="formCheck-45">Medo</label></div>
                                </div>
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-86" name="patologia" value="BIRRA">
                                        <label class="form-check-label" for="formCheck-45">Birra</label></div>
                                </div>
                                <div class="col">
                                    <div class="form-check" style="margin: 8px;"><input class="form-check-input" type="checkbox" id="formCheck-87" name="patologia" value="CI??MES">
                                        <label class="form-check-label" for="formCheck-45">Ci??mes</label></div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col"><label>Observa????es:</label><textarea class="form-control form-control-sm" name="obs" rows="4"></textarea></div>
                            </div>
                            <div class="form-row" style="padding: 3px;padding-top: 12px;">
                                <div class="col"><button class="btn btn-primary" type="submit">AVAN??AR</button></div>
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
