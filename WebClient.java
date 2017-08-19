package com.example.borges.docatz1;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * Created by borges on 25/02/2016.
 */
public class WebClient {

    private String urlWebService;

    public WebClient(String urlWebService){
        this.urlWebService = urlWebService;
    }

    private String getStringFromInputStream(InputStream is){
        BufferedReader reader=null;
        StringBuilder texto = new StringBuilder();
        String line;

        try{
            reader = new BufferedReader(new InputStreamReader(is));
            while ((line = reader.readLine())!=null){
                texto.append(line);
            }

        }catch (IOException e){
            e.printStackTrace();
        }finally {
            if (reader!=null){
                try{
                    reader.close();
                }catch (IOException e){
                    e.printStackTrace();
                }
            }
        }
        return texto.toString();
    }

    public String post(String json){
        HttpURLConnection httpURLConnection = null;
        try{
            URL url = new URL(this.urlWebService);
            httpURLConnection = (HttpURLConnection)url.openConnection();
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("Content-type", "application/json;charset=utf-8");
            //Coloca a string json no conteudo a ser enviado
            httpURLConnection.setRequestProperty("Accept", "application/json;charset=utf-8");
            //Envio do Json para o server
            OutputStream out = httpURLConnection.getOutputStream();
            out.write(json.getBytes());
            //Analise da resposta do server
            if (httpURLConnection.getResponseCode() == HttpURLConnection.HTTP_OK){
                InputStream is = httpURLConnection.getInputStream();
                return getStringFromInputStream(is);
            }
        }catch (Exception e){
            throw  new RuntimeException(e);
        }
        return null;
    }

}
