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
import model.UserServices;
import utils.DBUtils;

/**
 *
 * @author anphu
 */
public class UserServicesDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<UserServices> getAllServices() {
        List<UserServices> list = new ArrayList<>();
        String sqlQuery = "select us.serviceId, u.name, u.email, us.message, us.date from UserServices us\n"
                + "join Users u\n"
                + "on us.userId = u.userId";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sqlQuery);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new UserServices(rs.getInt("serviceId"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("message"),
                        rs.getDate("date")));
            }

            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException | ClassNotFoundException sqe) {
            System.out.println("[ERROR]: " + sqe.getMessage());
        }
        return list;
    }

    public void insert(int userId, String message) {
        String sqlQuery = "insert into UserServices (userId, message)\n"
                + "values (?, ?)";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sqlQuery);
            ps.setInt(1, userId);
            ps.setString(2, message);
            ps.executeUpdate();

            ps.close();
            conn.close();
        } catch (SQLException | ClassNotFoundException sqe) {
            System.out.println("[ERROR]: " + sqe.getMessage());
        }
    }
}
