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
import model.Discounts;
import utils.DBUtils;

/**
 *
 * @author anphu
 */
public class DiscountsDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Discounts> getAllDiscount() {
        List<Discounts> list = new ArrayList<>();
        String sqlQuery = "select * from Discounts ";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sqlQuery);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Discounts(rs.getInt("discountId"),
                        rs.getInt("discountRate")));
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
