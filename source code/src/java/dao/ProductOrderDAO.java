/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Models;
import model.ProductOrder;
import utils.DBUtils;

/**
 *
 * @author anphu
 */
public class ProductOrderDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void addOrder(int userId, int amount) {
        String sql = "insert into ProductOrder(userId, amount) "
                + "values(?, ?)";
        try {
            conn = DBUtils.getConnection();
            PreparedStatement stm = conn.prepareStatement(sql);

            stm.setInt(1, userId);
            stm.setInt(2, amount);

            stm.executeUpdate();
            stm.close();
            conn.close();

        } catch (ClassNotFoundException | SQLException sqe) {
            System.out.println("[ERROR]: " + sqe.getMessage());
        }

    }

    public String getLatestId() {
        String sqlQuery = "select top(1) orderId from ProductOrder order by orderId desc";

        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sqlQuery);
            rs = ps.executeQuery();

            while (rs.next()) {
                String orderid = rs.getString("orderId");
                return orderid;
            }

            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException | ClassNotFoundException sqe) {
            System.out.println("[ERROR]: " + sqe.getMessage());
        }
        return null;
    }

    public List<ProductOrder> getAllOrder() {
        String sqlQuery = "select po.orderId, u.username, po.date, po.amount  from ProductOrder po\n"
                + "join Users u\n"
                + "on po.userId = u.userId";
        List<ProductOrder> list = new ArrayList<>();

        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sqlQuery);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new ProductOrder(rs.getInt("orderId"),
                        rs.getString("username"),
                        rs.getDate("date"),
                        rs.getInt("amount")));
            }

            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException | ClassNotFoundException sqe) {
            System.out.println("[ERROR]: " + sqe.getMessage());
        }
        return list;
    }
    
    public int getNumberOrder() {
        String sqlQuery = "select count(*) from ProductOrder";
        
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sqlQuery);
            rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt(1);
            }

            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException | ClassNotFoundException sqe) {
            System.out.println("[ERROR]: " + sqe.getMessage());
        }
        return 0;
    }
}
