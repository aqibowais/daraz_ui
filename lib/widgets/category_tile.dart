import 'package:daraz_ui/model/categories_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryTile extends StatelessWidget {
  final Categories item;
  const CategoryTile({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 120,
          height: 90,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                item.imageUrl,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          item.name,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
