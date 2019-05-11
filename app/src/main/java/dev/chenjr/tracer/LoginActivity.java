package dev.chenjr.tracer;

import android.Manifest;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.support.design.widget.Snackbar;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.widget.Button;
import android.widget.EditText;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Arrays;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import dev.chenjr.tracer.bean.User;
import dev.chenjr.tracer.db.DatabaseHelper;
import dev.chenjr.tracer.db.UserDao;
import dev.chenjr.tracer.utils.StatusConstant;
import dev.chenjr.tracer.utils.Util;

import static dev.chenjr.tracer.utils.StatusConstant.LOGIN_SUCCESS;

public class LoginActivity extends AppCompatActivity {

    private static final String TAG = "LoginActivity";
    @BindView(R.id.et_login_account)
    EditText account;
    @BindView(R.id.et_login_password)
    EditText password;
    @BindView(R.id.btn_login_login)
    Button loginBtn;
    String user;
    String pass;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        ButterKnife.bind(this);


    }

    @OnClick(R.id.btn_login_login)
    protected void onLoginClicked() {
        if (checkSelfPermission(Manifest.permission.INTERNET) != PackageManager.PERMISSION_GRANTED) {
            Log.i(TAG, "onLoginClicked: Granting Permission!");
            requestPermissions(new String[]{
                    Manifest.permission.INTERNET
            }, 1);
        }
        user = account.getText().toString();
        pass = password.getText().toString();
        if ("".equals(user)) {
            showSnackbar("Please input account ");
            return;
        }
        if ("".equals(pass)) {
            showSnackbar("Please input password ");
            return;
        }
        new AuthTask().execute(user, pass);
        String passMD5 = Util.string2MD5(pass);


        Log.i(TAG, "onLoginClicked: " + passMD5);


    }

    private void showSnackbar(String s) {
        Snackbar.make(loginBtn, s, Snackbar.LENGTH_LONG)
                .setAction("Action", null).show();
    }

    class AuthTask extends AsyncTask<String, Integer, Integer> {

        @Override
        protected Integer doInBackground(String... strings) {
            Log.d(TAG, "doInBackground: " + Arrays.toString(strings));

            try {
                return new UserDao().authUser(user, Util.string2MD5(pass));
            } catch (SQLException e) {
                e.printStackTrace();
                return StatusConstant.LOGIN_EXCEPTION_OCCURS;
            }

        }

        @Override
        protected void onPostExecute(Integer result) {
            if (result > 0) {
                showSnackbar("Username or password MISMATCH!");
            } else if (result == LOGIN_SUCCESS) {
                showSnackbar("Login Success!");
                startActivity(new Intent(LoginActivity.this, MainActivity.class));
            } else {
                showSnackbar("Error occurs :(");

            }

        }
    }


}
