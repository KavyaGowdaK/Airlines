<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name='viewport' content='width=device-width, initial-scale=0.8'> <!-- Reduced scale for smaller view -->
    <title>Register User</title>
    <link rel="icon" href="images/logo.jpg" type="image/x-icon">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/sweetalert/dist/sweetalert.css">

    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image: 82927_keMVFo9PnBwrMEmbiUGKRcDT2rzf85dj.jpgurl('images/360_F_2717');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            color: #333;
        }

        .container {
            background: linear-gradient(to bottom right, rgba(255, 255, 255, 0.9), rgba(255, 255, 255, 0.6));
            padding: 30px; /* Reduced padding */
            border-radius: 15px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.4);
            width: 85%; /* Reduced width */
            max-width: 350px; /* Further reduced max width */
            box-sizing: border-box;
            margin: 20px;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .container:hover {
            transform: translateY(-5px);
            box-shadow: 0 25px 50px rgba(0, 0, 0, 0.6);
        }

        h2 {
            text-align: center;
            color: #4CAF50;
            font-weight: 700;
            margin-bottom: 15px; /* Reduced margin */
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
        }

        label {
            display: block;
            margin: 10px 0 5px; /* Reduced margin */
            color: #000;
            font-weight: 600;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px; /* Reduced padding */
            margin-bottom: 12px; /* Reduced margin */
            border: 1px solid #cccccc;
            border-radius: 10px;
            box-sizing: border-box;
            background-color: #f9f9f9;
            transition: border-color 0.3s, background-color 0.3s;
            font-size: 14px; /* Reduced font size */
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="password"]:focus {
            border-color: #4CAF50;
            background-color: #ffffff;
            outline: none; /* Remove default outline */
        }

        .checkbox {
            text-align: left;
            margin-bottom: 15px; /* Reduced margin */
        }

        input[type="submit"] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 10px; /* Reduced padding */
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
            font-size: 14px; /* Reduced font size */
            font-weight: bold;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }

        input[type="submit"]:hover {
            background-color: #45a049;
            transform: translateY(-2px); /* Lift effect on hover */
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3); /* Stronger shadow on hover */
        }

        .back-to-login {
            text-align: center;
            margin-top: 15px; /* Reduced margin */
        }

        .back-to-login a {
            text-decoration: none;
            color: #4CAF50;
            font-weight: bold;
            font-size: 14px; /* Reduced font size */
            transition: color 0.3s, border-bottom 0.3s;
            border-bottom: 2px solid transparent;
            padding-bottom: 2px;
        }

        .back-to-login a:hover {
            color: #45a049;
            border-bottom: 2px solid #45a049; /* Underline effect on hover */
        }

        .back-to-login a:active {
            color: #2e7031; /* Darker shade when active */
        }

        /* Responsive styles */
        @media (max-width: 600px) {
            .container {
                padding: 25px; /* Adjust padding for mobile */
                max-width: 90%; /* Max width for mobile */
            }

            input[type="submit"] {
                padding: 10px;
            }

            .back-to-login a {
                font-size: 12px; /* Reduced font size */
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Register User</h2>
        <form action="RegistrationServlet" method="post">
            <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
            <label for="first_name">First Name:</label>
            <input type="text" name="first_name" required>
            
            <label for="last_name">Last Name:</label>
            <input type="text" name="last_name" required>
            
            <label for="email">Email:</label>
            <input type="email" name="email" required>
            
            <label for="password">Password:</label>
            <input type="password" name="password" id="password" required>
            <div class="checkbox">
                <input type="checkbox" id="showPassword" onclick="togglePassword()"> Show Password
            </div>
            
            <label for="contact">Contact Number:</label>
            <input type="text" name="contact" required>
            
            <input type="submit" value="Register">
        </form>

        <div class="back-to-login">
            <a href="login.jsp">I am already a member</a>
        </div>
    </div>
    
    <script type="text/javascript">
        var status = document.getElementById("status").value;
        if (status == "success") {
            swal("Congrats", "Account Created Successfully", "success");
        }
        if (status == "Exist") {
            swal("Sorry", "Email is already existed", "error");
        }
        
        function togglePassword() {
            var passwordField = document.getElementById("password");
            passwordField.type = passwordField.type === "password" ? "text" : "password";
        }
    </script>
</body>
</html>
