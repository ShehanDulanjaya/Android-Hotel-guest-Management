package com.teranova.foodies.model;

/**
 * Created by Sheha Dulanjaya on 8/18/2017.
 */

public class OrderData {
    String order_id;
    boolean order_status;

    public OrderData(String order_id, boolean order_status) {
        this.order_id = order_id;
        this.order_status = order_status;
    }

    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }

    public boolean isOrder_status() {
        return order_status;
    }

    public void setOrder_status(boolean order_status) {
        this.order_status = order_status;
    }
}
