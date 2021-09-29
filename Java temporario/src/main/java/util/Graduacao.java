/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.util.ArrayList;

/**
 *
 * @author T-Gamer
 */
public class Graduacao {
    public ArrayList<String> graduacoes = new ArrayList();
    public ArrayList<String> posgraduacao = new ArrayList();
    public ArrayList<String> projetoextensao = new ArrayList();
    
    
    //metodo
    public Graduacao(){
        preenchergraduacao();
        preencherposgraduacao();
        preencherprojetoextensao();
    }
    
    public void preenchergraduacao(){
         graduacoes.add("");
         graduacoes.add("Estomatopatologia I,II e III - Consulta odontológica");
         graduacoes.add("Endodontia II - dentes anteriores e pré molares");
         graduacoes.add("Endodotia III - dentes anteriores e posteriores");
         graduacoes.add("Dentística II - pequenas rest. de amálgama, resina composta e cimento de ionômero de vidro");
         graduacoes.add("Dentística III - rest. maiores de amálgama, resina composta, clareamento e facetas diretas");
         graduacoes.add("Restauradora - rest. indiretas, Inlay, Onlay e facetas indiretas");
         graduacoes.add("Periodontia II - exames perio e RAR");
         graduacoes.add("Periodontia III - RAR e cirurgias periodontais");
         graduacoes.add("Odontopediatria I - 6 a 12 anos 1° Semestre");
         graduacoes.add("Odontopediatria II - 6 a 12 anos 2° Semestre");
         graduacoes.add("Est. Sup. Clínica Integrada I (cite pelo menos 3 disciplinas)");
         graduacoes.add("Est. Sup. Clínica Integrada II (cite pelo menos 3 disciplinas)");
         graduacoes.add("Prótese Parcial Fixa III - de 1 a 5 elementos");
         graduacoes.add("Prótese Total - NÃO imediata");
         graduacoes.add("Est. Sup. Clínica Int. Reabilitadora I - PT imediata e PPR");
         graduacoes.add("Est. Sup. Clínica Int. Reabilitadora II - PT imediata e PPR, DTM e overdenture");
         graduacoes.add("Cirurgia BMF II - exodontia simples");
         graduacoes.add("Cirurgia BMF III - exodontia simples e cirurgias pré-protéticas");
         graduacoes.add("Cirurgia BMF IV - exodontia de terceiros molares irrompidos");
    }
    
    public void preencherposgraduacao(){
               posgraduacao.add("");
               posgraduacao.add("Aperfeiçoamento em Cirurgia - dentes não irrompidos e cirurgias avançadas");
               posgraduacao.add("Aperfeiçoamento em Prótese");
               posgraduacao.add("Implante");
    }
    
    public void preencherprojetoextensao(){
               projetoextensao.add("");
               projetoextensao.add("Ambulatório de Estomatopatologia - Patologias bucais");
               projetoextensao.add("PAIPE - Pacientes com necessidades especiais");
               projetoextensao.add("Plantão de Implante");
    }
    
}
