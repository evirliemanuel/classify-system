package com.remswork.project.alice.android;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.Toast;

import com.remswork.project.alice.android.fragment.LoginFragment;
import com.remswork.project.alice.exception.TeacherException;
import com.remswork.project.alice.model.Teacher;
import com.remswork.project.alice.service.impl.TeacherServiceImpl;

public class LoginActivity extends AppCompatActivity implements LoginFragment.LoginFragmentListener{

    private ProgressBar textView;
    private Handler handler;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        getSupportActionBar().setTitle("Teacher's Assistant APP");
        textView = (ProgressBar) findViewById(R.id.welcome);
        handler = new Handler(this.getMainLooper());
    }

    @Override
    protected void onResume() {
        super.onResume();
        textView.setVisibility(View.INVISIBLE);
    }

    @Override
    public void doLogin(final String email, final String password) {
        textView.setVisibility(View.VISIBLE);
        new Thread(new Runnable() {
            @Override
            public void run() {

                try {
                    Thread.sleep(2000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }

                TeacherServiceImpl teacherService = new TeacherServiceImpl(LoginActivity.this);
                boolean isVaild = false;
                Teacher teacher = null;
                try {
                    for(Teacher t : teacherService.getTeacherList()) {
                        if(t.getUserDetail().getUsername().equals(email) &&
                                t.getUserDetail().getPassword().equals(password)) {
                            isVaild = true;
                            teacher = t;
                        }
                    }
                } catch (TeacherException e) {
                    e.printStackTrace();
                }
                if(isVaild) {
                    Intent intent = new Intent(LoginActivity.this, MainActivity.class);
                    startActivity(intent);
                } else
                    handler.post(new Runnable() {
                        @Override
                        public void run() {
                            Toast.makeText(LoginActivity.this, "Failed",Toast.LENGTH_LONG).show();
                            textView.setVisibility(View.INVISIBLE);
                        }
                    });
            }
        }).start();

    }
}
