import 'package:daraz_ui/model/product_model.dart';
import 'package:daraz_ui/views/product_screen.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final Product item;
  const ProductTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductScreen(item: item),
          ),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Hero(
              tag: "product_tile_image_${item.name}",
              child: Image(
                image: AssetImage(item.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                  maxLines: 2,
                ),
                Row(
                  children: List.generate(
                    5,
                    (index) => Icon(
                      index < item.rating ? Icons.star : Icons.star_border,
                      size: 12,
                      color: Colors.amber,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Sold: ${item.soldQuantities}",
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      "\$${item.discountedPrice}",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "\$${item.originalPrice}",
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
                Text(
                  "${item.reviews} reviews",
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
