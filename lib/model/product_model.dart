class Product {
  final String name;
  final String imageUrl;
  final int originalPrice;
  final int discountedPrice;
  final int soldQuantities;
  final int reviews;
  final double rating;
  final String description;
  Product({
    required this.name,
    required this.imageUrl,
    required this.originalPrice,
    required this.discountedPrice,
    required this.rating,
    required this.soldQuantities,
    required this.reviews,
    required this.description,
  });
}
