package dev.simba.heroesmanual;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.Toast;

public class Disclaimer extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().setStatusBarColor(getResources().getColor(R.color.primaryDarkColor));
        getWindow().requestFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.activity_disclaimer);

        findViewById(R.id.buttonAcceptDisclaimer).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(getApplicationContext(), HealthcareHome.class));
            }
        });

        if (getSharedPreferences(getString(R.string.keyAppPreferences), Context.MODE_PRIVATE).getBoolean(getString(R.string.keyDisclaimerAccepted), false)) {
            startActivity(new Intent(this, HealthcareHome.class).addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP | Intent.FLAG_ACTIVITY_NEW_TASK));
        }
    }
}
