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
    <section class="border rounded border-dark shadow-lg" style="background: #ffffff;margin-top: 10px;margin-right: 30px;margin-left: 30px;">
        <div class="container" style="padding: 9px;">
            <h1 class="border rounded" style="text-align: center;font-size: 30px;padding: 16px;background: rgba(152,149,150,0.2);">ATESTADO ODONTOLÓGICO</h1>
        </div>
        <div class="container">
            <div class="row">
                <div class="col">
                    <form action="ServAtestado" method="post">
                        <div class="form-group">
                            <div class="form-row" style="padding: 5px;">
                                <div class="col"><label class="col-form-label">Atestado para fim especifico de:</label></div>
                            </div>
                            <div class="form-row" style="padding: 5px;">
                                <div class="col">
                                    <div class="form-check" style="padding-bottom: 5px;"><input class="form-check-input" type="checkbox" id="formCheck-1" name="tipo" value="Justificativa de falta ao trabalho">
                                        <label class="form-check-label" for="formCheck-1">Justificativa de falta ao trabalho</label></div>
                                    <div class="form-check" style="padding-bottom: 5px;"><input class="form-check-input" type="checkbox" id="formCheck-4" name="tipo" value="Dispensa de atividade escolares">
                                        <label class="form-check-label" for="formCheck-4">Dispensa de atividade escolares</label></div>
                                    <div class="form-check" style="padding-bottom: 5px;"><input class="form-check-input" type="checkbox" id="formCheck-3" name="tipo" value="Dispensa de atividades físicas, desportivas, judiciais ou militares">
                                        <label class="form-check-label" for="formCheck-3">Dispensa de atividades físicas, desportivas, judiciais ou militares</label></div>
                                    <div class="form-check" style="padding-bottom: 5px;"><input class="form-check-input" type="checkbox" id="formCheck-2" name="tipo" value="Justificativa de comparecimento">
                                        <label class="form-check-label" for="formCheck-2">Justificativa de comparecimento</label></div>
                                </div>
                            </div>
                            <div class="form-row" style="padding: 5px;">
                                <div class="col-md-11">
                                    <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-5" name="tipo" value="Justificativa de comparecimento, acompanhando o(a) filho(a), menor ou incapaz, na data de hoje.">
                                        <label class="form-check-label" for="formCheck-5">Justificativa de comparecimento, acompanhando o(a) filho(a), menor ou incapaz,&nbsp;na data de hoje.<br></label></div>
                                </div>
                            </div>
                            <div class="form-row" style="padding: 5px;">
                                <div class="col"><label class="col-form-label">que esteve sob tratamento odontológico na clinica.</label></div>
                            </div>
                            <div class="form-row" style="padding: 5px;">
                                <div class="col"><label>No período das&nbsp;</label>
                                    <input class="form-control form-control-sm" type="text" name="inicio" style="width: 200px;"></div>
                                <div class="col"><label>Até&nbsp;</label>
                                    <input class="form-control form-control-sm" type="text" name="fim" style="width: 200px;"></div>
                            </div>
                            <div class="form-row" style="padding: 5px;">
                                <div class="col"><label>Devendo o(a) mesmo(a):</label>
                                    <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-7" name="repouso" value="Retornar as atividades normais">
                                        <label class="form-check-label" for="formCheck-7">Retornar as atividades normais</label></div>
                                    <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-6" name="repouso" value="Permanecer em repouso">
                                        <label class="form-check-label" for="formCheck-6">Permanecer em repouso&nbsp;</label></div>
                                </div>
                            </div><input class="form-control form-control-sm" type="text" name="dias" placeholder="Dias para Repouso" style="width: 200px;">
                            <div class="form-row" style="padding: 5px;">
                                <div class="col"><button class="btn btn-primary" type="submit">Avançar</button></div>
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
