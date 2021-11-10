package br.com.DAO;

import br.com.DTO.UsuarioDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UsuarioDAO {

    Connection con;
    PreparedStatement pstm;

    public void CadastrarUsuario(UsuarioDTO objUsuarioDTO) throws ClassNotFoundException {
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

    public String validarlogin(UsuarioDTO objUsuarioDTO) throws ClassNotFoundException {

        String sql = "SELECT nome_usuario, senha_usuario, tipo_usuario FROM usuarios where nome_usuario = ? and senha_usuario = ?";
        con = new ConexaoDAO().conexaoBD();

        String pag = null;
        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objUsuarioDTO.getUsuario());
            System.out.println(objUsuarioDTO.getUsuario());
            pstm.setString(2, objUsuarioDTO.getSenha_usuario());
            System.out.println(objUsuarioDTO.getSenha_usuario());
            ResultSet rs = pstm.executeQuery();

            if (rs.next()) {
                String u = rs.getString("nome_usuario");
                String p = rs.getString("senha_usuario");
                String tipo = rs.getString("tipo_usuario");

                if ("Dentista".equals(tipo)) {
                    pag = "Dentista";
                    System.out.println(tipo);
                }

                if (tipo.equals("Paciente")) {
                    pag = "2";
                    System.out.println(tipo);
                }

            } else {
                return pag;
            }
            pstm.close();
            System.out.println(pag);
        } catch (SQLException e) {
        }
        return pag;
        
    }

}
