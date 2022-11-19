import 'package:flutter/material.dart';

class Product {
  final String? id;
  final String image, title;
  final double price;

  //final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.id,
    //this.bgColor = const Color(0xFFEFEFF2),

//get description => null;
  });
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      //'description': description,
      'price': price,
      'image': image,
      // 'id': id,
    };
  }

  static Product fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      //description: json['description'],
      price: json['price'],
      image: json['image'],
    );
  }

  Product copyWith({
    String? id,
    String? title,
    //String? description,
    double? price,
    String? image,
    // bool? isFavorite,
  }) {
    return Product(
      id: id ?? this.id,
      title: title ?? this.title,
      price: price ?? this.price,
      image: image ?? this.image,
    );
  }

  // Object? toJson() {}
}

// bool get isFavorite {
//     return _isFavorite.value;
//   }
//    ValueNotifier<bool> get isFavoriteListenable {
//     return _isFavorite;
//   }
List<Product> demo_product = [
  // Product(
  //   image: "assets/images/Tshirtngan1.png",
  //   title: "Áo hình chú mèo",
  //   price: 165,
  //   id: '01',
  //   //bgColor: const Color(0xFFFEFBF9),
  // ),
  // Product(
  //   image: "assets/images/Tshirtngan2.png",
  //   title: "Áo nữ đính nơ màu trắng",
  //   price: 145,
  //   id: '02',
  // ),
  // Product(
  //   image: "assets/images/Tshirtngan3.png",
  //   title: "Áo thun nữ kiểu thủy thủ",
  //   price: 180,
  //   id: '03',
  //   //bgColor: const Color(0xFFF8FEFB),
  // ),
  // Product(
  //   image: "assets/images/Tshirtngan4.png",
  //   title: "Áo thun nữ cỏ cột nơ tai thỏ",
  //   price: 149,
  //   id: '04',
  // ),
  // Product(
  //   image: "assets/images/shirtdai1.png",
  //   title: "Áo nữ hình mèo và cá",
  //   price: 150,
  //   id: '05',
  // ),
  // Product(
  //   image: "assets/images/shirtdai2.png",
  //   title: "Áo thêu 3 chú mèo",
  //   price: 145,
  //   id: '06',
  // ),
  // Product(
  //   image: "assets/images/shirtdai3.png",
  //   title: "Áo sơ mi thêu hình chiếc lá",
  //   price: 180,
  //   id: '07',
  // ),
  // Product(
  //   image: "assets/images/shirtdai4.png",
  //   title: "Áo sơ mi thêu hoa cúc",
  //   price: 175,
  //   id: '08',
  // ),
  // Product(
  //   image: "assets/images/dam1.png",
  //   title: "Đầm cổ thủy thủ",
  //   price: 250,
  //   id: '09',
  // ),
  // Product(
  //   image: "assets/images/dam2.png",
  //   title: "Đầm họa tiết hoa nhí",
  //   price: 210,
  //   id: '10',
  // ),
  // Product(
  //   image: "assets/images/dam3.png",
  //   title: "Đầm cổ đính nơ",
  //   price: 200,
  //   id: '11',
  // ),
  // Product(
  //   image: "assets/images/dam4.png",
  //   title: "Đầm thêu chữ Summer",
  //   price: 199,
  //   id: '12',
  // ),
  // Product(
  //   image: "assets/images/quan1.png",
  //   title: "Quần nữ thu đông",
  //   price: 119,
  //   id: '13',
  // ),
  // Product(
  //   image: "assets/images/quan2.png",
  //   title: "Quần ống rộng tay rút",
  //   price: 170,
  //   id: '14',
  // ),
  // Product(
  //   image: "assets/images/quan3.png",
  //   title: "Quần lửng ống rộng nữ",
  //   price: 165,
  //   id: '15',
  // ),
  // Product(
  //   image: "assets/images/quan4.png",
  //   title: "Quần thêu hình con vật",
  //   price: 155,
  //   id: '16',
  // ),
];
