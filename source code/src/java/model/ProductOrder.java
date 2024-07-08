/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author anphu
 */
public class ProductOrder {

    private int orderId;
    private String username; //chỗ này ban đầu là userId nhưng username phục vụ việc hiển thị
    private Date date;
    private int amount;

    public ProductOrder() {
    }

    public ProductOrder(int orderId, String username, Date date, int amount) {
        this.orderId = orderId;
        this.username = username;
        this.date = date;
        this.amount = amount;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

}
