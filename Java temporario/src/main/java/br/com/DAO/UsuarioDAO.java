
package br.com.DAO;

import br.com.DTO.UsuarioDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
    
    
}
