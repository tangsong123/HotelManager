package com.hotel.bean;



import lombok.Data;

import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: tangsong
 * Date: 2018年4月05日
 * Time: 22:32
 * To change this template use File | Settings | File and Code Templates | Includes.
 */
@Data
public class Result<T> {

    /**
     * 成功true 失败false
     */
    private boolean success;

    /**
     * 描述
     */
    private String message;

    /**
     * 非列表数据map
     */
    private Map<String, Object> dataMap;

    /**
     * 非列表数据实体.
     */
    private T value;

    /**
     * 列表数据总条数
     */
    private Integer totalElements = 0;

    /**
     * 页码
     */
    private Integer pageIndex = 0;
    /**
     * 页面数据量
     */
    private Integer pageSize = 0;
    /**
     * 列表数据
     */
    private List<T> content;
}
