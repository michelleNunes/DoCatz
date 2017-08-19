package com.example.borges.docatz1.beans;

import java.io.Serializable;

/**
 * Created by borges on 08/12/2016.
 */


public class Bairro implements Serializable {

    private int cod;
    private String nome;
    private Zona cod_zona;

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

    public Zona getCod_zona() {
        return cod_zona;
    }

    public void setCod_zona(Zona cod_zona) {
        this.cod_zona = cod_zona;
    }
}

