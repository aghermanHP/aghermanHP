package com.example.labspam;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;

public class SplashScreen extends AppCompatActivity {
    private ImageView imageView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_splash_screen);
        imageView = findViewById(R.id.imageView);

        new android.os.Handler().postDelayed(
                new Runnable() {
                    public void run() {
                        startActivity(new Intent(getApplicationContext(), WelcomeScreen.class));
                    }
                }, 2000);

        // or we can go to the next screen with an click on the splashScreen
       imageView.setOnClickListener(
               new View.OnClickListener() {
                       @Override
                       public void onClick(View v) {
                           startActivity(new Intent(getApplicationContext(), WelcomeScreen.class));
                       }
               }
       );
    }
}
