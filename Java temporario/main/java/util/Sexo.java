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
public class Sexo {
   public ArrayList<String> sexos = new ArrayList();
    
    //metodo
    public Sexo(){
        preenchersexo();
    }
    
    public void preenchersexo(){
        sexos.add("");
        sexos.add("Masculino");
        sexos.add("Feminino");
        sexos.add("Outro");
    }
}
