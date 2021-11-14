
package dominion;

import util.ManipulaData;


public class Consulta {

    private String finalidade;
    private String doutor;
    private String data;
    private String telefone;
    
    public String getFinalidade() {
        return finalidade;
    }

    public void setFinalidade(String finalidade) {
        this.finalidade = finalidade;
    }

    public String getDoutor() {
        return doutor;
    }

    public void setDoutor(String doutor) {
        this.doutor = doutor;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        ManipulaData md = new ManipulaData();
        
        try {
            this.data = md.formatarData(data);
        } catch (Exception e) {
            this.data = null;
            e.printStackTrace();
        }
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
    
    
    
}
