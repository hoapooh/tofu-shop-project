/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author anphu
 */
public class OrderDetail {

    private int orderId;
    private String productName;  //chỗ này ban đầu là productId nhưng productName phục vụ việc hiển thị
    private String productimage;
    private double unitPrice;
    private int quantity;

    public OrderDetail() {
    }

    public OrderDetail(int orderId, String productName, String productimage, double unitPrice, int quantity) {
        this.orderId = orderId;
        this.productName = productName;
        this.productimage = productimage;
        this.unitPrice = unitPrice;
        this.quantity = quantity;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductimage() {
        return productimage;
    }

    public void setProductimage(String productimage) {
        this.productimage = productimage;
    }

    public double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

}
