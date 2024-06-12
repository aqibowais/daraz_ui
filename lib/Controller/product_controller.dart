import 'package:daraz_ui/model/product_model.dart';

class ProductController {
  List<Product> productList = [
    Product(
      name: 'Bluetooth Earphones',
      imageUrl: 'assets/bthearphones.jfif',
      originalPrice: 620,
      discountedPrice: 659,
      rating: 4.0,
      soldQuantities: 719,
      reviews: 4,
    ),
    Product(
      name: 'EarBuds',
      imageUrl: 'assets/earbuds.jfif',
      originalPrice: 900,
      discountedPrice: 980,
      rating: 4.5,
      soldQuantities: 450,
      reviews: 2,
    ),
    Product(
      name: 'Hangers',
      imageUrl: 'assets/hangers.jfif',
      originalPrice: 500,
      discountedPrice: 550,
      rating: 4.0,
      soldQuantities: 130,
      reviews: 3,
    ),
  ];
}
