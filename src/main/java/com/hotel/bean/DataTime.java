package com.hotel.bean;

import java.io.Serializable;

public class DataTime implements Serializable {
    private int id;
    private Integer count;
    private String year;
    private String mouth;
    private String day;
    private Long money;
    public DataTime() {
    }

    public DataTime(int id,Integer count, String year, String mouth, String day,Long money) {
        this.id = id;
        this.count = count;
        this.year = year;
        this.mouth = mouth;
        this.day = day;
        this.money = money;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getMouth() {
        return mouth;
    }

    public void setMouth(String mouth) {
        this.mouth = mouth;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public Long getMoney() {
        return money;
    }

    public void setMoney(Long money) {
        this.money = money;
    }
}
