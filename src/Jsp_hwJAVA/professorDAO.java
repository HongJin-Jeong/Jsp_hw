package Jsp_hwJAVA;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class professorDAO {


    private static Professor getStudentFrom(ResultSet resultSet) throws SQLException {
    	Professor professor = new Professor();
    	professor.setId(resultSet.getInt("id"));
    	professor.setStudentNumber(resultSet.getString("studentNumber"));
    	professor.setName(resultSet.getString("name"));
    	professor.setDepartmentId(resultSet.getInt("departmentId"));
    	professor.setYear(resultSet.getInt("year"));
    	professor.setDepartmentName(resultSet.getString("departmentName"));
        return professor;
    }

    public static List<Professor> findAll() throws Exception {
        String sql = "SELECT s.*, d.departmentName" +
                     " FROM student s LEFT JOIN department d ON s.departmentId = d.id";
        try (Connection connection = DB.getConnection("student1");
             PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            ArrayList<Professor> list = new ArrayList<Professor>();
            while (resultSet.next())
                list.add(getStudentFrom(resultSet));
            return list;
        }
    }

    public static Professor findByStudentNumber(String studentNumber) throws Exception {
        String sql = "SELECT s.*, d.departmentName" +
                     " FROM student s LEFT JOIN department d ON s.departmentId = d.id" +
                     " WHERE s.studentNumber = ?";
        try (Connection connection = DB.getConnection("student1");
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, studentNumber);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next())
                    return getStudentFrom(resultSet);
                else
                    return null;
            }
        }
    }

    public static Professor findById(int id) throws Exception {
        String sql = "SELECT s.*, d.departmentName " +
                     " FROM student s LEFT JOIN department d ON s.departmentId = d.id" +
                     " WHERE s.id = ?";
        try (Connection connection = DB.getConnection("student1");
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, id);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next())
                    return getStudentFrom(resultSet);
                else
                    return null;
            }
        }
    }

    public static void insert(Professor professor) throws Exception {
        String sql = "INSERT student (studentNumber, name, departmentId, year)" +
                     " VALUES (?, ?, ?, ?)";
        try (Connection connection = DB.getConnection("student1");
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, professor.getStudentNumber());
            statement.setString(2, professor.getName());
            statement.setInt(3, professor.getDepartmentId());
            statement.setInt(4, professor.getYear());
            statement.executeUpdate();
        }
    }


    public static void update(Professor professor) throws Exception {
        String sql = "UPDATE student SET studentNumber=?, name=?, departmentId=?, year=? " +
                     " WHERE id = ?";
        try (Connection connection = DB.getConnection("student1");
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, professor.getStudentNumber());
            statement.setString(2, professor.getName());
            statement.setInt(3, professor.getDepartmentId());
            statement.setInt(4, professor.getYear());
            statement.setInt(5, professor.getId());
            statement.executeUpdate();
        }
    }


}
