package service;

import model.Product;

import java.sql.SQLException;
import java.util.List;

public interface IProductService {
    List<Product> getProductList() throws SQLException;
    Product createProduct() throws SQLException;
    Product getProduct(int id) throws SQLException;
}
