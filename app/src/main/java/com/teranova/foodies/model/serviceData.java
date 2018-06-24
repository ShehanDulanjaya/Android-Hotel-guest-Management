package com.teranova.foodies.model;

/**
 * Created by Sheha Dulanjaya on 9/11/2017.
 */

public class serviceData {


        String servicename, price,edate,sdate;



        public serviceData(String servicename, String price,String sdate,String edate) {
            this.servicename = servicename;
            this.price = price;
            this.sdate=sdate;
            this.edate=edate;
        }

        public String getServicename() {
            return servicename;
        }

        public void setServicename(String servicename) {
            this.servicename = servicename;
        }

        public String getPrice() {
            return price;
        }

        public void setPrice(String sdate) {
            this.price = price;
        }

        public String getsdate() {
            return sdate;
        }

        public void setsdate(String sdate) {
            this.sdate = sdate;
        }


        public String getedate() {
            return edate;
        }

        public void setedate(String edate) {
            this.edate = edate;
        }


    }


