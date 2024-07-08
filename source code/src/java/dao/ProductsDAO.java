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
public class ProductsDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Products> getAllProducts() {
        List<Products> list = new ArrayList<>();
        String sqlQuery = "select p.productId, p.productName, p.price, p.image, p.Description, m.modelName, d.discountRate, p.quantity\n"
                + "from Products p\n"
                + "FULL join Models m\n"
                + "on p.modelId = m.modelId\n"
                + "FULL join Discounts d\n"
                + "on p.discountId = d.discountId";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sqlQuery);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Products(rs.getInt("productId"),
                        rs.getString("productName"),
                        rs.getDouble("price"),
                        rs.getString("image"),
                        rs.getString("Description"),
                        rs.getString("modelName"),
                        rs.getInt("discountRate"),
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

    public List<Products> getLatestProducts() {
        List<Products> list = new ArrayList<>();
        String sqlQuery = "select top(6) p.productId, p.productName, p.price, p.image, p.Description, m.modelName, d.discountRate, p.quantity\n"
                + "from Products p\n"
                + "FULL join Models m\n"
                + "on p.modelId = m.modelId\n"
                + "FULL join Discounts d\n"
                + "on p.discountId = d.discountId\n"
                + "order by p.productId desc";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sqlQuery);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Products(rs.getInt("productId"),
                        rs.getString("productName"),
                        rs.getDouble("price"),
                        rs.getString("image"),
                        rs.getString("Description"),
                        rs.getString("modelName"),
                        rs.getInt("discountRate"),
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

    public List<Products> getProductByModelId(String mid) {
        List<Products> list = new ArrayList<>();
        String sqlQuery = "select p.productId, p.productName, p.price, p.image, p.Description, m.modelName, d.discountRate, p.quantity\n"
                + "from Products p\n"
                + "FULL join Models m\n"
                + "on p.modelId = m.modelId\n"
                + "FULL join Discounts d\n"
                + "on p.discountId = d.discountId\n"
                + "where p.modelId = ?";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sqlQuery);
            ps.setString(1, mid);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Products(rs.getInt("productId"),
                        rs.getString("productName"),
                        rs.getDouble("price"),
                        rs.getString("image"),
                        rs.getString("Description"),
                        rs.getString("modelName"),
                        rs.getInt("discountRate"),
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

    public Products getProductById(String proid) {
        String sqlQuery = "select p.productId, p.productName, p.price, p.image, p.Description, m.modelName, d.discountRate, p.quantity\n"
                + "from Products p\n"
                + "FULL join Models m\n"
                + "on p.modelId = m.modelId\n"
                + "FULL join Discounts d\n"
                + "on p.discountId = d.discountId\n"
                + "where p.productId = ?";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sqlQuery);
            ps.setString(1, proid);
            rs = ps.executeQuery();

            while (rs.next()) {
                return new Products(rs.getInt("productId"),
                        rs.getString("productName"),
                        rs.getDouble("price"),
                        rs.getString("image"),
                        rs.getString("Description"),
                        rs.getString("modelName"),
                        rs.getInt("discountRate"),
                        rs.getInt("quantity"));
            }

            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException | ClassNotFoundException sqe) {
            System.out.println("[ERROR]: " + sqe.getMessage());
        }

        return null;
    }

    public List<Products> searchByName(String txtSearch) {
        List<Products> list = new ArrayList<>();
        String sqlQuery = "select p.productId, p.productName, p.price, p.image, p.Description, m.modelName, d.discountRate, p.quantity\n"
                + "from Products p\n"
                + "FULL join Models m\n"
                + "on p.modelId = m.modelId\n"
                + "FULL join Discounts d\n"
                + "on p.discountId = d.discountId\n"
                + "where p.productName like ?";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sqlQuery);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Products(rs.getInt("productId"),
                        rs.getString("productName"),
                        rs.getDouble("price"),
                        rs.getString("image"),
                        rs.getString("Description"),
                        rs.getString("modelName"),
                        rs.getInt("discountRate"),
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

    public void deleteProductById(String pid) {
        String sqlQuery = "delete from Products where productId = ?";

        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sqlQuery);
            ps.setString(1, pid);
            ps.executeUpdate();

            ps.close();
            conn.close();
        } catch (SQLException | ClassNotFoundException sqe) {
            System.out.println("[ERROR]: " + sqe.getMessage());
        }
    }

    public void insertProduct(String name, String price, String image, String description, String modelId, String discountId, String quantity) {
        String sqlQuery = "insert into Products(productName, price, image, Description, modelId, discountId, quantity)\n"
                + "values (?, ?, ?, ?, ?, ?, ?)";

        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sqlQuery);
            ps.setString(1, name);
            ps.setString(2, price);
            ps.setString(3, image);
            ps.setString(4, description);
            ps.setString(5, modelId);
            ps.setString(6, discountId);
            ps.setString(7, quantity);
            ps.executeUpdate();

            ps.close();
            conn.close();
        } catch (SQLException | ClassNotFoundException sqe) {
            System.out.println("[ERROR]: " + sqe.getMessage());
        }
    }

    public void editProduct(String name, String price, String image, String description, String modelId, String discountId, String quantity, String id) {
        String sqlQuery = "update Products\n"
                + "set productName = ?, price = ?, [image] = ?, [Description] = ?, modelId = ?, discountId = ?, quantity = ?\n"
                + "where productId = ?";

        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sqlQuery);
            ps.setString(1, name);
            ps.setString(2, price);
            ps.setString(3, image);
            ps.setString(4, description);
            ps.setString(5, modelId);
            ps.setString(6, discountId);
            ps.setString(7, quantity);
            ps.setString(8, id);
            ps.executeUpdate();

            ps.close();
            conn.close();
        } catch (SQLException | ClassNotFoundException sqe) {
            System.out.println("[ERROR]: " + sqe.getMessage());
        }
    }
}
