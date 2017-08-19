package com.example.borges.docatz1;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.Toast;

import com.example.borges.docatz1.beans.Clinica;
import com.example.borges.docatz1.converter.clinicaconverter;

import java.util.List;

/**
 * Created by borges on 25/02/2017.
 */

public class ClinicaTask extends AsyncTask<Object, Object, String> {
   private final String url = "http://172.0.0.1:8080/Docatz/get_clinica_json";
    private static String TAG_LOGCAT = ClinicaTask.class.getName();
    private Context context;
    private ProgressDialog dialog;

    public ClinicaTask(Context context){
        this.context = context;
    }

    protected void onPreExecute(){
        dialog = ProgressDialog.show(context,"Aguarde..",
                "Recebendo dados",true,true);
    }

    protected void onPostExecute(String result){
        dialog.dismiss();
        Toast.makeText(context, "Processamento Concluido", Toast.LENGTH_LONG).show();
    }

    @Override
    protected String doInBackground(Object... params) {
        String jsonResposta = new WebClient(url).post("{\"metodo\":\"get_clinica_json\"}");
        Log.i(TAG_LOGCAT, "Json Recebido: "+jsonResposta);
        List<Clinica> lista = new clinicaconverter().fromJSON(jsonResposta);
        Log.i(TAG_LOGCAT, "Lista gerada: "+lista);

        return jsonResposta;
    }
}
