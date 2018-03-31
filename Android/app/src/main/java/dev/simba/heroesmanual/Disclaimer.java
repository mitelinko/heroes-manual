package dev.simba.heroesmanual;

import android.app.Activity;
import android.os.Bundle;
import android.view.Window;

public class Disclaimer extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().requestFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.activity_disclaimer);

    }
}
