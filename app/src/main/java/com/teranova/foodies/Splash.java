package com.teranova.foodies;

import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.AsyncTask;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.Toast;

import org.json.JSONArray;
import org.json.JSONObject;

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

public class Splash extends AppCompatActivity {
    public static final String MY_PREFS_NAME = "MyPrefsFile";
    String nam,pass;
    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_splash);
        Thread background = new Thread() {
            public void run() {
                try {
                    // Thread will sleep for 5 seconds
                    sleep(2*1000);

                    //Just comment this line to make it logout
                    SharedPreferences prefs = getSharedPreferences(MY_PREFS_NAME, MODE_PRIVATE);
                    nam = prefs.getString("username", "0");
                    pass = prefs.getString("password","0");
                    if (nam == "0" && pass == "0"){
                        startActivity(new Intent(getApplicationContext(), Login.class));
                    }else{
                        new AsyncLogin().execute(nam, pass);

                        //startActivity(new Intent(getApplicationContext(), menu.class));
                    }


                } catch (Exception e) {

                }
            }
        };
        // start thread
        background.start();
    }
    public class AsyncLogin extends AsyncTask<String, String, String>
    {

        HttpURLConnection conn;
        URL url = null;

        @Override
        protected void onPreExecute() {
            super.onPreExecute();

            //this method will be running on UI thread


        }
        @Override
        protected String doInBackground(String... params) {
            try {

                // Enter URL address where your php file resides
                url = new URL("http://foodie.sanila.tech/tera/login.php");
            } catch (MalformedURLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
                return "exception";
            }
            try {
                // Setup HttpURLConnection class to send and receive data from php and mysql
                conn = (HttpURLConnection)url.openConnection();
                //conn.setReadTimeout(READ_TIMEOUT);
                conn.setReadTimeout(30000);
                //conn.setConnectTimeout(CONNECTION_TIMEOUT);
                conn.setConnectTimeout(30000);
                conn.setRequestMethod("POST");

                // setDoInput and setDoOutput method depict handling of both send and receive
                conn.setDoInput(true);
                conn.setDoOutput(true);

                // Append parameters to URL
                Uri.Builder builder = new Uri.Builder()
                        .appendQueryParameter("user_name", params[0])
                        .appendQueryParameter("password", params[1]);


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

                    return("un");
                }

            } catch (IOException e) {
                e.printStackTrace();
                return "un";
            } finally {
                conn.disconnect();
            }
        }

        @Override
        protected void onPostExecute(String result) {
            try {

                JSONArray jsonarray = new JSONArray(result);
                JSONObject jsonobject = jsonarray.getJSONObject(0);
                String status = jsonobject.getString("cusid");

                if(!status.equals("0")) {

                    Intent intent = new Intent(Splash.this,menu.class);
                    startActivity(intent);
                    finish();

                }else if (status.equalsIgnoreCase("0")){
                    // If username and password does not match display a error message
                    Intent intent1 = new Intent(Splash.this,Login.class);
                    startActivity(intent1);
                    finish();
                }


            } catch (Exception e) {
                e.printStackTrace();
                Toast.makeText(Splash.this, "OOPs! Connection Problem!", Toast.LENGTH_LONG).show();
                finish();
            }
        }
    }
}
