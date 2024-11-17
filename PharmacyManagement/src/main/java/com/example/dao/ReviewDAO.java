package com.example.dao;

import java.sql.SQLException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.example.model.Review;
import com.example.utils.DBConnection;

public class ReviewDAO {

    public boolean addReview(Review review) {
        // Get a connection to the database
        try (Connection connection = DBConnection.getConnection()) {
            String sql = "INSERT INTO reviews (name, phnumber, address, review) VALUES (?, ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(sql);

            // Set the parameters for the prepared statement
            stmt.setString(1, review.getName());
            stmt.setString(2, review.getPhnumber());
            stmt.setString(3, review.getAddress());
            stmt.setString(4, review.getReview());

            // Execute the update query
            int rowsAffected = stmt.executeUpdate();

            // Return true if the review was added successfully
            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false; // Return false if there was an error
        }
    }
}
