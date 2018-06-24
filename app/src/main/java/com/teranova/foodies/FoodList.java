package com.teranova.foodies;

import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.app.AppCompatActivity;
import android.widget.ListView;

import com.teranova.foodies.adapter.FoodListAdapter;
import com.teranova.foodies.conection.conurl;
import com.teranova.foodies.model.ItemsData;

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
import java.text.SimpleDateFormat;
import java.util.ArrayList;

/**
 * Created by Sheha Dulanjaya on 8/13/2017.
 */

public class FoodList extends AppCompatActivity {
    private SwipeRefreshLayout swipeContainer;

    ListView listView;
    ArrayList<ItemsData> list;
    SimpleDateFormat inputParser;
    public static final int CONNECTION_TIMEOUT=10000;
    public static final int READ_TIMEOUT=15000;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.food_list);
        listView = (ListView) findViewById(R.id.listview);
        list = new ArrayList<>();
        new GetFoodList().execute("rice");
        swipeContainer = (SwipeRefreshLayout) findViewById(R.id.swipeContainer);
        swipeContainer.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() {
            @Override

            public void onRefresh() {

               refresh();

            }
        });


    }

private void refresh(){

    listView = (ListView) findViewById(R.id.listview);
    list = new ArrayList<>();
    new GetFoodList().execute("rice");
    swipeContainer.setRefreshing(false);
}




    public class GetFoodList extends AsyncTask<String, String, String> {
        HttpURLConnection conn;
        URL url = null;

        @Override
        protected void onPreExecute() {
            super.onPreExecute();


        }
        @Override
        protected String doInBackground(String... params) {
            conurl cn = new conurl();
            try {

                // Enter URL address where your php file resides
                url = new URL(cn.url("foodlist.php"));
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
                        .appendQueryParameter("avail_time",params[0]);

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
        protected void onPostExecute(String s) {
            try {
                JSONArray jsonarray = new JSONArray(s);
               // list = new ArrayList<>();
                    for(int l=0; l<jsonarray.length(); l++) {
                        JSONObject jsonobject = jsonarray.getJSONObject(l);
                        list.add(new ItemsData(jsonobject.getString("fname"),
                                jsonobject.getString("price"),
                                jsonobject.getString("description"),
                                jsonobject.getString("fid"),
                                jsonobject.getString("type")));


                        FoodListAdapter foodListAdapter = new FoodListAdapter(FoodList.this, list);
                        listView.setAdapter(foodListAdapter);
                    }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }





}
