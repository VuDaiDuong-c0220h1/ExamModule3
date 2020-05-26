package service;

import model.Category;
import model.Product;
import util.DBHandle;
import util.Query;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

public class ProductServiceImpl implements IProductService {
    private Connection connection;
    private PreparedStatement statement;
    public ProductServiceImpl() {
        connection = DBHandle.getConnection();
    }

    public Product getProduct(int id) throws SQLException{
        statement = connection.prepareStatement(Query.SELECT_PRODUCT_BY_ID);
        statement.setInt(1, id);
        ResultSet resultSet = statement.executeQuery();
        resultSet.first();
        return parseResultSet(resultSet);
    }
    public List<Product> getProductList() throws SQLException{
        List<Product> products = new LinkedList<>();
        statement = connection.prepareStatement(Query.SELECT_ALL_PRODUCT);
        ResultSet resultSet = statement.executeQuery();
        while (resultSet.next()){
            products.add(parseResultSet(resultSet));
        }
        return products;
    }

    public Product createProduct() throws SQLException{
        Product product = new Product();
        statement = connection.prepareStatement(Query.CREATE_PRODUCT);
        ResultSet resultSet = statement.executeQuery();
        while (resultSet.next()){
            product = parseResultSet(resultSet);
        }
        return product;
    }

    private Product parseResultSet(ResultSet resultSet) throws SQLException {
        Product product = new Product();
        Category category = new Category();
        product.setProductID(resultSet.getInt("product.id"));
        product.setProductName(resultSet.getString("product_name"));
        product.setPrice(resultSet.getFloat("price"));
        product.setColor(resultSet.getString("color"));
        product.setQuantity(resultSet.getInt("quantity"));
        product.setCategoryID(resultSet.getInt("category_id"));
        category.setCategoryID(resultSet.getInt("category_id"));
        category.setCategoryName(resultSet.getString("category_name"));
        product.setCategory(category);
        return product;
    }
}
