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


public class ServAtestado extends HttpServlet {

    String destino = "/Impressao.html";
    Atestado atestado;
    
    private void recebeatestado(HttpServletRequest request){
         String tipo = request.getParameter("tipo");
         String periodoini = request.getParameter("inicio");
         String periodofinal = request.getParameter("fim");
         String repolso = request.getParameter("repouso");
         String dias = request.getParameter("dias");
         
         atestado(tipo, periodoini, periodofinal, repolso, dias);
    }
    
    public void atestado(String tipo, String periodoini, String periodofinal, String repolso, String dias){
    
        atestado = new Atestado();
        atestado.setTipo(tipo);
        atestado.setPeriodoini(periodoini);
        atestado.setPeriodofinal(periodofinal);
        atestado.setRepolso(repolso);
        atestado.setDias(dias);
    }
    
    public void redirecionar(HttpServletRequest request, HttpServletResponse response){
        
        HttpSession session = request.getSession();
        session.setAttribute("ATESTADO", atestado);
        
        
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
        
        recebeatestado(request);
        redirecionar(request, response);
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Atestado</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Atestado at " + request.getContextPath() + "</h1>");
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
