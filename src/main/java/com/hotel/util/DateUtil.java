package com.hotel.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtil {

    public static int getDaysOfMonth(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
    }

//    public static void main(String[] args) throws ParseException {
//        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//        String s = null;
//        String s1 = String.valueOf(2018);
//        String s2 = String.valueOf(05);
//        String s3 = String.valueOf(15);
//        s = s1+"-"+s2+"-"+s3;
//        System.out.println(getDaysOfMonth(sdf.parse("2000-02-2")));
//
//        getDaysOfMonth(sdf.parse("2000-02-2"));
//    }
}