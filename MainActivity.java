package com.example.borges.docatz1;

import android.app.ListActivity;
import android.os.Bundle;

public class MainActivity extends ListActivity {


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        new ClinicaTask(this).execute();


    }
}
