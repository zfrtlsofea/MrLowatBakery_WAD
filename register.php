<?php
include_once 'connection.php'; // Include database connection file

$error = ''; // Initialize error as blank

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $email = $_POST['email'];
    $name = $_POST['name'];
    $password = $_POST['password'];
    $confirmPassword = $_POST['confirmPassword'];
    $address = $_POST['address'];
    $tel = $_POST['tel'];

    // Validate passwords
    if ($password !== $confirmPassword) {
        echo "Passwords do not match.";
        exit;
    }

    // Hash the password
    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

    // Use prepared statements to prevent SQL injection
    $stmt = $conn->prepare("INSERT INTO user (name, email, password, role, created_at, updated_at) VALUES (?, ?, ?, 'user', NOW(), NOW())");
    $stmt->bind_param("sss", $name, $email, $hashedPassword);

    // Execute the statement and check for success
    if ($stmt->execute()) {
        // Redirect to the login page
        header("Location: login.html");
        exit; // Ensure no further code is executed
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
}

$conn->close();
?>


<!------ Register.html ------>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Register - Mr. Lowat Bakery</title>
  <link rel="stylesheet" href="styles.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

</head>
<body>
  <header>
    <nav>
        <h1>Mr. Lowat Bakery</h1>
        <div class="nav-links">
          <ul> <justify-content: right> </justify-content: right>
            <li><a href="index.html"><i class="fas fa-home"></i>Home</a> </li>
           <li><a href="menu.html"><i class="fas fa-cake"></i>Menu</a></li>
           <li><a href="https://api.whatsapp.com/send/?phone=60164025451"><i class="fas fa-phone"></i>Contact</a></li>
           <li><a href="login.html"><i class="fas fa-sign-in-alt"></i>Login</a></li>
          </ul>
        </div>
    </nav>
  </header>

  <main>
  <form id="registerForm" method="POST" action="register.php">
  <h1>Register</h1>
  <p>Create a new account to start ordering.</p>
  
  <div class="form-group">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" placeholder="Your name" required>
  </div>

  <div class="form-group">
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" placeholder="Your email" required>
  </div>

  <div class="form-group">
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" placeholder="Your password" required>
  </div>

  <div class="form-group">
    <label for="confirmPassword">Confirm Password:</label>
    <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm your password" required>
  </div>

  <div class="form-group">
    <label for="address">Address:</label>
    <input type="text" id="address" name="address" placeholder="Your address" required> <!-- tambah dalam sql-->
  </div>

  <div class="form-group">
    <label for="tel">Telephone:</label>
    <input type="tel" id="tel" name="tel" placeholder="01X - XXXXXXX" required pattern="[0-9]{3}-[0-9]{7}"> <!-- tambah dalam sql-->
  </div>

  <div class="form-group">
    <input type="checkbox" id="terms" name="terms" required>
    <label for="terms">I agree to the terms and conditions.</label>
  </div>

  <div class="form-button">
    <button type="submit">Register</button>
    <button type="reset">Clear</button>
  </div>
</form>

    <p>Already have an account? <a href="login.html">Login here</a>.</p>
  </main>

  <footer>
    <p>&copy; 2024 Mr. Lowat Bakery. All rights reserved.</p>
  </footer>

  <script src="scripts.js"></script>

</body>
</html>
