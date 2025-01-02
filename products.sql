-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2025 at 08:10 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mrlowatbakery`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) DEFAULT 0,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `description`, `price`, `stock`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'Tiered Sponge Cake (Vanilla)', 'A beautifully layered sponge cake, perfect for any celebration.', 70.00, 35, 'images/tiered_sponge_cake.jpg', '2025-01-02 18:52:45', '2025-01-02 18:52:45'),
(2, 'Tiered Sponge Cake (Chocolate)', 'A beautifully layered sponge cake, perfect for any celebration.', 70.00, 43, 'images/tiered_sponge_cake.jpg', '2025-01-02 18:52:45', '2025-01-02 18:52:45'),
(3, 'Tiered Sponge Cake (Red Velvet)', 'A beautifully layered sponge cake, perfect for any celebration.', 70.00, 33, 'images/tiered_sponge_cake.jpg', '2025-01-02 18:52:45', '2025-01-02 18:52:45'),
(4, 'Tiered Sponge Cake (Pandan)', 'A beautifully layered sponge cake, perfect for any celebration.', 70.00, 44, 'images/tiered_sponge_cake.jpg', '2025-01-02 18:52:45', '2025-01-02 18:52:45'),
(5, 'Apam @ Moist Cake (Vanilla)', 'Soft, moist cake with a traditional touch.', 30.00, 41, 'images/apam_cake.jpg', '2025-01-02 18:52:45', '2025-01-02 18:52:45'),
(6, 'Apam @ Moist Cake (Chocolate)', 'Soft, moist cake with a traditional touch.', 30.00, 24, 'images/apam_cake.jpg', '2025-01-02 18:52:45', '2025-01-02 18:52:45'),
(7, 'Apam @ Moist Cake (Red Velvet)', 'Soft, moist cake with a traditional touch.', 30.00, 38, 'images/apam_cake.jpg', '2025-01-02 18:52:45', '2025-01-02 18:52:45'),
(8, 'Apam @ Moist Cake (Pandan)', 'Soft, moist cake with a traditional touch.', 30.00, 40, 'images/apam_cake.jpg', '2025-01-02 18:52:45', '2025-01-02 18:52:45'),
(9, 'Bite Size Cake (Vanilla)', 'Small, flavorful cakes for bite-sized enjoyment.', 35.00, 35, 'images/bite_size_cake.jpg', '2025-01-02 18:52:45', '2025-01-02 18:52:45'),
(10, 'Bite Size Cake (Chocolate)', 'Small, flavorful cakes for bite-sized enjoyment.', 35.00, 36, 'images/bite_size_cake.jpg', '2025-01-02 18:52:45', '2025-01-02 18:52:45'),
(11, 'Bite Size Cake (Red Velvet)', 'Small, flavorful cakes for bite-sized enjoyment.', 35.00, 27, 'images/bite_size_cake.jpg', '2025-01-02 18:52:45', '2025-01-02 18:52:45'),
(12, 'Bite Size Cake (Pandan)', 'Small, flavorful cakes for bite-sized enjoyment.', 35.00, 38, 'images/bite_size_cake.jpg', '2025-01-02 18:52:45', '2025-01-02 18:52:45'),
(13, 'Sponge Cake Simple Decoration (Vanilla)', 'Classic sponge cake with a simple and elegant decoration.', 42.00, 28, 'images/simple_sponge_cake.jpg', '2025-01-02 18:52:45', '2025-01-02 18:52:45'),
(14, 'Sponge Cake Simple Decoration (Chocolate)', 'Classic sponge cake with a simple and elegant decoration.', 42.00, 37, 'images/simple_sponge_cake.jpg', '2025-01-02 18:52:45', '2025-01-02 18:52:45'),
(15, 'Sponge Cake Simple Decoration (Red Velvet)', 'Classic sponge cake with a simple and elegant decoration.', 42.00, 21, 'images/simple_sponge_cake.jpg', '2025-01-02 18:52:45', '2025-01-02 18:52:45'),
(16, 'Sponge Cake Simple Decoration (Pandan)', 'Classic sponge cake with a simple and elegant decoration.', 42.00, 34, 'images/simple_sponge_cake.jpg', '2025-01-02 18:52:45', '2025-01-02 18:52:45'),
(17, 'Mini Cupcakes 16 pieces (Vanilla)', 'Delicious cupcakes with amazing designs.', 30.00, 27, 'images/mini_cupcakes_16.jpg', '2025-01-02 18:55:01', '2025-01-02 18:55:01'),
(18, 'Mini Cupcakes 16 pieces (Chocolate)', 'Delicious cupcakes with amazing designs.', 30.00, 46, 'images/mini_cupcakes_16.jpg', '2025-01-02 18:55:01', '2025-01-02 18:55:01'),
(19, 'Mini Cupcakes 16 pieces (Red Velvet)', 'Delicious cupcakes with amazing designs.', 30.00, 39, 'images/mini_cupcakes_16.jpg', '2025-01-02 18:55:01', '2025-01-02 18:55:01'),
(20, 'Mini Cupcakes 16 pieces (Pandan)', 'Delicious cupcakes with amazing designs.', 30.00, 37, 'images/mini_cupcakes_16.jpg', '2025-01-02 18:55:01', '2025-01-02 18:55:01'),
(21, 'Mini Size Cupcakes 25 pieces (Vanilla)', 'Delicious cupcakes with amazing designs.', 40.00, 21, 'images/mini_cupcakes_25.jpg', '2025-01-02 18:55:01', '2025-01-02 18:55:01'),
(22, 'Mini Size Cupcakes 25 pieces (Chocolate)', 'Delicious cupcakes with amazing designs.', 40.00, 31, 'images/mini_cupcakes_25.jpg', '2025-01-02 18:55:01', '2025-01-02 18:55:01'),
(23, 'Mini Size Cupcakes 25 pieces (Red Velvet)', 'Delicious cupcakes with amazing designs.', 40.00, 42, 'images/mini_cupcakes_25.jpg', '2025-01-02 18:55:01', '2025-01-02 18:55:01'),
(24, 'Mini Size Cupcakes 25 pieces (Pandan)', 'Delicious cupcakes with amazing designs.', 40.00, 41, 'images/mini_cupcakes_25.jpg', '2025-01-02 18:55:01', '2025-01-02 18:55:01'),
(25, 'Normal Cupcakes 16 pieces (Vanilla)', 'Delicious cupcakes with amazing designs.', 48.00, 26, 'images/normal_cupcakes.jpg', '2025-01-02 18:55:01', '2025-01-02 18:55:01'),
(26, 'Normal Cupcakes 16 pieces (Chocolate)', 'Delicious cupcakes with amazing designs.', 48.00, 49, 'images/normal_cupcakes.jpg', '2025-01-02 18:55:01', '2025-01-02 18:55:01'),
(27, 'Normal Cupcakes 16 pieces (Red Velvet)', 'Delicious cupcakes with amazing designs.', 48.00, 26, 'images/normal_cupcakes.jpg', '2025-01-02 18:55:01', '2025-01-02 18:55:01'),
(28, 'Normal Cupcakes 16 pieces (Pandan)', 'Delicious cupcakes with amazing designs.', 48.00, 23, 'images/normal_cupcakes.jpg', '2025-01-02 18:55:01', '2025-01-02 18:55:01'),
(29, 'Normal Size Cupcakes 25 pieces (Vanilla)', 'Delicious cupcakes with amazing designs.', 60.80, 21, 'images/normal_cupcakes_25.jpg', '2025-01-02 18:55:01', '2025-01-02 18:55:01'),
(30, 'Normal Size Cupcakes 25 pieces (Chocolate)', 'Delicious cupcakes with amazing designs.', 60.80, 43, 'images/normal_cupcakes_25.jpg', '2025-01-02 18:55:01', '2025-01-02 18:55:01'),
(31, 'Normal Size Cupcakes 25 pieces (Red Velvet)', 'Delicious cupcakes with amazing designs.', 60.80, 42, 'images/normal_cupcakes_25.jpg', '2025-01-02 18:55:01', '2025-01-02 18:55:01'),
(32, 'Normal Size Cupcakes 25 pieces (Pandan)', 'Delicious cupcakes with amazing designs.', 60.80, 34, 'images/normal_cupcakes_25.jpg', '2025-01-02 18:55:01', '2025-01-02 18:55:01'),
(33, 'Mini Cheese Tart (Original)', 'Choose your favorite flavor with different topping options.', 43.00, 22, 'images/mini_cheese_tart.jpg', '2025-01-02 18:56:15', '2025-01-02 18:56:15'),
(34, 'Mini Cheese Tart (Nutella)', 'Choose your favorite flavor with different topping options.', 43.00, 48, 'images/mini_cheese_tart.jpg', '2025-01-02 18:56:15', '2025-01-02 18:56:15'),
(35, 'Mini Cheese Tart (Cadbury)', 'Choose your favorite flavor with different topping options.', 43.00, 37, 'images/mini_cheese_tart.jpg', '2025-01-02 18:56:15', '2025-01-02 18:56:15'),
(36, 'Mini Cheese Tart (Mix and Match)', 'Choose your favorite flavor and mix and match different toppings.', 43.00, 21, 'images/mini_cheese_tart.jpg', '2025-01-02 18:56:15', '2025-01-02 18:56:15'),
(37, 'Giant Cheese Tart (6 inch - Original)', 'Includes mini tarts.', 58.00, 35, 'images/giant_cheese_tart.jpg', '2025-01-02 18:56:15', '2025-01-02 18:56:15'),
(38, 'Giant Cheese Tart (6 inch - Nutella)', 'Includes mini tarts.', 58.00, 30, 'images/giant_cheese_tart.jpg', '2025-01-02 18:56:15', '2025-01-02 18:56:15'),
(39, 'Giant Cheese Tart (7 inch - Cadbury)', 'Includes mini tarts.', 68.00, 27, 'images/giant_cheese_tart_7inch.jpg', '2025-01-02 18:56:15', '2025-01-02 18:56:15'),
(40, 'Giant Cheese Tart (7 inch - Original)', 'Includes mini tarts.', 68.00, 24, 'images/giant_cheese_tart_7inch.jpg', '2025-01-02 18:56:15', '2025-01-02 18:56:15'),
(41, '6 Inch Brownies (Chocolate)', 'Various topping choices and can add on your own deco/topper.', 25.00, 22, 'images/brownies_6inch.jpg', '2025-01-02 18:56:24', '2025-01-02 18:56:24'),
(42, '6 Inch Brownies (Nutella)', 'Various topping choices and can add on your own deco/topper.', 27.00, 20, 'images/brownies_6inch.jpg', '2025-01-02 18:56:24', '2025-01-02 18:56:24'),
(43, '6 Inch Brownies (Cream Cheese)', 'Various topping choices and can add on your own deco/topper.', 30.00, 41, 'images/brownies_6inch.jpg', '2025-01-02 18:56:24', '2025-01-02 18:56:24'),
(44, '6 Inch Brownies (Nuts)', 'Various topping choices and can add on your own deco/topper.', 32.00, 35, 'images/brownies_6inch.jpg', '2025-01-02 18:56:24', '2025-01-02 18:56:24'),
(45, '8 Inch Brownies (Chocolate)', 'Various topping choices and can add on your own deco/topper.', 35.00, 35, 'images/brownies_8inch.jpg', '2025-01-02 18:56:24', '2025-01-02 18:56:24'),
(46, '8 Inch Brownies (Nutella)', 'Various topping choices and can add on your own deco/topper.', 38.00, 21, 'images/brownies_8inch.jpg', '2025-01-02 18:56:24', '2025-01-02 18:56:24'),
(47, '8 Inch Brownies (Cream Cheese)', 'Various topping choices and can add on your own deco/topper.', 45.00, 38, 'images/brownies_8inch.jpg', '2025-01-02 18:56:24', '2025-01-02 18:56:24'),
(48, '8 Inch Brownies (Nuts)', 'Various topping choices and can add on your own deco/topper.', 48.00, 48, 'images/brownies_8inch.jpg', '2025-01-02 18:56:24', '2025-01-02 18:56:24'),
(49, 'Classic Burned Cheesecake', 'Rich and creamy cheesecake with a caramelized top.', 40.00, 47, 'images/burnt_cheesecake_6inch.jpg', '2025-01-02 18:57:43', '2025-01-02 18:57:43'),
(50, 'Custom Design Classic Burned Cheesecake', 'Design your own cheesecake with a caramelized top.', 55.00, 41, 'images/burnt_cheesecake_6inch.jpg', '2025-01-02 18:57:43', '2025-01-02 18:57:43'),
(51, 'Dessert Table Package A', 'Combination of Mini Cheese Tart, Moist Cake, Burnt Cheesecake, and Mini Cupcakes at a discounted price.', 145.00, 44, 'images/promotionA.jpg', '2025-01-02 18:57:58', '2025-01-02 18:57:58'),
(52, 'Dessert Table Package B', 'Combination of Sponge Cake, Mini Cheese Tart, Cream Puff, and Roti Sosej at a discounted price.', 175.00, 49, 'images/promotionB.jpg', '2025-01-02 18:57:58', '2025-01-02 18:57:58'),
(53, 'Dessert Table Package C', 'Combination of Sponge Cake, Moist Cake, Cream Puff, and Cheese Tart at a discounted price.', 145.00, 32, 'images/promotionC.jpg', '2025-01-02 18:57:58', '2025-01-02 18:57:58'),
(54, 'Dessert Table Package D', 'Combination of Bite-size Cake, Moist Cake, Burnt Cheesecake, and Mini Cupcakes at a discounted price.', 140.00, 23, 'images/promotionD.jpg', '2025-01-02 18:57:58', '2025-01-02 18:57:58'),
(55, 'Dessert Table Package E', 'Combination of Mini Cheese Tart, Bite-size Cake, Cream Puff, and Fruit Tart at a discounted price.', 135.00, 28, 'images/promotionE.jpg', '2025-01-02 18:57:58', '2025-01-02 18:57:58'),
(56, 'Dessert Table Package F', 'Combination of Sponge Cake, Moist Cake, Cream Puff, and Cheese Tart at a discounted price.', 125.00, 24, 'images/promotionF.jpg', '2025-01-02 18:57:58', '2025-01-02 18:57:58'),
(57, 'Dessert Table Package G', 'Combination of Bite-size Cake, Moist Cake, Cream Puff, and Cheese Tart at a discounted price.', 117.00, 46, 'images/promotionG.jpg', '2025-01-02 18:57:58', '2025-01-02 18:57:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
