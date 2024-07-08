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
public class Products {

    private int productId;
    private String name;
    private double price;
    private String image;
    private String description;
    private String modelName; //chỗ này ban đầu là modelId nhưng name phục vụ việc hiển thị
    private int discountRate; //chỗ này ban đầu là discountId nhưng rate phục vụ việc hiển thị
    private int quantity;

    public Products() {
    }

    public Products(int productId, String name, double price, String image, String description, String modelName, int discountRate, int quantity) {
        this.productId = productId;
        this.name = name;
        this.price = price;
        this.image = image;
        this.description = description;
        this.modelName = modelName;
        this.discountRate = discountRate;
        this.quantity = quantity;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getModelName() {
        return modelName;
    }

    public void setModelName(String modelName) {
        this.modelName = modelName;
    }

    public int getDiscountRate() {
        return discountRate;
    }

    public void setDiscountRate(int discountRate) {
        this.discountRate = discountRate;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "Products{" + "productId=" + productId + ", name=" + name + ", price=" + price + ", image=" + image + ", description=" + description + ", modelName=" + modelName + ", discountRate=" + discountRate + ", quantity=" + quantity + '}';
    }
}
