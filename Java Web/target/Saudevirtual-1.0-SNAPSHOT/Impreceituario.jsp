<%@page import="java.io.PrintWriter"%>
<%@page import="dominion.Receituario"%>
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
    Receituario receita;
    HttpSession sessao = request.getSession(); 
     
    
    receita = (Receituario)sessao.getAttribute("RECEITA");
    
    
    if(receita == null){
    
        response.setContentType("text/html");
        PrintWriter pw=response.getWriter();
        pw.println("<script type=\"text/javascript\">");
        pw.println("alert('Primeiro, preencha o Receituario.');");
        pw.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/receituario.html");
        
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
    <section style="margin-top: 10px;margin-right: 30px;margin-left: 30px;background: #ffffff;">
        <div class="container" style="padding: 9px;">
            <h1 class="border rounded" style="text-align: center;font-size: 30px;padding: 16px;background: rgba(152,149,150,0.2);">RECEITUARIO</h1>
        </div>
        <div class="container">
            <div class="row">
                <div class="col">
                    <form>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col"><label class="col-form-label">Label</label></div>
                            </div>
                            <div class="form-row" style="margin-top: 12px;margin-bottom: 0px;padding: 5px;">
                                <div class="col"><label class="col-form-label">______________________________________</label></div>
                            </div>
                            <div class="form-row" style="padding: 5px;">
                                <div class="col"><label class="col-form-label">Ass. Do (a) professor(a) com carimbo ou nome completo e CRO</label></div>
                            </div>
                            <div class="form-row" style="padding: 5px;">
                                <div class="col"><label class="col-form-label">Rua Ir. Arminda 10-50 –Jd Brasil – 17011-160 Bauru- SP – Tel - (14) 2107-7269 / 2107- 7364<br></label></div>
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
