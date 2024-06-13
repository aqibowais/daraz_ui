import 'package:daraz_ui/Controller/category_controller.dart';
import 'package:daraz_ui/widgets/category_tile.dart';
import 'package:flutter/material.dart';

class CategoryGrid extends StatelessWidget {
  CategoryGrid({super.key});

  final CategoriesController _categoryCon = CategoriesController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: _categoryCon.CategoriesList.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 1,
            childAspectRatio: 0.8,
            mainAxisSpacing: 10,
            crossAxisCount: 3),
        itemBuilder: (context, index) {
          final item = _categoryCon.CategoriesList[index];
          return CategoryTile(item: item);
        },
      ),
    );
  }
}
