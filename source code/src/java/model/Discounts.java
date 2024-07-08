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
public class Discounts {
    
    private int discountId;
    private int rate;

    public Discounts() {
    }

    public Discounts(int discountId, int rate) {
        this.discountId = discountId;
        this.rate = rate;
    }

    public int getDiscountId() {
        return discountId;
    }

    public void setDiscountId(int discountId) {
        this.discountId = discountId;
    }

    public int getRate() {
        return rate;
    }

    public void setRate(int rate) {
        this.rate = rate;
    }
    
    
}
