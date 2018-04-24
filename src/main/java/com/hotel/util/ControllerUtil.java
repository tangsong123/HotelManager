package com.hotel.util;/*通用方法
        *
        *@author tangsong
        *@create 2018年4月05日23:48:02
        */

public class ControllerUtil {

    public static int

    getIndex(Integer pageIndex, Integer pageSize, Integer allCounts) {
        int index = 0;
        if (allCounts > 0) {


            if (allCounts < pageSize) index = 0;
            if (pageIndex!=null && pageIndex != 0 && (allCounts > pageSize *

                    (pageIndex - 1))) index = pageSize * (pageIndex - 1);
        }
        return index;
    }
}