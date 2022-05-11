package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLUsersDao implements Users {

    // F
    private Connection connection;

    // CON
    public MySQLUsersDao(Config config) {

        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database! MySQLUsersDao()", e);
        }
    }

    // OVR
    @Override
    public List<User> all() {
        PreparedStatement ps = null;
        try {
            ps = connection.prepareStatement("SELECT * FROM users");
            ResultSet rs = ps.executeQuery();
            return createUsersFromRS(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all users (MySQUsersDAO all()", e);
        }
    }


    @Override
    public User findByUsername(String username) {
        String q = "SELECT * FROM users WHERE username = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(q);
            ps.setString(1, username);

            return extractUser(ps.executeQuery());

        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by username (findByUsername())", e);
        }
    }

    @Override
    public User findByEmail(String email) {
        String q = "SELECT * FROM users WHERE email = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(q);
            ps.setString(1, email);

            return extractUser(ps.executeQuery());

        } catch (SQLException e) {
            throw new RuntimeException("Error finding a email", e);
        }
    }

    @Override
    public Long insert(User u) {
        String q = "INSERT INTO tech_tut_db.users (username, email, password, avatar) VALUES (?, ?, ?, ?)";
        try {
            PreparedStatement s = connection.prepareStatement(q, Statement.RETURN_GENERATED_KEYS);
            s.setString(1, u.getUsername());
            s.setString(2, u.getEmail());
            s.setString(3, u.getPassword());
            s.setString(4, u.getAvatar());

            s.executeUpdate();
            ResultSet rs = s.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new user (insert()) ", e);
        }
    }

    //Delete User
    @Override
    public void delete(User user) {
        try {
            String deleteQuery = "DELETE FROM users WHERE id = ?";
            PreparedStatement ps = connection.prepareStatement(deleteQuery, Statement.RETURN_GENERATED_KEYS);
            ps.setLong(1, user.getId());
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // HELPER METHS
    private User extractUser(ResultSet rs) throws SQLException {
        if (! rs.next()) {
            return null;
        }
        return new User(
            rs.getInt("id"),
            rs.getString("username"),
            rs.getString("email"),
            rs.getString("password"),
            rs.getString("avatar")
        );
    }

    private List<User> createUsersFromRS(ResultSet rs) throws SQLException {
        List<User> users = new ArrayList<>();
        while (rs.next()) {
            users.add(extractUser(rs));
        }
        return users;
    }

}
