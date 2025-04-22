<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Page</title>
    <link rel="stylesheet" href="dstyles.css"> <!-- Link to an external css file-->
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
        .registration-form {
            background: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            animation: fadeIn 0.5s;
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        input[type="text"], input[type="email"], input[type="password"] {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="registration-form">
        <h2>Register</h2>
        <form action="register" method="post">
      <input type="text" name="username" placeholder="Username" required>
      <input type="email" name="email" placeholder="Email" required>
      <input type="password" name="password" placeholder="Password" required>
      <div id="doctorFields" style="display: none;">
          <input type="text" name="specialty" placeholder="Specialty" required>
          <input type="text" name="licenseNumber" placeholder="License Number" required>
      </div>
      <script>
          document.querySelectorAll('input[name="userType"]').forEach((elem) => {
              elem.addEventListener("change", function(event) {
                  const doctorFields = document.getElementById("doctorFields");
                  if (event.target.value === "doctor") {
                      doctorFields.style.display = "block";
                  } else {
                      doctorFields.style.display = "none";
                  }
              });
          });
      </script>

      <label>User Type:</label>
      <input type="radio" name="userType" value="patient" checked> Patient
      <input type="radio" name="userType" value="doctor"> Doctor

      <button type="submit">Register</button>
    </form>
        <p>Already have an account? <a href="login.jsp">Login here</a></p>
    </div>
</body>
</html>
