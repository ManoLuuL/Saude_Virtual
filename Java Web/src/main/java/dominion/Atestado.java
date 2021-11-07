package dominion;

public class Atestado {

    private boolean[] tipo;
    private String periodoini;
    private String periodofinal;
    private String repouso;
    private String dias;
    
    public Atestado(){
        justificativa();
    }
    
    //metodo
     public void justificativa() {
        
        //inicializa vetor
        setTipo(new boolean[5]);
        
        for (int i = 0; i < getTipo().length; i++) {
            getTipo()[i] = false;
        }
    }
    
    
    public boolean[] getTipo() {
        return tipo;
    }

    public void setTipo(boolean[] tipo) {
        this.tipo = tipo;
    }

    public void setJustificativas(int just) {
        tipo[just] = true;
    }
    
    public String getPeriodoini() {
        return periodoini;
    }

    public void setPeriodoini(String periodoini) {
        this.periodoini = periodoini;
    }

    public String getPeriodofinal() {
        return periodofinal;
    }

    public void setPeriodofinal(String periodofinal) {
        this.periodofinal = periodofinal;
    }

    public String getRepouso() {
        return repouso;
    }

    public void setRepouso(String repouso) {
        this.repouso = repouso;
    }

    public String getDias() {
        return dias;
    }

    public void setDias(String dias) {
        this.dias = dias;
    }
   
    
    
}
