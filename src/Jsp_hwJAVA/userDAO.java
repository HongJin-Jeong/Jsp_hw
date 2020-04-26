package Jsp_hwJAVA;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class userDAO {
    public static List<User> findAll() throws Exception {
        String sql = "SELECT s.*, d.departmentName " +
                     "FROM student s LEFT JOIN department d ON s.departmentId = d.id";
        try (Connection connection = DB.getConnection("student1");
             PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            ArrayList<User> list = new ArrayList<User>();
            while (resultSet.next()) {
                User user = new User();
                user.setUserid(resultSet.getString("Userid"));
                user.setName(resultSet.getString("name"));
                user.setEmail(resultSet.getString("email"));
                user.setDepartmentName(resultSet.getString("departmentName"));
                user.setEnabled(resultSet.getBoolean("enabled"));
                list.add(user);
            }
            return list;
        }
    }

}
