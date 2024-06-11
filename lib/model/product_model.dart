class Product {
  final String name;
  final String imageUrl;
  final double originalPrice;
  final double discountedPrice;
  final double rating;
  final int soldQuantities;
  final int reviews;

  Product({
    required this.name,
    required this.imageUrl,
    required this.originalPrice,
    required this.discountedPrice,
    required this.rating,
    required this.soldQuantities,
    required this.reviews,
  });
}
