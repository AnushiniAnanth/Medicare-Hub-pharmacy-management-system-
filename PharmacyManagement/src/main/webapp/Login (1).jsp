<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
        .form-container {
            text-align: center;
        }
        .signup-link {
            margin-top: 10px;
            display: block;
            font-size: 14px;
            color: #333;
            text-decoration: none;
        }
        .signup-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Login</h2>
        <form action="LoginServlet" method="post">
            <label for="phnumber">Phone Number:</label>
            <input type="text" id="phnumber" name="phnumber" placeholder="Enter your phone number" required><br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="Enter your password" required><br>
            <button type="submit">Login</button>
        </form>
        <a href="Signup.jsp" class="signup-link">Don't have an account? Sign up here</a>
    </div>
</body>
</html> 
