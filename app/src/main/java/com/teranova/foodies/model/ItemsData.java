package com.teranova.foodies.model;

/**
 * Created by Sheha Dulanjaya on 8/13/2017.
 */

public class ItemsData {
    String fname, price,description,quantity,fid,type;



    public ItemsData(String fname, String price, String description, String fid,String type) {
            this.fname = fname;
        this.price = price;
        this.description = description;
        this.fid = fid;
        this.type=type;
    }

    public ItemsData(String food, String price) {
        this.fname = food;
        this.price = price;
    }

    public String getFood() {
        return fname;
    }

    public void setFood(String fname) {
        this.fname = fname;
    }

    public String gettype() {
        return type;
    }

    public void settype(String type) {
        this.type = type;
    }


    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getId() {
        return fid;
    }

    public void setId(String fid) {
        this.fid = fid;
    }
}
