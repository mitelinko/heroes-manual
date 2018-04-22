package dev.simba.heroesmanual;

import android.app.Activity;
import android.os.Bundle;
import android.view.Window;

public class ScreenForDV extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().setStatusBarColor(getResources().getColor(R.color.primaryDarkColor));
        getWindow().requestFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.activity_screen_for_dv);
    }
}
