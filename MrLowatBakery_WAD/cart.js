<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cart - Mr. Lowat Bakery</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <header>
        <nav>
            <h1>Mr. Lowat Bakery</h1>
            <div class="nav-links">
                <ul>
                    <li><a href="index.html"><i class="fas fa-home"></i>Home</a></li>
                    <li><a href="menu.html"><i class="fas fa-cake"></i>Menu</a></li>
                    <li><a href="cart.html"><i class="fas fa-shopping-cart"></i>Cart <span id="cart-count">0</span></a></li>
                </ul>
            </div>
        </nav>
    </header>

    <main>
        <h1>Your Cart</h1>
        <div id="cart-container">
            <!-- Cart items will appear here -->
        </div>
        <div id="cart-total">
            <p>Total: <span id="total-price">$0.00</span></p>
            <button id="checkout-button" disabled>Proceed to Checkout</button>
        </div>
    </main>

    <footer>
        <p>&copy; 2024 Mr. Lowat Bakery. All rights reserved.</p>
    </footer>

    <script src="scripts.js"></script>
</body>
</html>
