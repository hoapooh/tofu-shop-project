/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.UserServices;
import model.Users;

/**
 *
 * @author anphu
 */
public class UsersDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Users login(String username, String password) {
        String sqlQuery = "select * from Users where username = ? and password = ?";

        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sqlQuery);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Users(rs.getInt("userId"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("address"),
                        rs.getString("phone"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getBoolean("role"));
            }

            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException | ClassNotFoundException sqe) {
            System.out.println("[ERROR]: " + sqe.getMessage());
        }
        return null;
    }

    public Users checkUserExist(String username) {
        String sqlQuery = "select * from Users where username = ?";

        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sqlQuery);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Users(rs.getInt("userId"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("address"),
                        rs.getString("phone"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getBoolean("role"));
            }

            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException | ClassNotFoundException sqe) {
            System.out.println("[ERROR]: " + sqe.getMessage());
        }
        return null;
    }

    public void signup(String name, String email, String address, String phone, String username, String password) {
        String sqlQuery = "insert into Users (name, email, address, phone, username, password)\n"
                + "values (?, ?, ?, ?, ?, ?)";

        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sqlQuery);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, address);
            ps.setString(4, phone);
            ps.setString(5, username);
            ps.setString(6, password);

            ps.executeUpdate();

            ps.close();
            conn.close();
        } catch (SQLException | ClassNotFoundException sqe) {
            System.out.println("[ERROR]: " + sqe.getMessage());
        }
    }

    public List<Users> getAllUsers() {
        List<Users> list = new ArrayList<>();
        String sqlQuery = "select * from Users where role = 0";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sqlQuery);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Users(rs.getInt("userId"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("address"),
                        rs.getString("phone"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getBoolean("role")));
            }

            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException | ClassNotFoundException sqe) {
            System.out.println("[ERROR]: " + sqe.getMessage());
        }
        return list;
    }

    public void saveProfile(String name, String email, String address, String phone, int uid) {
        String sqlQuery = "update Users\n"
                + "set [name] = ?, email = ?, [address] = ?, phone = ?\n"
                + "where userId = ?";

        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sqlQuery);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, address);
            ps.setString(4, phone);
            ps.setInt(5, uid);
            ps.executeUpdate();

            ps.close();
            conn.close();
        } catch (SQLException | ClassNotFoundException sqe) {
            System.out.println("[ERROR]: " + sqe.getMessage());
        }
    }
    
    public void changePass(String pass, int uid) {
        String sqlQuery = "update Users\n"
                + "set [password] = ?\n"
                + "where userId = ?";

        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sqlQuery);
            ps.setString(1, pass);
            ps.setInt(2, uid);
            ps.executeUpdate();

            ps.close();
            conn.close();
        } catch (SQLException | ClassNotFoundException sqe) {
            System.out.println("[ERROR]: " + sqe.getMessage());
        }
    }
}
