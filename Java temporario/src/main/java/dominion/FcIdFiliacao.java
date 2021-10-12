package dominion;

public class FcIdFiliacao {

    private String nome_pai;
    private String nome_mae;
    private String nacionalidade_pai;
    private String nacionalidade_mae;
    private String telefone;
    private String endereco_pais;
    private String bairro_pais;
    private String cidade_pais;
    private String estado_pais;
    private String cep;
    private String complemento;
    
    public String getNome_pai() {
        return nome_pai;
    }

    public void setNome_pai(String nome_pai) {
        this.nome_pai = nome_pai.toUpperCase();
    }

    public String getNome_mae() {
        return nome_mae;
    }

    public void setNome_mae(String nome_mae) {
        this.nome_mae = nome_mae.toUpperCase();
    }

    public String getNacionalidade_pai() {
        return nacionalidade_pai;
    }

    public void setNacionalidade_pai(String nacionalidade_pai) {
        this.nacionalidade_pai = nacionalidade_pai;
    }

    public String getNacionalidade_mae() {
        return nacionalidade_mae;
    }

    public void setNacionalidade_mae(String nacionalidade_mae) {
        this.nacionalidade_mae = nacionalidade_mae;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEndereco_pais() {
        return endereco_pais;
    }

    public void setEndereco_pais(String endereco_pais) {
        this.endereco_pais = endereco_pais;
    }

    public String getBairro_pais() {
        return bairro_pais;
    }

    public void setBairro_pais(String bairro_pais) {
        this.bairro_pais = bairro_pais;
    }

    public String getCidade_pais() {
        return cidade_pais;
    }

    public void setCidade_pais(String cidade_pais) {
        this.cidade_pais = cidade_pais;
    }

    public String getEstado_pais() {
        return estado_pais;
    }

    public void setEstado_pais(String estado_pais) {
        this.estado_pais = estado_pais;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }
    
    
}
