package com.hotel.bean;

import java.math.BigDecimal;
import java.util.Date;

public class OrderMessage {
    private Long id;

    private String uuid;

    private String vipName;

    private String adminName;

    private Integer vipType;

    private BigDecimal price;

    private Long roomId;

    private String roomName;

    private Integer valid;

    private Integer status;

    private String isInvoice;

    private String remark;

    private String orderCreateTime;

    private String orderCompleteTime;

    public OrderMessage() {
    }

    public OrderMessage(Long id, String uuid, String vipName, String adminName, Integer vipType, BigDecimal price, Long roomId, String roomName, Integer valid, Integer status, String isInvoice, String remark, String orderCreateTime, String orderCompleteTime) {
        this.id = id;
        this.uuid = uuid;
        this.vipName = vipName;
        this.adminName = adminName;
        this.vipType = vipType;
        this.price = price;
        this.roomId = roomId;
        this.roomName = roomName;
        this.valid = valid;
        this.status = status;
        this.isInvoice = isInvoice;
        this.remark = remark;
        this.orderCreateTime = orderCreateTime;
        this.orderCompleteTime = orderCompleteTime;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid == null ? null : uuid.trim();
    }

    public String getVipName() {
        return vipName;
    }

    public void setVipName(String vipName) {
        this.vipName = vipName == null ? null : vipName.trim();
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName == null ? null : adminName.trim();
    }

    public Integer getVipType() {
        return vipType;
    }

    public void setVipType(Integer vipType) {
        this.vipType = vipType;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
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

    public Integer getValid() {
        return valid;
    }

    public void setValid(Integer valid) {
        this.valid = valid;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getIsInvoice() {
        return isInvoice;
    }

    public void setIsInvoice(String isInvoice) {
        this.isInvoice = isInvoice == null ? null : isInvoice.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getOrderCreateTime() {
        return orderCreateTime;
    }

    public void setOrderCreateTime(String orderCreateTime) {
        this.orderCreateTime = orderCreateTime;
    }

    public String getOrderCompleteTime() {
        return orderCompleteTime;
    }

    public void setOrderCompleteTime(String orderCompleteTime) {
        this.orderCompleteTime = orderCompleteTime;
    }

    @Override
    public String toString() {
        return "OrderMessage{" +
                "id=" + id +
                ", uuid='" + uuid + '\'' +
                ", vipName='" + vipName + '\'' +
                ", adminName='" + adminName + '\'' +
                ", vipType=" + vipType +
                ", price=" + price +
                ", roomId=" + roomId +
                ", roomName='" + roomName + '\'' +
                ", valid=" + valid +
                ", status=" + status +
                ", isInvoice='" + isInvoice + '\'' +
                ", remark='" + remark + '\'' +
                ", orderCreateTime='" + orderCreateTime + '\'' +
                ", orderCompleteTime='" + orderCompleteTime + '\'' +
                '}';
    }

}