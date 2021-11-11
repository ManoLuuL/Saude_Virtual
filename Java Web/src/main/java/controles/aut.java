package controles;

import br.com.DAO.UsuarioDAO;
import br.com.DTO.UsuarioDTO;
import java.io.IOException;
import java.io.PrintWriter;
import static java.sql.DriverManager.println;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class aut extends HttpServlet {

    UsuarioDTO usuario;
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

    private void receberDados(HttpServletRequest request) {
        String login = request.getParameter("usuario");
        String senha = request.getParameter("password");

        acesso(login, senha);

    }

    public void acesso(String login, String senha) {

        usuario = new UsuarioDTO();
        usuario.setUsuario(login);
        usuario.setSenha_usuario(senha);
    }

    public void salvadados(HttpServletRequest request, HttpServletResponse response) {

        HttpSession session = request.getSession();
        session.setAttribute("usuario", usuario);
    }

    

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");

        receberDados(request);
        //redirecionar(request, response);
        salvadados(request, response);
        validalogin(request, response);
        

        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet aut</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet aut at " + request.getContextPath() + "</h1>");
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(aut.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(aut.class.getName()).log(Level.SEVERE, null, ex);
        }
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

    protected void validalogin(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, IOException {
       
        UsuarioDAO usu = new UsuarioDAO();
        String logon = usu.validarlogin(usuario);
        System.out.println(logon);
        
        if (logon == null) {

            RequestDispatcher rd = request.getRequestDispatcher("/index.html");
            try {
                
                rd.forward(request, response);
            } catch (IOException | ServletException e) {
                
            }

        } 

        if ("Dentista".equals(logon)) {

            RequestDispatcher rd = request.getRequestDispatcher("/IndexDentista.jsp");
            try {
                rd.forward(request, response);
            } catch (IOException | ServletException e) {
                System.out.println(e);
            }

        }
        
        if ("Paciente".equals(logon)) {

            RequestDispatcher rd = request.getRequestDispatcher("/IndexPaciente.jsp");
            try {
                rd.forward(request, response);
            } catch (IOException | ServletException e) {
                System.out.println(e);
            }

        }
        
        
    }

}
