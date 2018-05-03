package com.hotel.bean;

import java.io.Serializable;

public class Psd implements Serializable {
    private String oPassword;
    private String password;
    private String rePassword;
    private int status;

    public Psd() {
    }

    public Psd(String oPassword, String password, String rePassword, int status) {
        this.oPassword = oPassword;
        this.password = password;
        this.rePassword = rePassword;
        this.status = status;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getoPassword() {
        return oPassword;
    }

    public void setoPassword(String oPassword) {
        this.oPassword = oPassword;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRePassword() {
        return rePassword;
    }

    public void setRePassword(String rePassword) {
        this.rePassword = rePassword;
    }
}
