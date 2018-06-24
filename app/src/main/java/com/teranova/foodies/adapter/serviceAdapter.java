package com.teranova.foodies.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.teranova.foodies.R;
import com.teranova.foodies.model.serviceData;

import java.util.ArrayList;

/**
 * Created by Sheha Dulanjaya on 8/13/2017.
 */

public class serviceAdapter extends BaseAdapter {
    ArrayList<serviceData> list1;
    Context context;

    public serviceAdapter(Context context, ArrayList<serviceData>list1) {
        this.context=context;
        this.list1=list1;
    }
    @Override
    public int getCount() {
        return list1.size();
    }

    @Override
    public Object getItem(int position) {
        return list1.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(final int position, View convertView, ViewGroup parent) {
        if (convertView==null){
            LayoutInflater inflater=(LayoutInflater)context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            convertView=inflater.inflate(R.layout.service_list,parent,false);
        }
        final TextView name=(TextView)convertView.findViewById(R.id.service_name_item_list);
        TextView price=(TextView)convertView.findViewById(R.id.service_price_item_list);
        TextView Sdate=(TextView)convertView.findViewById(R.id.sdate);
        TextView Edate=(TextView)convertView.findViewById(R.id.edate);
        name.setText(list1.get(position).getServicename());
        price.setText("Rs. "+list1.get(position).getPrice()+"0" );
        Sdate.setText(list1.get(position).getsdate());
        Edate.setText(list1.get(position).getedate());


        return convertView;
    }
}
