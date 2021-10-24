
package br.com.DAO;

import br.com.DTO.PacienteDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class PacienteDAO {
   Connection con;
   PreparedStatement pstm;
   
   
   public void CadastrarPaciente(PacienteDTO objPacienteDTO) throws ClassNotFoundException{
   String sql = "insert into paciente (nome_paciente, sobrenome_paciente, cpf_paciente, p_paciente) values (?, ?, ?, Paciente)";
   con = new ConexaoDAO().conexaoBD();
   
       try {
           pstm = con.prepareStatement(sql);
           pstm.setString(1, objPacienteDTO.getNome_paciente());
           pstm.setString(2, objPacienteDTO.getSobrenome_paciente());
           pstm.setString(3, objPacienteDTO.getCpf_paciente());
           
           pstm.execute();
           pstm.close();
           
       } catch (SQLException e) {
       }
   } 
    
    
}
