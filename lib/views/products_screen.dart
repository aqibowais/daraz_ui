import 'package:daraz_ui/controller/product_controller.dart';
import 'package:daraz_ui/views/cart_screen.dart';
import 'package:daraz_ui/widgets/app_bar.dart';
import 'package:daraz_ui/widgets/filters.dart';
import 'package:daraz_ui/widgets/product_tile.dart';
import 'package:daraz_ui/widgets/services_card.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final ProductController productController = ProductController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: homeAppBar(
        isActiveColor: true,
        leadingIcon: Icons.arrow_back_ios,
        onLeadingPressed: () {
          Navigator.pop(context);
        },
        actionIcon1: Icons.filter_alt,
        actionIcon2: Icons.shopping_cart,
        onAction2Pressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CartScreen(),
            ),
          );
        },
      ),
      body: Column(
        children: [
          const ServicesCard(),
          const Filters(),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.all(10),
              itemCount: productController.productList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.68,
                mainAxisSpacing: 6,
                crossAxisSpacing: 6,
              ),
              itemBuilder: (context, index) {
                final item = productController.productList[index];
                return ProductTile(item: item);
              },
            ),
          ),
        ],
      ),
    );
  }
}
