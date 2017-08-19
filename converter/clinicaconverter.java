package com.example.borges.docatz1.converter;

import com.example.borges.docatz1.beans.Clinica;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;
/**
 * Created by borges on 23/02/2017.
 */

public class clinicaconverter {


public List<Clinica> fromJSON(String jsonRecebido){
    List<Clinica> lista = new ArrayList<Clinica>();
    try{
        JSONObject jsonObject = new JSONObject(jsonRecebido);
        JSONArray listadeClinicas = jsonObject.getJSONArray("get_clinica_json");
        for(int i=0;i<listadeClinicas.length();i++){
            JSONObject clinicajson = listadeClinicas.getJSONObject(i);
            Clinica clinica = new Clinica();
            clinica.setNome(clinicajson.getString("Clinica"));
            clinica.setEndereco(clinicajson.getString("Endereco"));
            clinica.setCep(clinicajson.getString("Cep"));
            clinica.getCod_bairro().setNome(clinicajson.getString("Bairro"));
            clinica.setTelefone(clinicajson.getInt("Telefone"));
            clinica.setHorario(clinicajson.getString("Horario"));
            lista.add(clinica);

        }
    }
    catch(JSONException exception){
        exception.printStackTrace();
    }

    return lista;

}

}
