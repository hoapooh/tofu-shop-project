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
import model.Models;
import model.Products;

/**
 *
 * @author anphu
 */
public class ModelsDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Models> getAllModel() {
        List<Models> list = new ArrayList<>();
        String sqlQuery = "select * from Models ";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sqlQuery);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Models(rs.getInt("modelId"),
                        rs.getString("modelName")));
            }

            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException | ClassNotFoundException sqe) {
            System.out.println("[ERROR]: " + sqe.getMessage());
        }
        return list;
    }
    
    public Models getModelIdByProductId(String proid) {
        String sqlQuery = "select m.*  from Models m\n" +
                    "FULL JOIN  Products p\n" +
                    "ON p.modelId = m.modelId\n" +
                    "where p.productId = ?";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sqlQuery);
            ps.setString(1, proid);
            rs = ps.executeQuery();

            while (rs.next()) {
                return new Models(rs.getInt("modelId"),
                        rs.getString("modelName"));
            }

            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException | ClassNotFoundException sqe) {
            System.out.println("[ERROR]: " + sqe.getMessage());
        }
        return null;
    }
}
