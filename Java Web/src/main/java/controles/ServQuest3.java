package controles;

import dominion.QuestExame;
import dominion.QuestExame2;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ServQuest3 extends HttpServlet {

    QuestExame exame;
    QuestExame2 exame2;
    String destino = "/Formularios.jsp";
    
    private void receberexame(HttpServletRequest request){
    
        String labio = request.getParameter("labio");
        String mucosa = request.getParameter("mucosa");
        String lingua = request.getParameter("lingua");
        String boca = request.getParameter("boca");
        String palato = request.getParameter("palato");
        String garganta = request.getParameter("garganta");
        String palato_mole = request.getParameter("palmole");
        String alveolar = request.getParameter("alveolar");
        String gengiva = request.getParameter("gengiva");
        String glandula = request.getParameter("glandula");
        String linfonodos = request.getParameter("linfonodos");
        String atm = request.getParameter("atm");
        String musculo = request.getParameter("musculo");
        String oclusao = request.getParameter("oclusao");
        
        exame(labio, mucosa, lingua, boca, palato, garganta, palato_mole, alveolar, gengiva, glandula, linfonodos, atm, musculo, oclusao);
        
        String alteracao = request.getParameter("alteracao");
        String pressaomin = request.getParameter("pressaomin");
        String pressaomax = request.getParameter("pressaomax");
        String diagpresuntivo = request.getParameter("diagpresu");
        String examecompl = request.getParameter("examecomp");
        String diagdef = request.getParameter("diagdef");
        String tratamento = request.getParameter("tratamento");
        String planotrat = request.getParameter("planotratamento");
        String atendimentourg = request.getParameter("atendimentourg");
        String medicacao = request.getParameter("medicacao");
        String remedios = request.getParameter("remedios");
        
        exame2(alteracao, pressaomin, pressaomax, diagpresuntivo, examecompl, diagdef, tratamento, planotrat, atendimentourg, medicacao, remedios);
    }
    
    public void exame(String labio, String mucosa, String lingua, String boca, String palato, 
            String garganta, String palato_mole, String alveolar, String gengiva, String glandula, 
            String linfonodos, String atm, String musculo, String oclusao){
    
        exame = new QuestExame();
        exame.setLabio(labio);
        exame.setMucosa(mucosa);
        exame.setLingua(lingua);
        exame.setBoca(boca);
        exame.setPalato(palato);
        exame.setGarganta(garganta);
        exame.setPalato_mole(palato_mole);
        exame.setAlveolar(alveolar);
        exame.setGengiva(gengiva);
        exame.setGlandula(glandula);
        exame.setLinfonodos(linfonodos);
        exame.setAtm(atm);
        exame.setMusculo(musculo);
        exame.setOclusao(oclusao);
    
    }
    
    public void exame2(String alteracao, String pressaomin, String pressaomax, String diagpresuntivo, 
            String examecompl, String diagdef, String tratamento, String planotrat, 
            String atendimentourg, String medicacao, String remedios ){
    
        exame2 = new QuestExame2();
        exame2.setAlteracao(alteracao);
        exame2.setPressaomin(pressaomin);
        exame2.setPressaomax(pressaomax);
        exame2.setDiagpresuntivo(diagpresuntivo);
        exame2.setExamecompl(examecompl);
        exame2.setDiagdef(diagdef);
        exame2.setTratamento(tratamento);
        exame2.setPlanotrat(planotrat);
        exame2.setAtendimentourg(atendimentourg);
        exame2.setMedicacao(medicacao);
        exame2.setRemedios(remedios);
    }
    
    
    public void redirecionar(HttpServletRequest request, HttpServletResponse response){
        
        HttpSession session = request.getSession();
        session.setAttribute("EXAME", exame);
        session.setAttribute("EXAME2", exame2);
        
        RequestDispatcher rd = request.getRequestDispatcher(destino);
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
                
        receberexame(request);
        redirecionar(request, response);
                
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServQuest3</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServQuest3 at " + request.getContextPath() + "</h1>");
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
