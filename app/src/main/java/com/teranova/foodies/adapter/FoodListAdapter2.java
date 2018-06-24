package com.teranova.foodies.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.TextView;

import com.teranova.foodies.Order;
import com.teranova.foodies.R;
import com.teranova.foodies.model.ItemsData2;

import java.util.ArrayList;

/**
 * Created by Sheha Dulanjaya on 9/23/2017.
 */

public class FoodListAdapter2 extends BaseAdapter {

    ArrayList<ItemsData2> list;
    Context context;

    public FoodListAdapter2(Context context, ArrayList<ItemsData2>list) {
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
            convertView=inflater.inflate(R.layout.item_list,parent,false);
        }
        final TextView name=(TextView)convertView.findViewById(R.id.tv_name_item_list);
        TextView price=(TextView)convertView.findViewById(R.id.tv_price_item_list);
        Button order=(Button) convertView.findViewById(R.id.order_btn_item_list);
        name.setText(list.get(position).getFood());
        price.setText("Rs. "+list.get(position).getPrice()+".00" );

        order.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent i=new Intent(context, Order.class);
                i.putExtra("fname",list.get(position).getFood());
                i.putExtra("price",list.get(position).getPrice());
                i.putExtra("description",list.get(position).getDescription());
                i.putExtra("fid",list.get(position).getId());
                i.putExtra("type",list.get(position).gettype());
                context.startActivity(i);
            }
        });
        return convertView;
    }

}
