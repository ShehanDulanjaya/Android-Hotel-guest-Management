package com.teranova.foodies;

import android.app.ProgressDialog;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.TextView;

import com.teranova.foodies.conection.conurl;

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
import java.net.URLEncoder;

public class Billinfo extends AppCompatActivity {
    private SwipeRefreshLayout swipeContainer;

    String userid,nic,room;
    public static final String MY_PREFS_NAME = "MyPrefsFile";
    TextView t2,t4,t6,t8,t10,t12,t14,t16,t18,t20,totval;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_billinfo);
        SharedPreferences prefs = getSharedPreferences(MY_PREFS_NAME, MODE_PRIVATE);
        userid = prefs.getString("userid", "0");
        room=prefs.getString("username","0");
        nic=prefs.getString("password","0");
        new Billinfo.Bill().execute(userid,nic,room);
        swipeContainer = (SwipeRefreshLayout) findViewById(R.id.swipeContainer13);
        swipeContainer.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() {
            @Override

            public void onRefresh() {

                refresh();

            }
        });
    }

    private void refresh(){


        new Billinfo.Bill().execute(userid,nic,room);
        swipeContainer.setRefreshing(false);

    }


        public void findids(){


        t2=(TextView) findViewById(R.id.tx2);

        t4=(TextView) findViewById(R.id.tx4);

        t6=(TextView) findViewById(R.id.tx6);
        t8=(TextView) findViewById(R.id.tx8);

        t10=(TextView) findViewById(R.id.tx10);

        t12=(TextView) findViewById(R.id.tx12);

        t14=(TextView) findViewById(R.id.tx14);

        t16=(TextView) findViewById(R.id.tx16);

        t18=(TextView) findViewById(R.id.tx18);

     //   t20=(TextView) findViewById(R.id.tx20);

        totval=(TextView) findViewById(R.id.txTotval);



    }
    private class Bill extends AsyncTask<String, String, String> {
        ProgressDialog pdLoading = new ProgressDialog(Billinfo.this);
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
                String fooddesc = params[0];
                String orderqty = params[1];
                String userid = params[2];


                URL url = new URL(cn.url("bill.php"));
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setDoInput(true);
                OutputStream outputStream = httpURLConnection.getOutputStream();
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, "UTF-8"));
                String post_data = URLEncoder.encode("id", "UTF-8") + "=" + URLEncoder.encode(fooddesc, "UTF-8") + "&"
                        + URLEncoder.encode("nic", "UTF-8") + "=" + URLEncoder.encode(orderqty, "UTF-8") + "&"
                        + URLEncoder.encode("roomNo", "UTF-8") + "=" + URLEncoder.encode(userid, "UTF-8");
                bufferedWriter.write(post_data);
                bufferedWriter.flush();
                bufferedWriter.close();
                outputStream.close();
                InputStream inputStream = httpURLConnection.getInputStream();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "iso-8859-1"));
                String result = "";
                String line = "";
                while ((line = bufferedReader.readLine()) != null) {
                    result += line;
                }
                bufferedReader.close();
                inputStream.close();
                httpURLConnection.disconnect();
                return result;
            } catch (MalformedURLException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }

            return null;
        }

        @Override
        protected void onPostExecute(String s) {
            findids();
            pdLoading.dismiss();
            try {
                JSONArray jsonarray = new JSONArray(s);
                for(int l=0; l<jsonarray.length(); l++) {
                    JSONObject jsonobject = jsonarray.getJSONObject(l);
                    t2.setText(room);
                    t4.setText(jsonobject.getString("priceRoom"));
                    t6.setText(jsonobject.getString("dates"));
                    t8.setText(jsonobject.getString("roomChag"));
                    t10.setText(jsonobject.getString("serSec"));
                    t12.setText(jsonobject.getString("serLaun"));
                    t14.setText(jsonobject.getString("serRoom"));
                    t16.setText(jsonobject.getString("priceDel"));
                    t18.setText(jsonobject.getString("priceFood"));
                    //t20.setText(jsonobject.getString("tour"));
                    totval.setText("Rs: "+jsonobject.getString("total"));
                }
            }catch (Exception e) {
                e.printStackTrace();
            }

        }


    }


}
