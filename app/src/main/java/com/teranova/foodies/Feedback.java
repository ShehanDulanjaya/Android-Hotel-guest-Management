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
import android.widget.RatingBar;
import android.widget.Toast;

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

public class Feedback extends AppCompatActivity {
RatingBar r1,r2,r3 ;
    String rat1,rat2,rat3;
    EditText name;
    Button submit;
    String com,userid,room;
    public static final String MY_PREFS_NAME = "MyPrefsFile";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_feedback);

        SharedPreferences prefs = getSharedPreferences(MY_PREFS_NAME, MODE_PRIVATE);
        userid = prefs.getString("userid", "0");
        room=prefs.getString("username", "0");
        findids();

        submit.setOnClickListener(new View.OnClickListener() {
            @Override

            public void onClick(View view) {
                rat1=String.valueOf(r1.getRating());
                rat2=String.valueOf(r2.getRating());
                rat3=String.valueOf(r3.getRating());
                com=name.getText().toString();
                if (r1.getRating()==0||r2.getRating()==0||r3.getRating()==0) {
                    Toast.makeText(Feedback.this, "All Fields Required", Toast.LENGTH_SHORT).show();

                }
                else{
                    if(com.equals("")){
                        com="no comment";
                    }
                    new Feedback.sendOrder().execute(rat1, rat2, rat3, userid, com,room);
                }
            }
        });

    }






    public void findids(){

        r1=(RatingBar) findViewById(R.id.ratingBar);
        r2=(RatingBar) findViewById(R.id.ratingBar2);
        r3=(RatingBar) findViewById(R.id.ratingBar3);

        name = (EditText) findViewById(R.id.addserv);
        submit=(Button) findViewById(R.id.button5);
    }



    private class sendOrder extends AsyncTask<String, String, String>
    {
        ProgressDialog pdLoading = new ProgressDialog(Feedback.this);
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
            try {

                // Enter URL address where your php file resides
                url = new URL("http://foodie.sanila.tech/tera/feedback.php");
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
                        .appendQueryParameter("q1", params[0])
                        .appendQueryParameter("q2", params[1])
                        .appendQueryParameter("q3", params[2])
                        .appendQueryParameter("fkuserID", params[3])
                        .appendQueryParameter("comment", params[4])
                        .appendQueryParameter("room", params[5]);

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

                Toast.makeText(Feedback.this,result,Toast.LENGTH_SHORT).show();
            finish();

        }
    }

}
