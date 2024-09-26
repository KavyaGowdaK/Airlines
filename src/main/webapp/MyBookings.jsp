<%@page import="com.AirlineSystemmodal.MyBookings"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.AirlineSystemmodal.*" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>My Bookings</title>
    <link rel="icon" href="images/logo.jpg" type="image/x-icon">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/360_F_271782927_keMVFo9PnBwrMEmbiUGKRcDT2rzf85dj.jpg'); /* Background image */
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            box-sizing: border-box;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2); /* Slight shadow for elevation */
            text-align: center;
            width: 100%;
            max-width: 1000px; /* Max width for larger screens */
            margin-top: 50px; /* Adjust for alignment */
        }

        h2 {
            color: #4CAF50;
            font-size: 24px;
            margin-bottom: 20px;
            font-weight: bold;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
            font-size: 14px;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #e6ffe6;
        }

        .no-flights-message {
            text-align: center;
            font-size: 18px;
            color: #333;
        }

        .footer {
            text-align: center;
            margin-top: 20px;
        }

        .back-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s ease;
            width: 200px;
        }

        .back-button:hover {
            background-color: #45a049;
        }

        /* Responsive adjustments */
        @media screen and (max-width: 768px) {
            .container {
                padding: 20px;
                width: 90%;
            }
            table {
                width: 100%;
                display: block;
                overflow-x: auto;
            }

            th, td {
                padding: 8px;
                font-size: 14px;
            }

            .back-button {
                font-size: 14px;
                padding: 8px 16px;
            }
        }

        @media screen and (max-width: 480px) {
            table {
                font-size: 12px;
            }

            .back-button {
                font-size: 12px;
                padding: 6px 12px;
            }
        }
    </style>
</head>
<body>
    <%@ include file="menu.jsp" %>

    <div class="container">
        <h2>My Bookings</h2>

        <!-- JSP scriptlet to display flight list -->
        <%
            List<MyBookings> bookingList = (List<MyBookings>) request.getAttribute("bookingsList");
            if (bookingList != null && !bookingList.isEmpty()) {
        %>
            <table>
                <thead>
                    <tr>
                        <th>Booking Id</th>
                        <th>Flight ID</th>
                        <th>Source City</th>
                        <th>Destination City</th>
                        <th>Passenger Name</th>
                        <th>Seat Class</th>
                        <th>No of Passengers</th>
                        <th>Booking Date</th>
                        <th>Flight Date</th>
                        <th>Flight Type</th>
                        <th>Total Amount</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        for (MyBookings book : bookingList) { 
                    %>
                        <tr>
                            <td><%= book.getBooking_id() %></td>
                            <td><%= book.getFlight_id() %></td>
                            <td><%= book.getSource_city() %></td>
                            <td><%= book.getDestination_city() %></td>
                            <td><%= book.getPassengername() %></td>
                            <td><%= book.getSeatClass()%></td>
                            <td><%= book.getNoOfPassengers() %></td>
                            <td><%= book.getBooking_date() %></td>
                            <td><%= book.getFlight_date() %></td>
                            <td><%= book.getFlight_type() %></td>
                            <td><%= book.getTotal_amount() %></td>
                        </tr>
                    <% 
                        } 
                    %>
                </tbody>
            </table>
        <%
            } else { 
        %>
            <p class="no-flights-message">Empty List</p>
        <%
            } 
        %>

        <div class="footer">
            <a href="index.jsp" class="back-button">Back to Book flight</a>
        </div>
    </div>
</body>
</html>
