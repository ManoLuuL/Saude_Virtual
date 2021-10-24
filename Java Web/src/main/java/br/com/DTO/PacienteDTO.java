package br.com.DTO;


public class PacienteDTO {
    private int id_paciente;
    private String nome_paciente;
    private String Sobrenome_paciente;
    private String Cpf_paciente;
   
    public int getId_paciente() {
        return id_paciente;
    }

    public void setId_paciente(int id_paciente) {
        this.id_paciente = id_paciente;
    }

    public String getNome_paciente() {
        return nome_paciente;
    }

    public void setNome_paciente(String nome_paciente) {
        this.nome_paciente = nome_paciente;
    }

    public String getSobrenome_paciente() {
        return Sobrenome_paciente;
    }

    public void setSobrenome_paciente(String Sobrenome_paciente) {
        this.Sobrenome_paciente = Sobrenome_paciente;
    }

    public String getCpf_paciente() {
        return Cpf_paciente;
    }

    public void setCpf_paciente(String Cpf_paciente) {
        this.Cpf_paciente = Cpf_paciente;
    }
   
   
   
   
}
