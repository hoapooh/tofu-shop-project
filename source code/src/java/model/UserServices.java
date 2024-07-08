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
public class UserServices {

    private int serviceId;
    private String name; // chỗ này ban đầu là userId nhưng dùng username cho việc dễ hiển thị
    private String email;
    private String message;
    private Date date;

    public UserServices() {
    }

    public UserServices(int serviceId, String name, String email, String message, Date date) {
        this.serviceId = serviceId;
        this.name = name;
        this.email = email;
        this.message = message;
        this.date = date;
    }

    public int getServiceId() {
        return serviceId;
    }

    public void setServiceId(int serviceId) {
        this.serviceId = serviceId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

}
