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
public class Escolaridade {
     public ArrayList<String> estudo = new ArrayList();
    
    //metodo
    public Escolaridade(){
        preencherestudo();
    }
    
    public void preencherestudo(){
        estudo.add("");
        estudo.add("ANALFABETO");
        estudo.add("FUNDAMENTAL INCOMPLETO");
        estudo.add("FUNDAMENTAL COMPLETO");
        estudo.add("ENSINO MÉDIO INCOMPLETO");
        estudo.add("ENSINO MÉDIO COMPLETO");
        estudo.add("SUPERIOR INCOMPLETO");
        estudo.add("SUPERIOR COMPLETO");
               
    }
}
