<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>Verify OTP</title>
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
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2); /* Increased shadow for a bolder effect */
            text-align: center;
            width: 90%;
            max-width: 400px; /* Max width for larger screens */
        }

        h1 {
            color: #4CAF50;
            font-size: 24px;
            margin-bottom: 20px;
            font-weight: bold; /* Bold font for the heading */
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
            font-weight: normal; /* Normal weight for subheading */
        }

        label {
            display: block;
            font-size: 16px;
            margin-bottom: 10px;
            color: #555;
            font-weight: bold; /* Bold label text */
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #cccccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease; /* Smooth transition on hover */
        }

        input[type="submit"]:hover {
            background-color: #45a049; /* Darker green on hover */
        }

        .message {
            margin-bottom: 20px;
            color: #333;
        }

        /* Responsive styles */
        @media (max-width: 600px) {
            .container {
                padding: 20px;
                max-width: 90%; /* Responsive padding */
            }
            input[type="text"], input[type="submit"] {
                padding: 8px;
                font-size: 14px;
            }
            h1 {
                font-size: 20px;
            }
            h2 {
                font-size: 18px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>OTP Sent Successfully</h1>
        <h2>Enter OTP</h2>
        <form action="VerifyOtpServlet" method="post">
            <label for="otp">Enter the OTP:</label>
            <input type="text" name="otp" id="otp" required>
            <input type="submit" value="Verify OTP">
        </form>
    </div>
</body>
</html>
