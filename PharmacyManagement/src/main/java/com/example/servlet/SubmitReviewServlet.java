package com.example.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.dao.ReviewDAO;
import com.example.model.Review;

@WebServlet("/SubmitReviewServlet")
public class SubmitReviewServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String phnumber = request.getParameter("phnumber");
        String address = request.getParameter("address");
        String review = request.getParameter("review");

        Review reviewObj = new Review(name, phnumber, address, review);

        // Call the DAO to save the review in the database
        ReviewDAO reviewDao = new ReviewDAO();
        boolean isAdded = reviewDao.addReview(reviewObj);

        if (isAdded) {
            response.sendRedirect("reviewSuccess.jsp");
        } else {
            response.sendRedirect("reviewError.jsp");
        }
    }
}
