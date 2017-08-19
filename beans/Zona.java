package com.example.borges.docatz1.beans;

import java.io.Serializable;

/**
 * Created by borges on 08/12/2016.
 */


public class Zona implements Serializable {

    private int cod;
    private String nome;

    public int getCod() {
        return cod;
    }

    public void setCod(int cod) {
        this.cod = cod;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}

