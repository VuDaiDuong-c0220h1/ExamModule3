package util;

public class Query {
   public static final String SELECT_ALL_PRODUCT = "SELECT * FROM product\n" +
           "JOIN category c ON product.category_id = c.id";

   public static final String CREATE_PRODUCT = "INSERT INTO exam.product (id, product_name, price, color, category_id, quantity) " +
           "VALUE (id=?, product_name=?, price=? ,color=? ,category_id=? ,quantity=?)";

   public static final String SELECT_PRODUCT_BY_ID="select *\n" +
           "from product\n" +
           "join category c on product.category_id = c.id\n" +
           "WHERE product.id = ?";
}
