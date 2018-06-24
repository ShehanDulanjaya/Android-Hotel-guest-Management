package com.teranova.foodies.model;

/**
 * Created by Sheha Dulanjaya on 9/23/2017.
 */

public class CartData {
    String fname, price,description,quantity,fid;



    public CartData(String fname, String price, String fid , String quantity) {
        this.fname = fname;
        this.price = price;
        this.description = description;
        this.fid = fid;
        this.quantity = quantity;
    }

    public CartData(String food, String price) {
        this.fname = food;
        this.price = price;
    }

    public String getFood() {
        return fname;
    }

    public void setFood(String fname) {
        this.fname = fname;
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
