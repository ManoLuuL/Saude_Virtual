/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controles;

import dominion.Quest1;
import dominion.Quest2;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ServQuest1 extends HttpServlet {

    Quest1 questionario;
    String destino = "/Impressao.html";
    Quest2 questionario2;
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    private void receberespostas(HttpServletRequest request){
    
        String queixa = request.getParameter("queixa");
        String hitdoenca = request.getParameter("historicodoca");
        String hemorragia = request.getParameter("hemor");
        String alergia = request.getParameter("alergia");
        String infeccioso = request.getParameter("infec");
        String cardiovascular = request.getParameter("cardio");
        String gastrite = request.getParameter("gast");
        String diabetico = request.getParameter("diab");
        String desmaiou = request.getParameter("desm");
        String tratamento_med = request.getParameter("trat");
        String toma_medc = request.getParameter("medic");
        String doente_5 = request.getParameter("opera");
        String habitos = request.getParameter("hab");
        String ansie_depre = request.getParameter("ansi");
        
        parte1(queixa, hitdoenca, hemorragia, alergia, infeccioso, cardiovascular, gastrite, diabetico, desmaiou, tratamento_med, toma_medc, doente_5, habitos, ansie_depre);
        
        String tuberculose = request.getParameter("tub"); 
        String sarampo = request.getParameter("sara");
        String sifilis = request.getParameter("sifi");
        String caxumba = request.getParameter("caxu");
        String hepatite = request.getParameter("hepa");
        String varicela = request.getParameter("vari");
        String aids = request.getParameter("aids");
        String outra_doenca = request.getParameter("outradoenca");
        String fumanete = request.getParameter("fuma");
        String frequencia = request.getParameter("freq");
        
        parte2(tuberculose, sarampo, sifilis, caxumba, hepatite, varicela, aids, outra_doenca, fumanete, frequencia);
    }
    
    public void parte1(String queixa, String hitdoenca, String hemorragia, String alergia, String infeccioso, 
            String cardiovascular, String gastrite, String diabetico, String desmaiou, String tratamento_med, 
            String toma_medc, String doente_5, String habitos, String ansie_depre){
    
        questionario = new Quest1();
        questionario.setQueixa(queixa);
        questionario.setHitdoenca(hitdoenca);
        questionario.setHemorragia(hemorragia);
        questionario.setAlergia(alergia);
        questionario.setInfeccioso(infeccioso);
        questionario.setCardiovascular(cardiovascular);
        questionario.setGastrite(gastrite);
        questionario.setDiabetico(diabetico);
        questionario.setDesmaiou(desmaiou);
        questionario.setTratamento_med(tratamento_med);
        questionario.setToma_medc(toma_medc);
        questionario.setDoente_5(doente_5);
        questionario.setHabitos(habitos);
        questionario.setAnsie_depre(ansie_depre);
    }
    
    public void parte2(String tuberculose, String sarampo, String sifilis, 
            String caxumba, String hepatite, String varicela, String aids, 
            String outra_doenca, String fumanete, String frequencia){
    
        questionario2 = new Quest2();
        questionario2.setTuberculose(tuberculose);
        questionario2.setSarampo(sarampo);
        questionario2.setSifilis(sifilis);
        questionario2.setCaxumba(caxumba);
        questionario2.setHepatite(hepatite);
        questionario2.setVaricela(varicela);
        questionario2.setAids(aids);
        questionario2.setOutra_doenca(outra_doenca);
        questionario2.setFumanete(fumanete);
        questionario2.setFrequencia(frequencia);
    }
    
    public void redirecionar(HttpServletRequest request, HttpServletResponse response){
        RequestDispatcher rd = request.getRequestDispatcher(destino);
        try {
            rd.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
            
    }
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        receberespostas(request);
        redirecionar(request, response);
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServQuest1</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServQuest1 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
