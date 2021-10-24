package dominion;



public class Quest4 {

    private String[] durante_anos;
    private String aprendizado;
    private String estado_ani;
    private String sono;
    private String conduta_psic;
    private String alimentacao;
    private String sociabilidade;
    private String conduta_pato;
    private String observacao;
    
    //metodo
     public void duranteanos() {
        
        //inicializa vetor
        setDurante_anos(new String[4]);
        
        for (int i = 0; i < getDurante_anos().length; i++) {
            getDurante_anos()[i] = " ";
        }
    }
    
    
    public String[] getDurante_anos() {
        return durante_anos;
    }

    public void setDurante_anos(String[] durante_anos) {
        this.durante_anos = durante_anos;
    }

    public String getAprendizado() {
        return aprendizado;
    }

    public void setAprendizado(String aprendizado) {
        this.aprendizado = aprendizado;
    }

    public String getEstado_ani() {
        return estado_ani;
    }

    public void setEstado_ani(String estado_ani) {
        this.estado_ani = estado_ani;
    }

    public String getSono() {
        return sono;
    }

    public void setSono(String sono) {
        this.sono = sono;
    }

    public String getConduta_psic() {
        return conduta_psic;
    }

    public void setConduta_psic(String conduta_psic) {
        this.conduta_psic = conduta_psic;
    }

    public String getAlimentacao() {
        return alimentacao;
    }

    public void setAlimentacao(String alimentacao) {
        this.alimentacao = alimentacao;
    }

    public String getSociabilidade() {
        return sociabilidade;
    }

    public void setSociabilidade(String sociabilidade) {
        this.sociabilidade = sociabilidade;
    }

    public String getConduta_pato() {
        return conduta_pato;
    }

    public void setConduta_pato(String conduta_pato) {
        this.conduta_pato = conduta_pato;
    }

    public String getObservacao() {
        return observacao;
    }

    public void setObservacao(String observacao) {
        this.observacao = observacao;
    }
    
    
}
