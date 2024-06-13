import 'package:daraz_ui/model/product_model.dart';

class ProductController {
  List<Product> productList = [
    Product(
      name: 'Wireless Bluetooth Earphones',
      imageUrl: 'assets/bthearphones.jfif',
      originalPrice: 750,
      discountedPrice: 650,
      rating: 4.2,
      soldQuantities: 450,
      reviews: 25,
    ),
    Product(
      name: 'Earphones for Sam-Sung Galaxy A12',
      imageUrl: 'assets/blueearphones.jfif',
      originalPrice: 300,
      discountedPrice: 250,
      rating: 4.0,
      soldQuantities: 300,
      reviews: 15,
    ),
    Product(
      name: 'High-Fidelity Red Earphones',
      imageUrl: 'assets/redearphones.png',
      originalPrice: 850,
      discountedPrice: 800,
      rating: 4.3,
      soldQuantities: 500,
      reviews: 30,
    ),
    Product(
      name: 'Noise Cancelling EarBuds',
      imageUrl: 'assets/earbuds.jfif',
      originalPrice: 900,
      discountedPrice: 950,
      rating: 4.7,
      soldQuantities: 600,
      reviews: 40,
    ),
    Product(
      name: 'Adjustable Headset Hangers',
      imageUrl: 'assets/headset.jfif',
      originalPrice: 350,
      discountedPrice: 300,
      rating: 4.1,
      soldQuantities: 200,
      reviews: 20,
    ),
    Product(
      name: 'Compact EarBuds with Charging Case',
      imageUrl: 'assets/earbuds.jfif',
      originalPrice: 800,
      discountedPrice: 890,
      rating: 4.5,
      soldQuantities: 550,
      reviews: 35,
    ),
  ];
}
