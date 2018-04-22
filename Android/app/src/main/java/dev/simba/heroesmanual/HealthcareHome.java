package dev.simba.heroesmanual;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.view.Window;

public class HealthcareHome extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().setStatusBarColor(getResources().getColor(R.color.primaryDarkColor));
        getWindow().requestFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.activity_healthcare_home);

        SharedPreferences sharedPref = getSharedPreferences(getString(R.string.keyAppPreferences), Context.MODE_PRIVATE);
        SharedPreferences.Editor editor = sharedPref.edit();
        editor.putBoolean(getString(R.string.keyDisclaimerAccepted), true);
        editor.apply();

        findViewById(R.id.imgBtnResources).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(getApplicationContext(), ResourcesPage.class));
            }
        });

        findViewById(R.id.imgBtnScreenForDV).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(getApplicationContext(), ScreenForDV.class));
            }
        });

        findViewById(R.id.imgBtnLearn).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(getApplicationContext(), Learn.class));
            }
        });

        findViewById(R.id.imgBtnWhatToSay).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(getApplicationContext(), WhatToSay.class));
            }
        });
    }
}
