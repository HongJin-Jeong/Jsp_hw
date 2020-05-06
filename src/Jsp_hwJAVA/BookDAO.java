package Jsp_hwJAVA;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BookDAO {
	 public static List<Book> findAll() throws Exception {
	        String sql = "SELECT b.*,c.categoryName " +
	                "FROM book b LEFT JOIN category c ON b.categoryID = c.id";
	        try (Connection connection = DB.getConnection("Book");
	             PreparedStatement statement = connection.prepareStatement(sql);
	             ResultSet resultSet = statement.executeQuery()) {
	            ArrayList<Book> list = new ArrayList<Book>();
	            while (resultSet.next()) {
	            	Book book = new Book();
	            	book.setId(resultSet.getInt("id"));
	            	book.setTitle(resultSet.getString("title"));
	            	book.setAuthor(resultSet.getString("author"));
	            	book.setCategoryID(resultSet.getString("categoryId"));
	            	book.setPrice(resultSet.getInt("price"));
	            	book.setPublisher(resultSet.getString("publisher"));
	                list.add(book);
	            }
	            return list;
	        }
	    }

}
