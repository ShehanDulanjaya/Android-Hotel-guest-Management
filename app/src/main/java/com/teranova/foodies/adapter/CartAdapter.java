package com.teranova.foodies.adapter;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.teranova.foodies.Cart;
import com.teranova.foodies.R;
import com.teranova.foodies.conection.conurl;
import com.teranova.foodies.model.CartData;


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

/**
 * Created by Sheha Dulanjaya on 8/13/2017.
 */

public class CartAdapter extends BaseAdapter {
    ArrayList<CartData> list;
    Context context;
    Cart c1 = new Cart();
    public static final String MY_PREFS_NAME = "MyPrefsFile";

    public CartAdapter(Context context, ArrayList<CartData>list) {
        this.context=context;
        this.list=list;
    }
    @Override
    public int getCount() {
        return list.size();
    }

    @Override
    public Object getItem(int position) {
        return list.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(final int position, View convertView, ViewGroup parent) {
        if (convertView==null){
            LayoutInflater inflater=(LayoutInflater)context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            convertView=inflater.inflate(R.layout.cart_list,parent,false);
        }
        final TextView name=(TextView)convertView.findViewById(R.id.tv_name_item_list);
        TextView price=(TextView)convertView.findViewById(R.id.tv_price_item_list);
        TextView qty=(TextView)convertView.findViewById(R.id.qty);
        Button order=(Button) convertView.findViewById(R.id.order_btn_item_list);
        name.setText(list.get(position).getFood());
        price.setText("Rs. "+list.get(position).getPrice() );
        qty.setText("Qty : "+list.get(position).getQuantity());
        SharedPreferences prefs = context.getSharedPreferences(MY_PREFS_NAME, Context.MODE_PRIVATE);
        final String roomNo=prefs.getString("username", "0");

        order.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                DialogInterface.OnClickListener dialogClickListener = new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        switch (which){
                            case DialogInterface.BUTTON_POSITIVE:
                                String r= list.get(position).getId();
                                new DelFoodList().execute(r,roomNo);

                                //Yes button clicked
                                break;

                            case DialogInterface.BUTTON_NEGATIVE:
                                //No button clicked
                                break;
                        }
                    }
                };
                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                builder.setMessage("Delete item from Cart?").setPositiveButton("Yes", dialogClickListener).setNegativeButton("No", dialogClickListener).show();


            }
        });
        return convertView;
    }


    public class DelFoodList extends AsyncTask<String, String, String> {
        HttpURLConnection conn;
        URL url = null;
        ProgressDialog pdLoading = new ProgressDialog((Cart)context);
        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            pdLoading.setMessage("\tLoading...");
            pdLoading.setCancelable(false);
            pdLoading.show();

        }

        @Override
        protected String doInBackground(String... params) {
            String foodid = params[0];
            String id = params[1];
            conurl cn = new conurl();

            try {


                URL url = new URL(cn.url("cart_del.php"));
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setDoInput(true);
                OutputStream outputStream = httpURLConnection.getOutputStream();
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, "UTF-8"));
                String post_data = URLEncoder.encode("fid", "UTF-8") + "=" + URLEncoder.encode(foodid, "UTF-8")+ "&"
                        +URLEncoder.encode("id", "UTF-8") + "=" + URLEncoder.encode(id, "UTF-8");
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
            pdLoading.dismiss();
            Toast.makeText(context,s,Toast.LENGTH_SHORT).show();

            Intent i=new Intent(context, Cart.class);
            ((Cart)context).finish();
            context.startActivity(i);


                }

        }


}
