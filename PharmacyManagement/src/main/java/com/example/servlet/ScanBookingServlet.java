package com.example.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.dao.ScanBookingDAO;
import com.example.model.ScanBooking;

@WebServlet("/ScanBookingServlet")
public class ScanBookingServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String phnumber = (String) session.getAttribute("phnumber");

        if (phnumber == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        String patientName = request.getParameter("patientName");
        String address = request.getParameter("address");
        int age = Integer.parseInt(request.getParameter("age"));
        String scanType = request.getParameter("scanType");

        ScanBooking scanBooking = new ScanBooking();
        scanBooking.setPhnumber(phnumber);
        scanBooking.setPatientName(patientName);
        scanBooking.setAddress(address);
        scanBooking.setAge(age);
        scanBooking.setScanType(scanType);

        ScanBookingDAO scanBookingDAO = new ScanBookingDAO();
        boolean isBooked = scanBookingDAO.bookScan(scanBooking);

        if (isBooked) {
            response.sendRedirect("scanBookingSuccess.jsp");
        } else {
            response.sendRedirect("scanBookingError.jsp");
        }
    }
}
