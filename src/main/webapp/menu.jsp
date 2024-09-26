<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>Responsive Navbar</title>
    <link rel="icon" href="images/logo.jpg" type="image/x-icon">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent background similar to register.jsp */
            box-sizing: border-box;
        }

        /* Navbar container */
        .navbar {
            width: 100%;
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 14px 20px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2); /* Similar shadow effect */
        }

        /* Menu icon for smaller screens */
        .navbar .menu-icon {
            display: none;
            font-size: 30px;
            cursor: pointer;
            color: #4CAF50; /* Green color matching the register.jsp */
        }

        /* Links inside the navbar */
        .nav-links {
            display: flex;
            flex-grow: 1;
            justify-content: space-around;
            transition: max-height 0.5s ease-out;
        }

        /* Style links inside navbar */
        .nav-links a {
            display: block;
            color: #333; /* Dark color for the links */
            padding: 14px 20px;
            text-decoration: none;
            font-size: 16px;
            border-radius: 5px;
            transition: background-color 0.3s ease; /* Smooth transition on hover */
        }

        /* Hover effect for links */
        .nav-links a:hover {
            background-color: #4CAF50; /* Green hover effect */
            color: white; /* White text on hover */
        }

        /* Style when navbar is toggled on mobile */
        .navbar.responsive .nav-links {
            display: block;
            flex-direction: column;
            width: 100%;
            position: absolute;
            top: 50px;
            left: 0;
            background-color: rgba(255, 255, 255, 0.9); /* Match the semi-transparent background */
            max-height: 300px;
            transition: max-height 0.5s ease;
        }

        /* Logout button */
        .logout {
            background-color: red;
            padding: 10px 15px;
            border-radius: 5px;
            color: white;
            font-size: 16px;
            border: none;
            transition: background-color 0.3s ease; /* Smooth transition */
        }

        .logout:hover {
            background-color: darkred;
        }

        /* Responsive styling for smaller screens */
        @media (max-width: 768px) {
            .nav-links {
                display: none;
                flex-direction: column;
                width: 100%;
                position: absolute;
                top: 50px;
                left: 0;
                background-color: rgba(255, 255, 255, 0.9); /* Match mobile view background */
                max-height: 0;
                overflow: hidden;
            }

            /* Show hamburger icon */
            .navbar .menu-icon {
                display: block;
            }

            /* When toggled, show links and animate dropdown */
            .navbar.responsive .nav-links {
                display: flex;
                max-height: 240px;
            }
        }
    </style>
</head>
<body>
<div class="navbar" id="navbar">
    <span class="menu-icon" id="menu-icon" onclick="toggleMenu()">&#9776;</span>
    <div class="nav-links">
        <a href="index.jsp">Home</a>
        <a href="MyBookingsServlet">My Bookings</a>
        <a href="DomesticFlightsServlet">View Domestic Flights</a>
        <a href="InternationalFlightsServlet">View International Flights</a>
        <a href="logoutServlet" class="logout">Logout</a>
    </div>
</div>

<script type="text/javascript">
    function toggleMenu() {
        var navbar = document.getElementById("navbar");
        var menuIcon = document.getElementById("menu-icon");
        navbar.classList.toggle("responsive");

        // Toggle between hamburger (☰) and cross (✖)
        if (navbar.classList.contains("responsive")) {
            menuIcon.innerHTML = "&#10006;"; // Cross symbol
        } else {
            menuIcon.innerHTML = "&#9776;"; // Hamburger symbol
        }
    }
</script>
</body>
</html>
