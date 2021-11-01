package controles;

import dominion.Quest3;
import dominion.Quest4;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServQuest2 extends HttpServlet {

    Quest3 questoes3;
    Quest4 questoes4;
    
    private void receberesposta2(HttpServletRequest request){
    
        String histgest = request.getParameter("historiages");
        String parto = request.getParameter("parto");
        String prob_parto = request.getParameter("prob");
        String amamentacao = request.getParameter("amame");
        String idadeamamentacao = request.getParameter("idadeamame");
        String anestesia = request.getParameter("anes");
        String grave_doenca = request.getParameter("grave");
        String vacina = request.getParameter("vac");
    
        parte3(histgest, parto, prob_parto, amamentacao, idadeamamentacao, anestesia, grave_doenca, vacina);
        
        String durante_anos = request.getParameter("durante");
	String aprendizado = request.getParameter("aprend");
	String estado_ani = request.getParameter("estadoa");
	String sono = request.getParameter("sono");
	String conduta_psic = request.getParameter("conduta");
	String alimentacao = request.getParameter("alimentacao");
	String sociabilidade = request.getParameter("relacao");
	String conduta_pato = request.getParameter("patologia");
	String observacao = request.getParameter("obs");
                
        parte4(durante_anos, aprendizado, estado_ani, sono, conduta_psic, alimentacao, sociabilidade, conduta_pato, observacao);
    }
    
    public void parte3(String histgest, String parto, String prob_parto, String amamentacao, 
            String idadeamamentacao, String anestesia, String grave_doenca, String vacina){
    
        questoes3 = new Quest3();
        questoes3.setHistgest(histgest);
        questoes3.setParto(parto);
        questoes3.setProb_parto(prob_parto);
        questoes3.setAmamentacao(amamentacao);
        questoes3.setIdadeamamentacao(idadeamamentacao);
        questoes3.setAnestesia(anestesia);
        questoes3.setGrave_doenca(grave_doenca);
        questoes3.setVacina(vacina);
    }
    
    public void parte4(String durante_anos, String aprendizado, String estado_ani, String sono, 
            String conduta_psic, String alimentacao, String sociabilidade, String conduta_pato, String observacao){
    
        questoes4 = new Quest4();
        //questoes4.setDurante_anos(durante_anos);
        questoes4.setAprendizado(aprendizado);
        questoes4.setEstado_ani(estado_ani);
        questoes4.setSono(sono);
        questoes4.setConduta_psic(conduta_psic);
        questoes4.setAlimentacao(alimentacao);
        questoes4.setSociabilidade(sociabilidade);
        questoes4.setConduta_pato(conduta_pato);
        questoes4.setObservacao(observacao);
    }
    
    public void redirecionar(HttpServletRequest request, HttpServletResponse response){
        RequestDispatcher rd = request.getRequestDispatcher("");
        try {
            rd.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
            
    }
    
    
    
    
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        receberesposta2(request);
        redirecionar(request, response);
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServQuest2</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServQuest2 at " + request.getContextPath() + "</h1>");
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
