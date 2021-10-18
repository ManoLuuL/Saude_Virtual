
package br.com.DAO;

import br.com.DTO.UsuarioDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class UsuarioDAO {
   Connection con;
   PreparedStatement pstm;
   
   
   public void CadastrarUsuario(UsuarioDTO objUsuarioDTO) throws ClassNotFoundException{
   String sql = "insert into usuarios (nome_usuario, cpf_cro, usuario, senha_usuario, tipo_usuario) values (?, ?, ?, ?, ?)";
   con = new ConexaoDAO().conexaoBD();
   
       try {
           pstm = con.prepareStatement(sql);
           pstm.setString(1, objUsuarioDTO.getNome_usuario());
           pstm.setString(2, objUsuarioDTO.getCpf_cro());
           pstm.setString(3, objUsuarioDTO.getUsuario());
           pstm.setString(4, objUsuarioDTO.getSenha_usuario());
           pstm.setString(5, objUsuarioDTO.getTipo_usuario());
           
           pstm.execute();
           pstm.close();
           
       } catch (SQLException e) {
       }
   } 
    
   public UsuarioDTO autentica(UsuarioDTO usuario){
   
       UsuarioDTO usuretorno = null;
   
       String sql = "SELECT nome_usuario, senha_usuario, tipo_usuario"
                + "FROM usuarios where usuario = ? and senha = ?";
           
        try {
           pstm = con.prepareStatement(sql);
           ResultSet rs = pstm.executeQuery();
           pstm.setString(1, usuario.getUsuario());
           pstm.setString(2, usuario.getSenha_usuario());
           
           if(rs.next()){
               //se existe usuario
               
               String u = rs.getString("nome_usuario");
               String p = rs.getString("senha_usuario");
               String tipo = rs.getString("tipo_usuario");
               
               if(){
               
                   
               }
           }else{
                //nao existe usuario
           }
           pstm.execute();
           pstm.close();
        } catch (SQLException e) {
            System.out.println(e.toString());
       }
       return usuretorno;
               
   }
    
}
