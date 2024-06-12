import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final int reviews;
  final double rating;
  const Rating({super.key, required this.rating, required this.reviews});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: Colors.orange,
          size: 12,
        ),
        Text(
          "${rating.toString()}/5 (${reviews}k)",
          style: TextStyle(fontSize: 12, color: Colors.grey[600]),
        )
      ],
    );
  }
}
