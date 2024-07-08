/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.OrderDetail;
import utils.DBUtils;

/**
 *
 * @author anphu
 */
public class OrderDetailDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void addOrderDetail(int orderId, int productId, double unitPrice, int quantity) {
        String sql = "INSERT INTO OrderDetail (orderId, productId, unitPrice, quantity) "
                + "values (?, ?, ?, ? )";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sql);

            ps.setInt(1, orderId);
            ps.setInt(2, productId);
            ps.setDouble(3, unitPrice);
            ps.setInt(4, quantity);

            ps.executeUpdate();

            ps.close();
            conn.close();

        } catch (SQLException | ClassNotFoundException sqe) {
            System.out.println("[ERROR]: " + sqe.getMessage());
        }
    }

    public double getTotalIncome() {
        String sqlQuery = "select SUM(unitPrice * quantity) from OrderDetail";

        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sqlQuery);
            rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getDouble(1);
            }

            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException | ClassNotFoundException sqe) {
            System.out.println("[ERROR]: " + sqe.getMessage());
        }
        return 0;
    }

    public List<OrderDetail> getOrderById(String ordid) {
        String sqlQuery = "select od.orderID, p.productName, p.image, od.unitPrice, od.quantity from OrderDetail od\n"
                + "join Products p\n"
                + "on od.productId = p.productId\n"
                + "where od.orderID = ?";
        List<OrderDetail> list = new ArrayList<>();
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sqlQuery);
            ps.setString(1, ordid);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new OrderDetail(rs.getInt("orderID"),
                        rs.getString("productName"),
                        rs.getString("image"),
                        rs.getDouble("unitPrice"),
                        rs.getInt("quantity")));
            }

            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException | ClassNotFoundException sqe) {
            System.out.println("[ERROR]: " + sqe.getMessage());
        }
        return list;
        
    }
}
