package com.example.labspam;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import com.example.labspam.ui.login.LoginActivity;

public class WelcomeScreen extends AppCompatActivity {
    private Button registerButton;
    private Button sigInButton;
    private Button emergenceButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_welcome_screen);
        registerButton = findViewById(R.id.registerButton);
        sigInButton = findViewById(R.id.sigInButton);
        emergenceButton = findViewById(R.id.emergenceButton);

        sigInButton.setOnClickListener(
                new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        startActivity(new Intent(getApplicationContext(), LoginActivity.class));
                    }
                }
        );

        registerButton.setOnClickListener(
                new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        startActivity(new Intent(getApplicationContext(), RegisterUser.class));
                    }
                }
        );

        emergenceButton.setOnClickListener(
                new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        startActivity(new Intent(getApplicationContext(), DoctorList.class));
                    }
                }
        );
    }
}
