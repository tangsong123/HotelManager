package com.hotel.bean;

import java.util.Date;

public class VipMessage {
    private Long id;

    private Long vipPhonenum;

    private String vipName;

    private Integer vipType;

    private String vipBirthday;

    private String vipHobby;

    private Long spendingPower;

    private String uuid;

    private Integer times;

    private Integer status;

    private Integer valid;

    private String remark;

    private Date vipCreateTime;

    private Date vipLastTime;

    public VipMessage() {
    }

    public VipMessage(Long id, Long vipPhonenum, String vipName, Integer vipType, String vipBirthday, String vipHobby, Long spendingPower, String uuid, Integer times, Integer status, Integer valid, String remark, Date vipCreateTime, Date vipLastTime) {
        this.id = id;
        this.vipPhonenum = vipPhonenum;
        this.vipName = vipName;
        this.vipType = vipType;
        this.vipBirthday = vipBirthday;
        this.vipHobby = vipHobby;
        this.spendingPower = spendingPower;
        this.uuid = uuid;
        this.times = times;
        this.status = status;
        this.valid = valid;
        this.remark = remark;
        this.vipCreateTime = vipCreateTime;
        this.vipLastTime = vipLastTime;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getVipPhonenum() {
        return vipPhonenum;
    }

    public void setVipPhonenum(Long vipPhonenum) {
        this.vipPhonenum = vipPhonenum;
    }

    public String getVipName() {
        return vipName;
    }

    public void setVipName(String vipName) {
        this.vipName = vipName == null ? null : vipName.trim();
    }

    public Integer getVipType() {
        return vipType;
    }

    public void setVipType(Integer vipType) {
        this.vipType = vipType;
    }

    public String getVipBirthday() {
        return vipBirthday;
    }

    public void setVipBirthday(String vipBirthday) {
        this.vipBirthday = vipBirthday == null ? null : vipBirthday.trim();
    }

    public String getVipHobby() {
        return vipHobby;
    }

    public void setVipHobby(String vipHobby) {
        this.vipHobby = vipHobby == null ? null : vipHobby.trim();
    }

    public Long getSpendingPower() {
        return spendingPower;
    }

    public void setSpendingPower(Long spendingPower) {
        this.spendingPower = spendingPower;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid == null ? null : uuid.trim();
    }

    public Integer getTimes() {
        return times;
    }

    public void setTimes(Integer times) {
        this.times = times;
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

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Date getVipCreateTime() {
        return vipCreateTime;
    }

    public void setVipCreateTime(Date vipCreateTime) {
        this.vipCreateTime = vipCreateTime;
    }

    public Date getVipLastTime() {
        return vipLastTime;
    }

    public void setVipLastTime(Date vipLastTime) {
        this.vipLastTime = vipLastTime;
    }
}