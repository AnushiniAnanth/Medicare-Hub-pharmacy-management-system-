<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Scan Booking</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 20px 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        p {
            text-align: center;
            font-size: 16px;
            margin-bottom: 20px;
        }
        a {
            color: #007BFF;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            font-weight: bold;
            margin-bottom: 5px;
        }
        input[type="text"], input[type="number"], select {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
            width: 100%;
        }
        input[type="submit"] {
            padding: 10px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Scan Booking Form</h2>
        <%
            // Retrieve phone number from session
            String phnumber = (String) session.getAttribute("phnumber");
            if (phnumber == null) {
        %>
            <p>Please <a href="login.jsp">log in</a> to book a scan.</p>
        <%
            } else {
        %>
            <form action="ScanBookingServlet" method="post">
                <input type="hidden" name="phnumber" value="<%= phnumber %>" />

                <label for="patientName">Patient Name:</label>
                <input type="text" id="patientName" name="patientName" required>

                <label for="address">Address:</label>
                <input type="text" id="address" name="address" required>

                <label for="age">Age:</label>
                <input type="number" id="age" name="age" required>

                <label for="scanType">Scan Type:</label>
                <select id="scanType" name="scanType" required>
                    <option value="" disabled selected>Select Scan Type</option>
                    <option value="CT Scan">CT Scan</option>
                    <option value="MRI">MRI</option>
                    <option value="X-Ray">X-Ray</option>
                    <option value="Ultrasound">Ultrasound</option>
                    <option value="ECG">ECG</option>
                    <option value="PET Scan">PET Scan</option>
                    <option value="Mammography">Mammography</option>
                    <option value="DEXA Scan">DEXA Scan</option>
                    <option value="Angiography">Angiography</option>
                    <option value="Endoscopy">Endoscopy</option>
                </select>

                <input type="submit" value="Book Scan">
            </form>
        <%
            }
        %>
    </div>
</body>
</html>
