package com.teranova.foodies;

import android.app.ProgressDialog;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.teranova.foodies.conection.conurl;
import com.teranova.foodies.utilities.MyBroadcastReceiver;

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

/**
 * Created by Sheha Dulanjaya on 8/13/2017.
 */

public class Order extends AppCompatActivity {

    TextView name,price,details,quantity,mins,plus;
    String name_str,price_str,details_str,quantity_str;
    String foodid,userid,roomno,type;
    public static final String MY_PREFS_NAME = "MyPrefsFile";
    String phpName="";
    static int quantity_value=1;
    Button buy,cart;
    private MyBroadcastReceiver alarm;
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.order);
        SharedPreferences prefs = getSharedPreferences(MY_PREFS_NAME, MODE_PRIVATE);
        userid = prefs.getString("userid", "0");
        roomno = prefs.getString("username","0");
        name_str=getIntent().getStringExtra("fname");
        price_str=getIntent().getStringExtra("price");
        details_str=getIntent().getStringExtra("description");
        foodid = getIntent().getStringExtra("fid");
        type= getIntent().getStringExtra("type");



        findIds();
        name.setText(name_str);
        price.setText("LKR "+price_str+".00");
        details.setText(details_str);

        mins.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (quantity_value>1){
                    quantity_value--;
                    quantity.setText(String.valueOf(quantity_value));
                }
            }
        });
        plus.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                quantity_value++;
                quantity.setText(String.valueOf(quantity_value));
            }
        });

        buy.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                quantity_str=quantity.getText().toString();
                phpName="orderfood.php";
                new sendOrder().execute(name_str,quantity_str,userid,foodid,price_str,roomno,type);
                quantity_value=0;

            }
        });

        cart.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                quantity_str=quantity.getText().toString();
                phpName="cart_add.php";
                new sendOrder().execute(name_str,quantity_str,userid,foodid,price_str,roomno,type);
                quantity_value=0;


            }
        });
    }

    void findIds(){
        name=(TextView)findViewById(R.id.tv_name_order);
        price=(TextView)findViewById(R.id.tv_price_order);
        details=(TextView)findViewById(R.id.tv_details_order);
        mins=(TextView)findViewById(R.id.tv_mins);
        quantity=(TextView)findViewById(R.id.tv_quantity);
        plus=(TextView)findViewById(R.id.tv_plus);
        buy=(Button)findViewById(R.id.buy_btn);
        cart=(Button)findViewById(R.id.addCart);
    }

    private class sendOrder extends AsyncTask<String, String, String>
    {
        ProgressDialog pdLoading = new ProgressDialog(Order.this);
        HttpURLConnection conn;
        URL url = null;

        @Override
        protected void onPreExecute() {
            super.onPreExecute();


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
                String fdid = params[3];
                String price=params[4];
                String roomno=params[5];
                String type=params[6];

                URL url = new URL(cn.url(phpName));
                HttpURLConnection httpURLConnection = (HttpURLConnection)url.openConnection();
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setDoInput(true);
                OutputStream outputStream = httpURLConnection.getOutputStream();
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, "UTF-8"));
                String post_data = URLEncoder.encode("food_desc","UTF-8")+"="+URLEncoder.encode(fooddesc,"UTF-8")+"&"
                        +URLEncoder.encode("order_quantity","UTF-8")+"="+URLEncoder.encode(orderqty,"UTF-8")+"&"
                        +URLEncoder.encode("fk_user_id","UTF-8")+"="+URLEncoder.encode(userid,"UTF-8")+"&"
                        +URLEncoder.encode("fk_food_id","UTF-8")+"="+URLEncoder.encode(fdid,"UTF-8")+"&"
                        +URLEncoder.encode("price_fd","UTF-8")+"="+URLEncoder.encode(price,"UTF-8")+"&"
                        +URLEncoder.encode("roomNo","UTF-8")+"="+URLEncoder.encode(roomno,"UTF-8")+"&"
                        +URLEncoder.encode("type","UTF-8")+"="+URLEncoder.encode(type,"UTF-8");
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
        protected void onPostExecute(String result) {
            pdLoading.dismiss();


                Toast.makeText(Order.this,result,Toast.LENGTH_SHORT).show();

           // Globas.list.add(new OrderData(result.toString(),false));
         //  alarm = new MyBroadcastReceiver(Order.this);
          // startRepeatingTimer();

            //finish();
        }
    }


}
