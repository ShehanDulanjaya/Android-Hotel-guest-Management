package com.teranova.foodies;

import android.app.ProgressDialog;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.AsyncTask;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.teranova.foodies.conection.conurl;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

public class addservice extends AppCompatActivity {
    EditText name,comment,room;
    String name_str,commnent_str,room_str,userid;
    Button btn;
    public static final String MY_PREFS_NAME = "MyPrefsFile";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_addservice);
        SharedPreferences prefs = getSharedPreferences(MY_PREFS_NAME, MODE_PRIVATE);
        userid = prefs.getString("userid", "0");
        room_str=prefs.getString("username", "0");
        name=(EditText) findViewById(R.id.servName);
        comment=(EditText) findViewById(R.id.addserv);
        btn=(Button)findViewById(R.id.servbtn);

        btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (name.getText().length() != 0) {
                    if (comment.getText().length() != 0) {
                        name_str=name.getText().toString();
                        commnent_str=comment.getText().toString();

                        new sendService().execute( userid,room_str ,name_str,commnent_str );

                    } else
                        comment.setError("Explain what you need");
                } else
                    name.setError("Enter Your Request");




            }
        });}

    private class sendService extends AsyncTask<String, String, String>
    {
        ProgressDialog pdLoading = new ProgressDialog(addservice.this);
        HttpURLConnection conn;
        URL url = null;

        @Override
        protected void onPreExecute() {
            super.onPreExecute();

            //this method will be running on UI thread
            pdLoading.setMessage("\tLoading...");
            pdLoading.setCancelable(false);
            pdLoading.show();

        }
        @Override
        protected String doInBackground(String... params) {
            conurl cn = new conurl();
            try {

                // Enter URL address where your php file resides
                url = new URL(cn.url("setService.php"));
            } catch (MalformedURLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
                return "exception";
            }
            try {
                // Setup HttpURLConnection class to send and receive data from php and mysql
                conn = (HttpURLConnection)url.openConnection();
                //conn.setReadTimeout(READ_TIMEOUT);
                conn.setReadTimeout(50000);
                //conn.setConnectTimeout(CONNECTION_TIMEOUT);
                conn.setConnectTimeout(50000);
                conn.setRequestMethod("POST");

                // setDoInput and setDoOutput method depict handling of both send and receive
                conn.setDoInput(true);
                conn.setDoOutput(true);

                // Append parameters to URL
                Uri.Builder builder = new Uri.Builder()
                        .appendQueryParameter("cusid", params[0])
                        .appendQueryParameter("room", params[1])
                        .appendQueryParameter("serName", params[2])
                        .appendQueryParameter("comment", params[3]);

                String query = builder.build().getEncodedQuery();

                // Open connection for sending data
                OutputStream os = conn.getOutputStream();
                BufferedWriter writer = new BufferedWriter(
                        new OutputStreamWriter(os, "UTF-8"));
                writer.write(query);
                writer.flush();
                writer.close();
                os.close();
                conn.connect();

            } catch (IOException e1) {
                // TODO Auto-generated catch block
                e1.printStackTrace();
                return "exception";
            }

            try {

                int response_code = conn.getResponseCode();

                // Check if successful connection made
                if (response_code == HttpURLConnection.HTTP_OK) {

                    // Read data sent from server
                    InputStream input = conn.getInputStream();
                    BufferedReader reader = new BufferedReader(new InputStreamReader(input));
                    StringBuilder result = new StringBuilder();
                    String line;

                    while ((line = reader.readLine()) != null) {
                        result.append(line);
                    }

                    // Pass data to onPostExecute method
                    return(result.toString());

                }else{

                    return("unsuccessful");
                }

            } catch (IOException e) {
                e.printStackTrace();
                return "exception";
            } finally {
                conn.disconnect();
            }
        }

        @Override
        protected void onPostExecute(String result) {
            pdLoading.dismiss();
            if(result.equals("")){
                result="Service Request Failed";
                Toast.makeText(addservice.this, result, Toast.LENGTH_SHORT).show();
            }
            else {
                Toast.makeText(addservice.this, result, Toast.LENGTH_SHORT).show();
                name.setText("");
                comment.setText("");
            }

        }
    }




}
