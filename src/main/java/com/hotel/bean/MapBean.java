package com.hotel.bean;


public class MapBean {
    private String vipName;
    private Integer vipType;
    private Long spendingPower;
    private Integer status;
    private Integer valid;
    private int index;
    private Integer pageSize;

    public MapBean() {
    }

    public MapBean(String vipName, Integer vipType, Long spendingPower, Integer status, Integer valid, int index, Integer pageSize) {
        this.vipName = vipName;
        this.vipType = vipType;
        this.spendingPower = spendingPower;
        this.status = status;
        this.valid = valid;
        this.index = index;
        this.pageSize = pageSize;
    }

    public String getVipName() {
        return vipName;
    }

    public void setVipName(String vipName) {
        this.vipName = vipName;
    }

    public Integer getVipType() {
        return vipType;
    }

    public void setVipType(Integer vipType) {
        this.vipType = vipType;
    }

    public Long getSpendingPower() {
        return spendingPower;
    }

    public void setSpendingPower(Long spendingPower) {
        this.spendingPower = spendingPower;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getValid() {
        return valid;
    }

    public void setValid(Integer valid) {
        this.valid = valid;
    }

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }
}
