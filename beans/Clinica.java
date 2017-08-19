package com.example.borges.docatz1.beans;

import java.io.Serializable;

/**
 * Created by borges on 08/12/2016.
 */


public class Clinica implements Serializable {

    private static final long serialVersionUID = 1L;
    private int cod;
    private String nome;
    private String endereco;
    private String cep;
    private int telefone;
    private String horario;
    private Bairro cod_bairro;




    @Override
    public String toString() {
        return "Clinica:" + nome +
                ", Endereco:'" + endereco +","  + cep + '\''+
                "Telefone:" + telefone +
                "Horario de atendimento:'" + horario + '\'';

    }

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

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public int getTelefone() {
        return telefone;
    }

    public void setTelefone(int telefone) {
        this.telefone = telefone;
    }

    public String getHorario() {
        return horario;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }

    public Bairro getCod_bairro() {
        return cod_bairro;
    }

    public void setCod_bairro(Bairro cod_bairro) {
        this.cod_bairro = cod_bairro;
    }
}
