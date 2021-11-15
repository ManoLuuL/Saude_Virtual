package controles;

import dominion.FcIdFiliacao;
import dominion.FichaIdentificacao;
import dominion.Prontuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ServPronto extends HttpServlet {
    
    String destino = "/Formularios.jsp";
    FichaIdentificacao ficha;
    Prontuario pronto;
    FcIdFiliacao filiacao;
    
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
    private void recebeProntuario(HttpServletRequest request) {
        String nome = request.getParameter("txtnome");
        String cpf = request.getParameter("txtcpf");
        String rg = request.getParameter("txtrg");
        String data = request.getParameter("txtdata");
        String estadocivil = request.getParameter("txtestadocv");
        String sexo = request.getParameter("sexo");
        String peso = request.getParameter("txtpeso");
        String altura = request.getParameter("txtaltura");
        String cor = request.getParameter("cor");
        String cidade = request.getParameter("txtnaturalidade");
        String estado = request.getParameter("txtestado");
        
        identificapaciente(nome, cpf, rg, data, estadocivil, sexo, peso, altura, cor, cidade, estado);
        
        String nomepai = request.getParameter("nomepai");
        String nacionalidadepai = request.getParameter("nacionalidadepai");
        String nomemae = request.getParameter("nomemae");
        String nacionalidademae = request.getParameter("nacionalidademae");
        String telefone = request.getParameter("txttelefone");
        
        identificafiliacao(nomepai, nacionalidadepai, nomemae, nacionalidademae, telefone);
        
        String hitdoenca = request.getParameter("historicodoca");
        String anotacao = request.getParameter("anotacao");
        String procedimento = request.getParameter("PROCD");
        String disciplina = request.getParameter("DISC");
        String aluno = request.getParameter("ALUNO");
        String professor = request.getParameter("PROF");
        
        identificaprontu(hitdoenca, anotacao, procedimento, disciplina, aluno, professor);
    }
    
    public void identificapaciente(String nome, String cpf, String rg,
            String data, String estadocivil, String sexo, String peso, String altura, String cor,
            String cidade, String estado) {
        
        ficha = new FichaIdentificacao();
        ficha.setNome(nome);
        ficha.setCpf(cpf);
        ficha.setRg(rg);
        ficha.setNascimento(data);
        ficha.setEstado_civil(estadocivil);
        ficha.setSexo(sexo);
        ficha.setPeso(peso);
        ficha.setAltura(altura);
        ficha.setCor(cor);
        ficha.setCidade(cidade);
        ficha.setEstado(estado);
        
    }
    
    public void identificafiliacao(String nomepai, String nacionalidadepai, String nomemae,
            String nacionalidademae, String telefone) {
        
        filiacao = new FcIdFiliacao();
        filiacao.setNome_pai(nomepai);
        filiacao.setNacionalidade_pai(nacionalidadepai);
        filiacao.setNome_mae(nomemae);
        filiacao.setNacionalidade_mae(nacionalidademae);
        filiacao.setTelefone(telefone);
        
    }
    
    public void identificaprontu(String hitdoenca, String anotacao, String procedimento,
            String disciplina, String aluno, String professor) {
        
        pronto = new Prontuario();
        pronto.setHistoria(hitdoenca);
        pronto.setAnotacoes(anotacao);
        pronto.setProcedimento(procedimento);
        pronto.setDisciplina(disciplina);
        pronto.setAluno(aluno);
        pronto.setProfessor(professor);
    }
    
    public void redirecionar(HttpServletRequest request, HttpServletResponse response) {
        
        HttpSession session = request.getSession();
        session.setAttribute("Prontuario", pronto);
        session.setAttribute("Ficha", ficha);
        session.setAttribute("Filiacao", filiacao);
        
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
        
        recebeProntuario(request);
        redirecionar(request, response);
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServPronto</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServPronto at " + request.getContextPath() + "</h1>");
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
