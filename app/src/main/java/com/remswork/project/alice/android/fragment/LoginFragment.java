package com.remswork.project.alice.android.fragment;


import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.design.widget.TextInputLayout;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;

import com.remswork.project.alice.android.R;

/**
 * Created by Rem-sama on 8/18/2017.
 */

public class LoginFragment extends android.support.v4.app.Fragment implements View.OnClickListener{

    private Context context;
    private LoginFragmentListener loginFragmentListener;
    private TextInputLayout textInputLayoutEmail;
    private TextInputLayout textInputLayoutPassword;
    private EditText textEmail;
    private EditText textPassword;
    private Button buttonLogin;

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        Log.i("myTAG", "onCreateView");
        View customView = inflater.inflate(R.layout.fragment_login, container, false);
        textInputLayoutEmail =
                (TextInputLayout) customView.findViewById(R.id.fragment_login_email_layout);
        textInputLayoutPassword =
                (TextInputLayout) customView.findViewById(R.id.fragment_login_password_layout);
        textEmail = (EditText) customView.findViewById(R.id.fragment_login_text_email);
        textPassword = (EditText) customView.findViewById(R.id.fragment_login_text_password);
        buttonLogin = (Button) customView.findViewById(R.id.fragment_login_button_login);
        buttonLogin.setOnClickListener(this);
        return customView;
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
        this.context = context;
        loginFragmentListener = (LoginFragmentListener) context;
        Log.i("myTAG", "onAttach");
    }

    public boolean isInputValid() {
        boolean isValid = true;
        if(textEmail.getText().toString().trim().equals("")){
            textInputLayoutEmail.setError(getString(R.string.msg_no_email_error));
            isValid = false;
        }else {
            textInputLayoutEmail.setErrorEnabled(false);
        }
        if(textPassword.getText().toString().trim().equals("")){
            textInputLayoutPassword.setError(getString(R.string.msg_no_password_error));
            isValid = false;
        }else {
            textInputLayoutPassword.setErrorEnabled(false);
        }
        return isValid;
    }

    public void loginClick() {

        if(isInputValid() && loginFragmentListener != null)
            loginFragmentListener.doLogin(textEmail.getText().toString().trim(),
                    textPassword.getText().toString().trim());
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()){
            case R.id.fragment_login_button_login :
                loginClick();
                break;
            default :
                break;
        }
    }

    public interface LoginFragmentListener {
        public void doLogin(String email, String password);
    }
}
