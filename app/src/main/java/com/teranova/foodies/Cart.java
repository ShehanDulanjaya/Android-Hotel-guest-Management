package com.teranova.foodies;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.teranova.foodies.adapter.CartAdapter;
import com.teranova.foodies.conection.conurl;
import com.teranova.foodies.model.CartData;
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
import java.util.ArrayList;

public class Cart extends AppCompatActivity {
    private SwipeRefreshLayout swipeContainer;
    public static final String MY_PREFS_NAME = "MyPrefsFile";
    String roomid;
    ListView listView;
    TextView total;
    ArrayList<CartData> list;
    int n;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_cart);
        Button checkout;
        checkout =(Button) findViewById(R.id.check);

        SharedPreferences prefs = getSharedPreferences(MY_PREFS_NAME, MODE_PRIVATE);
        roomid = prefs.getString("username", "0");
        total=(TextView) findViewById(R.id.totdis) ;
        listView  = (ListView) findViewById(R.id.listview4);
        list = new ArrayList<>();
        new Cart.GetCartList().execute(roomid);



        checkout.setOnClickListener(new View.OnClickListener() {

            public void onClick(View arg0) {
                n= listView.getCount();

                if(n==0){


                    Toast.makeText(Cart.this,"Cart Empty",Toast.LENGTH_SHORT).show();

                }
                else{
                DialogInterface.OnClickListener dialogClickListener = new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        switch (which){
                            case DialogInterface.BUTTON_POSITIVE:

                                new Cart.GetCheckout().execute(roomid);

                                //Yes button clicked
                                break;

                            case DialogInterface.BUTTON_NEGATIVE:
                                //No button clicked
                                break;
                        }
                    }
                };
                AlertDialog.Builder builder = new AlertDialog.Builder(Cart.this);
                builder.setMessage("Checkout Cart?").setPositiveButton("Yes", dialogClickListener).setNegativeButton("No", dialogClickListener).show();

            }}
        });
        swipeContainer = (SwipeRefreshLayout) findViewById(R.id.swipeContainer14);
        swipeContainer.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() {
            @Override

            public void onRefresh() {

                refresh();

            }
        });
    }

    private void refresh(){

        listView  = (ListView) findViewById(R.id.listview4);
        list = new ArrayList<>();
        new Cart.GetCartList().execute(roomid);
        swipeContainer.setRefreshing(false);

    }




    private class GetCartList extends AsyncTask<String, String, String> {
        HttpURLConnection conn;
        URL url = null;

        @Override
        protected void onPreExecute() {
            super.onPreExecute();


        }

        @Override
        protected String doInBackground(String... params) {
            String user = params[0];

            conurl cn = new conurl();

            try {


                URL url = new URL(cn.url("cart.php"));
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setDoInput(true);
                OutputStream outputStream = httpURLConnection.getOutputStream();
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, "UTF-8"));
                String post_data = URLEncoder.encode("id", "UTF-8") + "=" + URLEncoder.encode(user, "UTF-8");
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


                try {
                    JSONArray jsonarray = new JSONArray(s);
                    // list = new ArrayList<>();
                    for (int l = 0; l < jsonarray.length(); l++) {
                        JSONObject jsonobject = jsonarray.getJSONObject(l);
                        String tot= jsonobject.getString("sum");
                        total.setText(" Total :   Rs : "+tot);
                        list.add(new CartData(jsonobject.getString("food_desc"),
                                jsonobject.getString("price"),
                                jsonobject.getString("fk_food_id"),
                                jsonobject.getString("order_quantity")));



                        CartAdapter Cartadap = new CartAdapter(Cart.this, list);
                        listView.setAdapter(Cartadap);



                    }
                } catch (Exception e) {
                    e.printStackTrace();

            }
        }
    }
//
    //
    //
    //checkout function
    //
    //
    public class GetCheckout extends AsyncTask<String, String, String> {
        HttpURLConnection conn;
        URL url = null;

        @Override
        protected void onPreExecute() {
            super.onPreExecute();


        }

        @Override
        protected String doInBackground(String... param) {
            String user = param[0];

            conurl cn1 = new conurl();

            try {


                URL url = new URL(cn1.url("Cartcheck.php"));
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setDoInput(true);
                OutputStream outputStream = httpURLConnection.getOutputStream();
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, "UTF-8"));
                String post_data = URLEncoder.encode("id", "UTF-8") + "=" + URLEncoder.encode(user, "UTF-8");
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


                Toast.makeText(Cart.this,s,Toast.LENGTH_SHORT).show();

            }


    }
}
