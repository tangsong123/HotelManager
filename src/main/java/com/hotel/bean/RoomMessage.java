package com.hotel.bean;

import java.math.BigDecimal;
import java.util.Date;

public class RoomMessage {
    private Long id;

    private Long roomId;

    private String roomName;

    private Integer roomType;

    private Long roomFloat;

    private Long roomBedNum;

    private String isTv;

    private String isWindow;

    private String isBreakfirst;

    private String isBathroom;

    private String isBlower;

    private BigDecimal price;

    private BigDecimal proprice;

    private String uuid;

    private Integer status;

    private Integer valid;

    private String remark;

    private Date roomCreateTime;

    private Date roomLastTime;

    public RoomMessage() {
    }

    public RoomMessage(Long id, Long roomId, String roomName, Integer roomType, Long roomFloat, Long roomBedNum, String isTv, String isWindow, String isBreakfirst, String isBathroom, String isBlower, BigDecimal price, BigDecimal proprice, String uuid, Integer status, Integer valid, String remark, Date roomCreateTime, Date roomLastTime) {
        this.id = id;
        this.roomId = roomId;
        this.roomName = roomName;
        this.roomType = roomType;
        this.roomFloat = roomFloat;
        this.roomBedNum = roomBedNum;
        this.isTv = isTv;
        this.isWindow = isWindow;
        this.isBreakfirst = isBreakfirst;
        this.isBathroom = isBathroom;
        this.isBlower = isBlower;
        this.price = price;
        this.proprice = proprice;
        this.uuid = uuid;
        this.status = status;
        this.valid = valid;
        this.remark = remark;
        this.roomCreateTime = roomCreateTime;
        this.roomLastTime = roomLastTime;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getRoomId() {
        return roomId;
    }

    public void setRoomId(Long roomId) {
        this.roomId = roomId;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName == null ? null : roomName.trim();
    }

    public Integer getRoomType() {
        return roomType;
    }

    public void setRoomType(Integer roomType) {
        this.roomType = roomType;
    }

    public Long getRoomFloat() {
        return roomFloat;
    }

    public void setRoomFloat(Long roomFloat) {
        this.roomFloat = roomFloat;
    }

    public Long getRoomBedNum() {
        return roomBedNum;
    }

    public void setRoomBedNum(Long roomBedNum) {
        this.roomBedNum = roomBedNum;
    }

    public String getIsTv() {
        return isTv;
    }

    public void setIsTv(String isTv) {
        this.isTv = isTv == null ? null : isTv.trim();
    }

    public String getIsWindow() {
        return isWindow;
    }

    public void setIsWindow(String isWindow) {
        this.isWindow = isWindow == null ? null : isWindow.trim();
    }

    public String getIsBreakfirst() {
        return isBreakfirst;
    }

    public void setIsBreakfirst(String isBreakfirst) {
        this.isBreakfirst = isBreakfirst == null ? null : isBreakfirst.trim();
    }

    public String getIsBathroom() {
        return isBathroom;
    }

    public void setIsBathroom(String isBathroom) {
        this.isBathroom = isBathroom == null ? null : isBathroom.trim();
    }

    public String getIsBlower() {
        return isBlower;
    }

    public void setIsBlower(String isBlower) {
        this.isBlower = isBlower == null ? null : isBlower.trim();
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public BigDecimal getProprice() {
        return proprice;
    }

    public void setProprice(BigDecimal proprice) {
        this.proprice = proprice;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid == null ? null : uuid.trim();
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

    public Date getRoomCreateTime() {
        return roomCreateTime;
    }

    public void setRoomCreateTime(Date roomCreateTime) {
        this.roomCreateTime = roomCreateTime;
    }

    public Date getRoomLastTime() {
        return roomLastTime;
    }

    public void setRoomLastTime(Date roomLastTime) {
        this.roomLastTime = roomLastTime;
    }
}