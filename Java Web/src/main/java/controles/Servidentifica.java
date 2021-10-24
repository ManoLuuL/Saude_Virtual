/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controles;


import dominion.FcIdFiliacao;
import dominion.FichaIdentificacao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author T-Gamer
 */
public class Servidentifica extends HttpServlet {

    FichaIdentificacao ficha;
    FcIdFiliacao pais;
    String destino = "/Termoderesponsabilidade.jsp";
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
    
    private void recebeDados(HttpServletRequest request){
    
        String nome = request.getParameter("txtnome");
        String cpf = request.getParameter("txtcpf");
        String rg = request.getParameter("txtrg");
        String data = request.getParameter("txtdata");
        String estadocivil= request.getParameter("txtestadocv");
        String sexo = request.getParameter("sexo");
        String peso = request.getParameter("txtpeso");
        String altura = request.getParameter("txtaltura");
        String cor = request.getParameter("cor");
        String cidade = request.getParameter("txtnaturalidade");
        String estado = request.getParameter("txtestado");
        String escolaridade = request.getParameter("slescola");
        String profissao = request.getParameter("txtprofissao");
        
         identificapaciente(nome, cpf, rg, data, estadocivil, sexo, peso, altura, cor, cidade, estado, escolaridade, profissao);
        
        String nomepai = request.getParameter("nomepai");
        String nacionalidadepai = request.getParameter("nacionalidadepai");
        String nomemae = request.getParameter("nomemae");
        String nacionalidademae = request.getParameter("nacionalidademae");
        String telefone = request.getParameter("txttelefone");
        String endereco = request.getParameter("txtendereco");
        String bairro = request.getParameter("txtbairro");
        String cidadepais = request.getParameter("txtcidade");
        String estadopais = request.getParameter("txtestadofl");
        String cep = request.getParameter("txtcep");
        String complemento = request.getParameter("txtcomplemento");
        
        identificafiliacao(nomepai, nacionalidadepai, nomemae, nacionalidademae, telefone, endereco, bairro, cidadepais, estadopais, cep, complemento);
    }
    
    public void identificapaciente(String nome, String cpf, String rg, 
            String data, String estadocivil, String sexo ,String peso, String altura,String cor, 
           String cidade, String estado, String escolaridade, String profissao ){
    
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
        ficha.setEscolaridade(escolaridade);
        ficha.setProfissao(profissao);
        
    }
    
    public void identificafiliacao(String nomepai, String nacionalidadepai, String nomemae, 
            String nacionalidademae, String telefone,String endereco, String bairro,String cidadepais, 
           String estadopais, String cep, String complemento){
        
        pais = new FcIdFiliacao();
        pais.setNome_pai(nomepai);
        pais.setNacionalidade_pai(nacionalidadepai);
        pais.setNome_mae(nomemae);
        pais.setNacionalidade_mae(nacionalidademae);
        pais.setTelefone(telefone);
        pais.setEndereco_pais(endereco);
        pais.setBairro_pais(bairro);
        pais.setCidade_pais(cidadepais);
        pais.setEstado_pais(estadopais);
        pais.setCep(cep);
        pais.setComplemento(complemento);
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
        
                recebeDados(request);
                redirecionar(request, response);
                
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Servidentifica</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Servidentifica at " + request.getContextPath() + "</h1>");
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
