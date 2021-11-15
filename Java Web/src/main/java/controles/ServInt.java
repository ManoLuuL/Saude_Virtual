package controles;

import dominion.Encaminha;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ServInt extends HttpServlet {

    String destino = "/Formularios.jsp";
    Encaminha enca;
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
    private void recebeencaminhamento(HttpServletRequest request) {
        String paciente = request.getParameter("paciente");
        String pronuario = request.getParameter("prontuario");
        String aluno = request.getParameter("txtaluno");
        String disciplina = request.getParameter("txtdisciplina");
        String professor = request.getParameter("txtprofessor");
        String graducao = request.getParameter("graduacao");
        String pos = request.getParameter("posgraduacao");
        String projeto = request.getParameter("projeto");
        String obs = request.getParameter("txtgraduacao");

        encaminha(paciente, pronuario, aluno, disciplina, professor, graducao, pos, projeto, obs);
    }

    public void encaminha(String paciente, String prontuario, String aluno, String disciplina,
            String professor, String graduacao, String pos, String projeto, String obs) {

        enca = new Encaminha();
        enca.setPaciente(paciente);
        enca.setProntuario(prontuario);
        enca.setAluno(aluno);
        enca.setDisciplina(disciplina);
        enca.setProfessor(professor);
        enca.setGraduacao(graduacao);
        enca.setPos(pos);
        enca.setProjeto(projeto);
        enca.setObs(obs);
    }

    public void redirecionar(HttpServletRequest request, HttpServletResponse response) {

        HttpSession session = request.getSession();
        session.setAttribute("Encaminhamento", enca);

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

        recebeencaminhamento(request);
        redirecionar(request, response);

        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServInt</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServInt at " + request.getContextPath() + "</h1>");
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
