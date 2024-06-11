import 'package:daraz_ui/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  final Product item;
  const ProductScreen({super.key, required this.item});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
