package com.teranova.foodies;

import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;


import com.teranova.foodies.adapter.FoodListAdapter2;
import com.teranova.foodies.conection.conurl;
import com.teranova.foodies.model.ItemsData2;

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
import java.text.SimpleDateFormat;
import java.util.ArrayList;


/**
 * Created by Sheha Dulanjaya on 9/16/2017.
 */

public class Tab1food extends Fragment {


    ListView listView;
    ArrayList<ItemsData2> list;
    SimpleDateFormat inputParser;


    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {


            View rootView = inflater.inflate(R.layout.tab1foods, container,false);

        listView  = (ListView) rootView.findViewById(R.id.listviewT1);
        list = new ArrayList<>();
        new Tab1food.GetFoodList().execute("rice");


        return rootView;

    }





    private class GetFoodList extends AsyncTask<String, String, String> {
        HttpURLConnection conn;
        URL url = null;

        @Override
        protected void onPreExecute() {
            super.onPreExecute();


        }
        @Override
        protected String doInBackground(String... params) {
            String foodtype = params[0];

            conurl cn = new conurl();

                try {


                    URL url = new URL(cn.url("foodlist.php"));
                    HttpURLConnection httpURLConnection = (HttpURLConnection)url.openConnection();
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setDoInput(true);
                    OutputStream outputStream = httpURLConnection.getOutputStream();
                    BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, "UTF-8"));
                    String post_data = URLEncoder.encode("avail_time","UTF-8")+"="+URLEncoder.encode(foodtype,"UTF-8");
                    bufferedWriter.write(post_data);
                    bufferedWriter.flush();
                    bufferedWriter.close();
                    outputStream.close();
                    InputStream inputStream = httpURLConnection.getInputStream();
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream,"iso-8859-1"));
                    String result="";
                    String line="";
                    while((line = bufferedReader.readLine())!= null) {
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
            try {
                JSONArray jsonarray = new JSONArray(s);
                // list = new ArrayList<>();
                for(int l=0; l<jsonarray.length(); l++) {
                    JSONObject jsonobject = jsonarray.getJSONObject(l);
                    list.add(new ItemsData2(jsonobject.getString("fname"),
                            jsonobject.getString("price"),
                            jsonobject.getString("description"),
                            jsonobject.getString("fid"),
                            jsonobject.getString("type")));



                    FoodListAdapter2 foodListAdapter = new FoodListAdapter2(getActivity(),list);
                    listView.setAdapter(foodListAdapter);

                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }



}
