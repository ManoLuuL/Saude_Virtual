/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controles;

import dominion.Atestado;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author T-Gamer
 */
public class AtestadoS extends HttpServlet {

    String destino = "/Formularios.jsp";
    Atestado atestado;
    String e;
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    private void recebeatestado(HttpServletRequest request){
         String justifica1 = request.getParameter("justi1");
         String justifica2 = request.getParameter("justi2");
         String justifica3 = request.getParameter("justi3");
         String justifica4 = request.getParameter("justi4");
         String justifica5 = request.getParameter("justi5");
         String periodoini = request.getParameter("inicio");
         String periodofinal = request.getParameter("fim");
         String repouso = request.getParameter("repouso");
         String dias = request.getParameter("dias");
         
         atestado(justifica1, justifica2, justifica3, justifica4, justifica5, periodoini, periodofinal, repouso, dias);
    }
    
    public void atestado(String justifica1,String justifica2, String justifica3, 
            String justifica4, String justifica5, String periodoini, 
            String periodofinal, String repouso, String dias){
    
        atestado = new Atestado();
        atestado.setPeriodoini(periodoini);
        atestado.setPeriodofinal(periodofinal);
        atestado.setRepouso(repouso);
        atestado.setDias(dias);
        
        verificaJustificativa(justifica1, 0);
        verificaJustificativa(justifica2, 1);
        verificaJustificativa(justifica3, 2);
        verificaJustificativa(justifica4, 3);
        verificaJustificativa(justifica5, 4);
    }
    
    private void verificaJustificativa(String just, int valor) {
        if (just != null)
            atestado.setJustificativas(valor);
    }
    
    public void redirecionar(HttpServletRequest request, HttpServletResponse response){
        
        HttpSession session = request.getSession();
        session.setAttribute("ATESTADO", atestado);
        
        
        RequestDispatcher rd = request.getRequestDispatcher(destino);
        try {
            rd.forward(request, response);
        } catch (Exception e) {
            this.e = e.getMessage();
        }
            
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        recebeatestado(request);
        redirecionar(request, response);
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AtestadoS</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AtestadoS at " + request.getContextPath() + "</h1>");
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
