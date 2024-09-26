<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>Reset Password</title>
    <link rel="icon" href="images/logo.jpg" type="image/x-icon">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/360_F_271782927_keMVFo9PnBwrMEmbiUGKRcDT2rzf85dj.jpg'); /* Use the same background as the registration page */
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            box-sizing: border-box;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px; /* Match registration page style */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 90%;
            max-width: 350px; /* Slightly smaller than the previous max-width */
            box-sizing: border-box;
            margin: 10px;
            text-align: center; /* Center text alignment */
        }

        h2 {
            color: #000000;
            margin-bottom: 20px;
            font-size: 24px; /* Same size as registration */
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-size: 16px;
            color: #000000;
        }

        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #cccccc;
            border-radius: 4px;
            box-sizing: border-box; /* Ensure padding is included in width */
        }

        input[type="submit"] {
            width: 100%;
            background-color: #4CAF50; /* Same as registration */
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px; /* Match registration */
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease, transform 0.2s; /* Smooth transition */
        }

        input[type="submit"]:hover {
            background-color: #45a049;
            transform: translateY(-2px); /* Lift effect on hover */
        }

        /* Responsive styles */
        @media (max-width: 600px) {
            .container {
                padding: 20px;
                max-width: 100%;
            }
            h2 {
                font-size: 20px;
            }
            label {
                font-size: 14px;
            }
            input[type="password"], input[type="submit"] {
                padding: 8px;
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Reset Password</h2>
        <form action="ResetPasswordServlet" method="post">
            <label for="password">Enter new password:</label>
            <input type="password" name="password" id="password" required>
            <input type="submit" value="Reset Password">
        </form>
    </div>
</body>
</html>

