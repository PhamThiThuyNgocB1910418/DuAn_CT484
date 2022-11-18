import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demo_product = [
  Product(
    image: "assets/images/Tshirtngan1.png",
    title: "Áo hình chú mèo",
    price: 165,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/images/Tshirtngan2.png",
    title: "Áo nữ đính nơ màu trắng",
    price: 145,
  ),
  Product(
    image: "assets/images/Tshirtngan3.png",
    title: "Áo thun nữ kiểu thủy thủ",
    price: 180,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/Tshirtngan4.png",
    title: "Áo thun nữ cỏ cột nơ tai thỏ",
    price: 149,
    bgColor: const Color(0xFFEEEEED),
  ),
  Product(
    image: "assets/images/shirtdai1.png",
    title: "Áo nữ hình mèo và cá",
    price: 150,
    bgColor: const Color(0xFFEEEEED),
  ),
  Product(
    image: "assets/images/shirtdai2.png",
    title: "Áo thêu 3 chú mèo",
    price: 145,
    bgColor: const Color(0xFFEEEEED),
  ),
  Product(
    image: "assets/images/shirtdai3.png",
    title: "Áo sơ mi thêu hình chiếc lá",
    price: 180,
    bgColor: const Color(0xFFEEEEED),
  ),
  Product(
    image: "assets/images/shirtdai4.png",
    title: "Áo sơ mi thêu hoa cúc",
    price: 175,
    bgColor: const Color(0xFFEEEEED),
  ),
  Product(
    image: "assets/images/dam1.png",
    title: "Đầm cổ thủy thủ",
    price: 250,
    bgColor: const Color(0xFFEEEEED),
  ),
  Product(
    image: "assets/images/dam2.png",
    title: "Đầm họa tiết hoa nhí",
    price: 210,
    bgColor: const Color(0xFFEEEEED),
  ),
  Product(
    image: "assets/images/dam3.png",
    title: "Đầm cổ đính nơ",
    price: 200,
    bgColor: const Color(0xFFEEEEED),
  ),
  Product(
    image: "assets/images/dam4.png",
    title: "Đầm thêu chữ Summer",
    price: 199,
    bgColor: const Color(0xFFEEEEED),
  ),
  Product(
    image: "assets/images/quan1.png",
    title: "Quần nữ thu đông",
    price: 119,
    bgColor: const Color(0xFFEEEEED),
  ),
  Product(
    image: "assets/images/quan2.png",
    title: "Quần ống rộng tay rút",
    price: 170,
    bgColor: const Color(0xFFEEEEED),
  ),
  Product(
    image: "assets/images/quan3.png",
    title: "Quần lửng ống rộng nữ",
    price: 165,
    bgColor: const Color(0xFFEEEEED),
  ),
  Product(
    image: "assets/images/quan4.png",
    title: "Quần thêu hình con vật",
    price: 155,
    bgColor: const Color(0xFFEEEEED),
  ),
];
