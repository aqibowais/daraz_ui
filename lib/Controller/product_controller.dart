import 'package:daraz_ui/model/product_model.dart';

class ProductController {
  List<Product> productList = [
    Product(
      name: 'Product 1',
      imageUrl: 'assets/thumb.png',
      originalPrice: 100.0,
      discountedPrice: 80.0,
      rating: 4.5,
      soldQuantities: 50,
      reviews: 10,
    ),
    Product(
      name: 'Product 2',
      imageUrl: 'assets/free.png',
      originalPrice: 200.0,
      discountedPrice: 150.0,
      rating: 4.0,
      soldQuantities: 30,
      reviews: 20,
    ),
  ];
}
