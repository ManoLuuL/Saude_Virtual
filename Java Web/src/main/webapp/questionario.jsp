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

    <body style="transform: translate(0px);background: url(&quot;assets/img/padrao-sem-emenda-colorido-pastel-para-cuidados-dentarios_1284-44406.jpg&quot;), #ffffff;">
        <nav class="navbar navbar-light navbar-expand-md navigation-clean-button" style="color: #222222;">
            <div class="container"><img src="assets/img/Icon.png" style="width: 60px;height: 60px;"><a class="navbar-brand" href="indexdentista.html" style="font-family: Montserrat, sans-serif;margin-left: 14px;">Sa??de Digital</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-2"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navcol-2">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item"><a class="nav-link active" href="IndexDentista.jsp" style="color: rgb(0,0,0);font-size: 15px;font-family: Alata, sans-serif;">P??gina Inicial</a></li>
                        <li class="nav-item"><a class="nav-link" href="#" style="color: rgb(0,0,0);font-size: 15px;font-family: Alata, sans-serif;">Contato</a></li>
                        <li class="nav-item dropdown"><a class="dropdown-toggle nav-link" aria-expanded="false" data-toggle="dropdown" href="#" style="color: rgb(0,0,0);font-size: 15px;font-family: Alata, sans-serif;">Sobre</a>
                            <div class="dropdown-menu"><a class="dropdown-item" href="#">First Item</a><a class="dropdown-item" href="#">Second Item</a><a class="dropdown-item" href="#">Third Item</a></div>
                        </li>
                    </ul><span class="navbar-text actions"> </span><label class="text-uppercase border rounded border-white mr-auto"><label>Bem Vindo Usuario:&nbsp;</label><%= usuario.getUsuario()%></label>
                </div>
            </div>
        </nav>
        <section class="border rounded border-dark shadow-lg" style="background: rgb(255,255,255);margin: 10px 30px;margin-left: 30px;margin-right: 30px;">
            <div class="container" style="padding: 9px;">
                <h1 class="border rounded" style="text-align: center;font-size: 30px;padding: 16px;background: rgba(152,149,150,0.2);">QUESTION??RIO DE SA??DE:<br>CRIAN??A E ADULTO<br></h1>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col">
                        <form action="ServQuest1" method="post">
                            <div class="form-group">
                                <div class="form-row">
                                    <div class="col"><label style="font-weight: bold;">Nome do Paciente:&nbsp;</label>
                                        <label>nome</label></div>
                                    <div class="col"><label style="font-weight: bold;">Cadastro:&nbsp;</label>
                                        <label>cadastropaciente</label></div>
                                </div>
                                <div class="form-row">
                                    <div class="col"><label class="col-form-label" style="font-weight: bold;">1) Queixa Principal:</label></div>
                                </div>
                                <div class="form-row">
                                    <div class="col"><input class="form-control form-control-sm" type="text" name="queixa" style="width: 350px;"></div>
                                </div>
                                <div class="form-row">
                                    <div class="col"><label class="col-form-label" style="font-weight: bold;">2) Hist??ria da doen??a atual:<br></label></div>
                                </div>
                                <div class="form-row">
                                    <div class="col"><textarea class="form-control" name="historicodoca" rows="5"></textarea></div>
                                </div>
                                <div class="form-row">
                                    <div class="col"><label class="col-form-label" style="font-weight: bold;">3.1) Question??rio de Sa??de<br></label></div>
                                </div>
                                <div class="form-row" style="padding: 3PX;padding-top: 6px;padding-bottom: 8px;padding-left: 16px;">
                                    <div class="col-md-12 offset-md-0"><label>1-&nbsp;J?? teve hemorragia?<br></label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-41" name="hemor" value="SIM">
                                            <label class="form-check-label" for="formCheck-1">SIM</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-42" name="hemor" value="N??O">
                                            <label class="form-check-label" for="formCheck-2">N??O</label></div>
                                    </div>
                                </div>
                                <div class="form-row" style="padding: 3PX;padding-top: 6px;padding-bottom: 8px;padding-left: 16px;">
                                    <div class="col"><label>2-&nbsp;Sofre(u) de alergia?<br></label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-43" name="alergia" value="SIM">
                                            <label class="form-check-label" for="formCheck-1">SIM</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-44" name="alergia" value="N??O">
                                            <label class="form-check-label" for="formCheck-2">N??O</label></div>
                                    </div>
                                </div>
                                <div class="form-row" style="padding: 3PX;padding-top: 6px;padding-bottom: 8px;padding-left: 16px;">
                                    <div class="col"><label>3- Teve reumatismo infeccioso?<br></label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-45" name="infec" value="SIM">
                                            <label class="form-check-label" for="formCheck-1">SIM</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-46" name="infec" value="N??O">
                                            <label class="form-check-label" for="formCheck-2">N??O</label></div>
                                    </div>
                                </div>
                                <div class="form-row" style="padding: 3PX;padding-top: 6px;padding-bottom: 8px;padding-left: 16px;">
                                    <div class="col"><label>4-&nbsp;Sofre(u) de dist??rbio cardiovascular?<br></label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-47" name="cardio" value="SIM">
                                            <label class="form-check-label" for="formCheck-1">SIM</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-48" name="cardio" value="N??O">
                                            <label class="form-check-label" for="formCheck-2">N??O</label></div>
                                    </div>
                                </div>
                                <div class="form-row" style="padding: 3PX;padding-top: 6px;padding-bottom: 8px;padding-left: 16px;">
                                    <div class="col"><label>5-&nbsp;Sofre(u) de gastrite?<br></label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-49" name="gast" value="SIM">
                                            <label class="form-check-label" for="formCheck-1">SIM</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-50" name="gast" value="N??O">
                                            <label class="form-check-label" for="formCheck-2">N??O</label></div>
                                    </div>
                                </div>
                                <div class="form-row" style="padding: 3PX;padding-top: 6px;padding-bottom: 8px;padding-left: 16px;">
                                    <div class="col"><label>6-&nbsp;&nbsp;?? diab??tico ou tem familiares diab??ticos?<br></label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-51" name="diab" value="SIM">
                                            <label class="form-check-label" for="formCheck-1">SIM</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-52" name="diab" value="N??O">
                                            <label class="form-check-label" for="formCheck-2">N??O</label></div>
                                    </div>
                                </div>
                                <div class="form-row" style="padding: 3PX;padding-top: 6px;padding-bottom: 8px;padding-left: 16px;">
                                    <div class="col"><label>7-&nbsp;&nbsp;J?? desmaiou alguma vez?<br></label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-53" name="desm" value="SIM">
                                            <label class="form-check-label" for="formCheck-1">SIM</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-54" name="desm" value="N??O">
                                            <label class="form-check-label" for="formCheck-2">N??O</label></div>
                                    </div>
                                </div>
                                <div class="form-row" style="padding: 3PX;padding-top: 6px;padding-bottom: 8px;padding-left: 16px;">
                                    <div class="col"><label>8-&nbsp;&nbsp;Est?? sob tratamento m??dico?<br></label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-55" name="trat" value="SIM">
                                            <label class="form-check-label" for="formCheck-1">SIM</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-56" name="trat" value="N??O">
                                            <label class="form-check-label" for="formCheck-2">N??O</label></div>
                                    </div>
                                </div>
                                <div class="form-row" style="padding: 3PX;padding-top: 6px;padding-bottom: 8px;padding-left: 16px;">
                                    <div class="col"><label>9-&nbsp;&nbsp;Est?? tomando algum medicamento?<br></label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-57" name="medic" value="SIM">
                                            <label class="form-check-label" for="formCheck-1">SIM</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-58" name="medic" value="N??O">
                                            <label class="form-check-label" for="formCheck-2">N??O</label></div>
                                    </div>
                                </div>
                                <div class="form-row" style="padding: 3PX;padding-top: 6px;padding-bottom: 8px;padding-left: 16px;">
                                    <div class="col"><label>10-&nbsp;&nbsp;Esteve doente ou foi operado nos ??ltimos 5 anos?<br></label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-59" name="opera" value="SIM">
                                            <label class="form-check-label" for="formCheck-1">SIM</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-60" name="opera" value="N??O">
                                            <label class="form-check-label" for="formCheck-2">N??O</label></div>
                                    </div>
                                </div>
                                <div class="form-row" style="padding: 3PX;padding-top: 6px;padding-bottom: 8px;padding-left: 16px;">
                                    <div class="col"><label>11-&nbsp;&nbsp;Tem h??bitos, v??cios ou manias?<br></label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-61" name="hab" value="SIM">
                                            <label class="form-check-label" for="formCheck-1">SIM</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-62" name="hab" value="N??O">
                                            <label class="form-check-label" for="formCheck-2">N??O</label></div>
                                    </div>
                                </div>
                                <div class="form-row" style="padding: 3PX;padding-top: 6px;padding-bottom: 8px;padding-left: 16px;">
                                    <div class="col"><label>12-&nbsp;&nbsp;Tem ansiedade/depress??o?<br></label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-63" name="ansi" value="SIM">
                                            <label class="form-check-label" for="formCheck-1">SIM</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-64" name="ansi" value="N??O">
                                            <label class="form-check-label" for="formCheck-2">N??O</label></div>
                                    </div>
                                </div>
                                <div class="form-row" style="padding: 3PX;padding-top: 6px;padding-right: 8px;padding-left: 16px;">
                                    <div class="col"><label class="col-form-label">13-&nbsp;VOC?? E/OU ALGUM FAMILIAR TEVE ALGUMAS DESSAS DOEN??AS<br></label></div>
                                </div>
                                <div class="form-row" style="padding: 3PX;padding-top: 6px;padding-bottom: 8px;padding-left: 26px;">
                                    <div class="col-md-2"><label>Tuberculose<br></label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-1" name="tub" value="SIM">
                                            <label class="form-check-label" for="formCheck-1">SIM</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-2" name="tub" value="N??O">
                                            <label class="form-check-label" for="formCheck-2">N??O</label></div>
                                    </div>
                                    <div class="col-md-2"><label>Sarampo<br></label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-3" name="sara" value="SIM">
                                            <label class="form-check-label" for="formCheck-1">SIM</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-4" name="sara" value="N??O">
                                            <label class="form-check-label" for="formCheck-2">N??O</label></div>
                                    </div>
                                    <div class="col-md-2"><label>S??filis<br></label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-5" name="sifi" value="SIM">
                                            <label class="form-check-label" for="formCheck-1">SIM</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-6" name="sifi" value="N??O">
                                            <label class="form-check-label" for="formCheck-2">N??O</label></div>
                                    </div>
                                    <div class="col"></div>
                                    <div class="col"></div>
                                </div>
                                <div class="form-row" style="padding: 3PX;padding-top: 6px;padding-bottom: 8px;padding-left: 26px;">
                                    <div class="col-md-2"><label>Caxumba<br></label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-7" name="caxu" value="SIM">
                                            <label class="form-check-label" for="formCheck-1">SIM</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-8" name="caxu" value="N??O">
                                            <label class="form-check-label" for="formCheck-2">N??O</label></div>
                                    </div>
                                    <div class="col-md-2"><label>Hepatite A, B, C<br></label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-9" name="hepa" value="SIM">
                                            <label class="form-check-label" for="formCheck-1">SIM</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-10" name="hepa" value="N??O">
                                            <label class="form-check-label" for="formCheck-2">N??O</label></div>
                                    </div>
                                    <div class="col-md-2"><label>Varicela<br></label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-11" name="vari" value="SIM">
                                            <label class="form-check-label" for="formCheck-1">SIM</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-12" name="vari" value="N??O">
                                            <label class="form-check-label" for="formCheck-2">N??O</label></div>
                                    </div>
                                    <div class="col"></div>
                                    <div class="col"></div>
                                </div>
                                <div class="form-row" style="padding: 3PX;padding-top: 6px;padding-bottom: 8px;padding-left: 26px;">
                                    <div class="col-md-2"><label>SIDA/AIDS<br></label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-13" name="aids" value="SIM">
                                            <label class="form-check-label" for="formCheck-1">SIM</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-14" name="aids" value="N??O">
                                            <label class="form-check-label" for="formCheck-2">N??O</label></div>
                                    </div>
                                    <div class="col-md-3"><label>Outras<br></label><input class="form-control form-control-sm" type="text" name="outradoenca"></div>
                                    <div class="col"></div>
                                </div>
                                <div class="form-row" style="padding: 3PX;padding-top: 10px;padding-bottom: 8px;padding-left: 16px;">
                                    <div class="col"><label>14- ?? FUMANTE?</label>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-15" name="fuma" value="SIM">
                                            <label class="form-check-label" for="formCheck-39">SIM</label></div>
                                        <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-16" name="fuma" value="N??O">
                                            <label class="form-check-label" for="formCheck-40">N??O</label></div>
                                    </div>
                                </div>
                                <div class="form-row" style="padding: 3PX;padding-top: 3px;padding-right: 8px;padding-left: 16px;">
                                    <div class="col"><input class="form-control form-control-sm" type="text" name="freq" style="width: 200px;" placeholder="Frequ??ncia por Dia"></div>
                                </div>
                                <div class="form-row" style="padding: 3px;padding-top: 11px;">
                                    <div class="col"> 
                                        <button  class="btn btn-primary" type="submit" style="filter: sepia(9%);">AVAN??AR</button>
                                    </div>
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
