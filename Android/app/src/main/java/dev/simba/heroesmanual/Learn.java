package dev.simba.heroesmanual;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;

import junit.framework.Test;

public class Learn extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().setStatusBarColor(getResources().getColor(R.color.secondaryDarkColor));
        getWindow().requestFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.activity_learn_more);

        findViewById(R.id.imgBtnGeneralInfo).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(getApplicationContext(), GeneralInfo.class));
            }
        });

        findViewById(R.id.imgBtnVictimInfo).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(getApplicationContext(), VictimInfo.class));
            }
        });

        findViewById(R.id.imgBtnPerpatratorInfo).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(getApplicationContext(), PerpatratorInfo.class));
            }
        });

        findViewById(R.id.imgBtnLearnScreeningInfo).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(getApplicationContext(), ScreenForDV.class));
            }
        });

        findViewById(R.id.imgBtnLearnWhatToSay).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(getApplicationContext(), WhatToSay.class));
            }
        });

        findViewById(R.id.imgBtnLearnSafetyPlan).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(getApplicationContext(), SafetyPlan.class));
            }
        });

        findViewById(R.id.btnTestYourKnowledge).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(getApplicationContext(), TestYourKnowledge.class));
            }
        });
    }
}
