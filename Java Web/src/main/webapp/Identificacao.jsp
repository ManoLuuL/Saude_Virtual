<%-- 
    Document   : Identificacao
    Created on : 12 de out. de 2021, 10:56:06
    Author     : T-Gamer
--%>
<%@page import="util.Escolaridade"%>
<%@page import="util.Sexo"%>
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

<body style="background: url(&quot;assets/img/padrao-sem-emenda-colorido-pastel-para-cuidados-dentarios_1284-44406.jpg&quot;), rgb(255,255,255);">
    <nav class="navbar navbar-light navbar-expand-md navigation-clean-button" style="color: #222222;">
        <div class="container"><img src="assets/img/Icon.png" style="width: 60px;height: 60px;"><a class="navbar-brand" href="index.html" style="font-family: Montserrat, sans-serif;margin-left: 14px;">Saúde Digital</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-2"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-2">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link active" href="index.html" style="color: rgb(0,0,0);font-size: 15px;font-family: Alata, sans-serif;">Página Inicial</a></li>
                    <li class="nav-item"><a class="nav-link" href="#" style="color: rgb(0,0,0);font-size: 15px;font-family: Alata, sans-serif;">Contato</a></li>
                    <li class="nav-item dropdown"><a class="dropdown-toggle nav-link" aria-expanded="false" data-toggle="dropdown" href="#" style="color: rgb(0,0,0);font-size: 15px;font-family: Alata, sans-serif;">Sobre</a>
                        <div class="dropdown-menu"><a class="dropdown-item" href="#">First Item</a><a class="dropdown-item" href="#">Second Item</a><a class="dropdown-item" href="#">Third Item</a></div>
                    </li>
                </ul><span class="navbar-text actions"> <a class="btn btn-light action-button" role="button" href="login.html" style="color: rgb(0,0,0);background: rgba(86,198,158,0.81);font-size: 15px;">Login</a></span>
            </div>
        </div>
    </nav>
    <section class="border rounded border-dark shadow-lg" style="background: #ffffff;margin: 10px 30px;margin-left: 30px;margin-right: 30px;">
        <div class="container" style="padding: 9px;">
            <h1 class="border rounded" style="text-align: center;font-size: 30px;padding: 16px;background: rgba(152,149,150,0.2);"><strong>FICHA DE&nbsp;INDENTIFICAÇÃO DO PACIENTE</strong><br></h1>
        </div>
        <div class="container">
            <div class="row">
                <div class="col">
                    <form action="Servidentifica" method="POST">
                        <div class="form-group">
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><label style="font-size: 20px;"><strong>Dados Pessoais:</strong></label><input class="form-control form-control-sm" type="text" placeholder="NOME COMPLETO" name="txtnome" style="width: 500px;" required=""></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><input class="form-control form-control-sm" type="text" name="txtcpf" placeholder="CPF" style="width: 200px;" required=""></div>
                                <div class="col"><input class="form-control form-control-sm" type="text" name="txtrg" placeholder="RG" required=""></div>
                                <div class="col"></div>
                                <div class="col"></div>
                                <div class="col"></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><label>Data de Nascimento:</label><input class="form-control form-control-sm" type="date" name="txtdata" style="width: 200px;" required=""></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col offset-md-0" style="width: 150PX;"><label>Estado Civil:</label><select class="custom-select custom-select-sm" name="txtestadocv" style="width: 150px;margin: 5px;" required="">
                                        <option value="SOLTEIRO(A)">SOLTEIRO(A)</option>
                                        <option value="CASADO(A)">CASADO(A)</option>
                                        <option value="DIVORCIADO(A)">DIVORCIADO(A)</option>
                                        <option value="VIÚVO(A)">VIÚVO(A)</option>
                                        <option value="" selected=""></option>
                                    </select></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><label>Sexo:</label>
                                    <select class="custom-select custom-select-sm" name="sexo" required="" style="width: 150px;margin: 5px;">
                                        <%
                                        Sexo genero = new Sexo();
                                        String valor="";
                                        for (int i=0; i < genero.sexos.size(); i++){
                                            valor = genero.sexos.get(i);
                                    %>
                                    <option value="<%= valor%>"><%= valor%></option>
                                    <%} %>
                                    </select></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><input class="form-control form-control-sm" type="text" name="txtpeso" placeholder="PESO (KG)" style="width: 200px;" required=""></div>
                                <div class="col"><input class="form-control form-control-sm" type="text" name="txtaltura" placeholder="ALTURA" required=""></div>
                                <div class="col"></div>
                                <div class="col"></div>
                                <div class="col"></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><label>Cor:</label><select class="custom-select custom-select-sm" name="cor" required="" style="width: 150px;margin: 5px;">
                                        <option value="BRANCO">BRANCO</option>
                                        <option value="PARDO">PARDO</option>
                                        <option value="NEGRO">NEGRO</option>
                                        <option value="" selected=""></option>
                                    </select></div>
                            </div>
                            <div class="form-row">
                                <div class="col"><label class="col-form-label">Naturalidade:</label></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><input class="form-control form-control-sm d-md-flex" type="text" style="width: 250px;" name="txtnaturalidade" placeholder="CIDADE" required=""></div>
                                <div class="col"><input class="form-control form-control-sm" type="text" name="txtestado" style="width: 250px;margin-right: 33px;" placeholder="ESTADO" required=""></div>
                                <div class="col"></div>
                                <div class="col"></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><label>Escolaridade:&nbsp;</label>
                                    <select class="custom-select custom-select-sm" style="width: 250px;" name="slescola" required="">
                                        <%
                                         Escolaridade estudos = new Escolaridade();
                                         String escola = "";
                                        for (int i=0; i < estudos.estudo.size(); i++){
                                            escola = estudos.estudo.get(i);
                                    %>
                                    <option value="<%= escola%>"><%= escola%></option>
                                    <%} %>
                                    </select></div>
                            </div>
                            <div class="form-row" style="padding: 3px;">
                                <div class="col"><label>Profissão:</label><input class="form-control form-control-sm" type="text" name="txtprofissao" style="width: 250px;" required=""></div>
                            </div>
                            <div class="form-row" style="padding: 3PX;padding-top: 10px;">
                                <div class="col"><label class="col-form-label" style="font-size: 20px;"><strong>Filiação:</strong></label></div>
                            </div>
                            <div class="form-row" style="padding: 3PX;">
                                <div class="col"><label>Nome do Pai:</label><input class="form-control form-control-sm" type="text" required="" name="nomepai" style="width: 250px;"></div>
                                <div class="col"><label>Nacionalidade:</label><input class="form-control form-control-sm" type="text" required="" name="nacionalidadepai" style="width: 200px;"></div>
                                <div class="col"></div>
                                <div class="col"></div>
                            </div>
                            <div class="form-row" style="padding: 3PX;">
                                <div class="col"><label>Nome do Mãe:</label><input class="form-control form-control-sm" type="text" required="" name="nomemae" style="width: 250px;"></div>
                                <div class="col"><label>Nacionalidade:</label><input class="form-control form-control-sm" type="text" required="" name="nacionalidademae" style="width: 200px;"></div>
                                <div class="col"></div>
                                <div class="col"></div>
                            </div>
                            <div class="form-row" style="padding: 3PX;">
                                <div class="col"><label class="col-form-label">Contato:</label></div>
                            </div>
                            <div class="form-row" style="padding: 3PX;">
                                <div class="col"><input class="form-control form-control-sm" type="tel" name="txttelefone" placeholder="TELEFONE" required="" style="width: 200PX;"></div>
                            </div>
                            <div class="form-row" style="padding: 3PX;">
                                <div class="col"><label class="col-form-label">ENDEREÇO:</label></div>
                            </div>
                            <div class="form-row" style="padding: 3PX;">
                                <div class="col"><input class="form-control form-control-sm" type="text" name="txtendereco" placeholder="EX: RUA SÃO PAULO, 123" style="width: 300PX;"></div>
                                <div class="col"><input class="form-control form-control-sm" type="text" name="txtbairro" placeholder="BAIRRO" style="width: 250PX;"></div>
                                <div class="col"></div>
                                <div class="col"></div>
                            </div>
                            <div class="form-row" style="padding: 3PX;">
                                <div class="col"><input class="form-control form-control-sm" type="text" style="padding: 3px;width: 250px;" name="txtcidade" placeholder="CIDADE"></div>
                                <div class="col offset-md-0"><input class="form-control form-control-sm" type="text" name="txtestadofl" placeholder="ESTADO"></div>
                                <div class="col"></div>
                                <div class="col"></div>
                            </div>
                            <div class="form-row" style="padding: 3PX;">
                                <div class="col"><input class="form-control form-control-sm" type="text" style="width: 250PX;" name="txtcep" placeholder="CEP"></div>
                            </div>
                            <div class="form-row" style="padding: 3PX;">
                                <div class="col"><label>Complemento:</label><input class="form-control form-control-sm" type="text" name="txtcomplemento" placeholder="COMPLEMENTO (OPICIONAL)" style="width: 300PX;"></div>
                            </div>
                            <div class="form-row" style="padding: 3PX;padding-top: 10px;">
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
