
<%@page import="br.com.DTO.UsuarioDTO"%>
<%@page import="br.com.DAO.UsuarioDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
                    UsuarioDTO objUsuarioDTO = new UsuarioDTO();
            objUsuarioDTO.setNome_usuario(request.getParameter("Nome"));
            objUsuarioDTO.setCpf_cro(request.getParameter("CPFCRO"));
            objUsuarioDTO.setUsuario(request.getParameter("usuarioP"));
            objUsuarioDTO.setSenha_usuario(request.getParameter("senha"));
            objUsuarioDTO.setTipo_usuario(request.getParameter("TipoUsu"));
            
            UsuarioDAO objUsuarioDAO = new UsuarioDAO();
            objUsuarioDAO.CadastrarUsuario(objUsuarioDTO);
            
            
                } catch (Exception e) {
                }
            
        %>
        
        
    </body>
</html>
