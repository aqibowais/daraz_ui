import 'package:daraz_ui/controller/product_controller.dart';
import 'package:daraz_ui/widgets/app_bar.dart';
import 'package:daraz_ui/widgets/caraousel.dart';
import 'package:daraz_ui/widgets/product_tile.dart';
import 'package:daraz_ui/widgets/sticky_header.dart';
import 'package:flutter/material.dart';

import 'package:sticky_headers/sticky_headers/widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isActiveColor = true;
  final ScrollController _scrollController = ScrollController();
  final ProductController productController = ProductController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_updateScroll);
  }

  void _updateScroll() {
    if (_scrollController.offset ==
        _scrollController.position.minScrollExtent) {
      if (!isActiveColor) {
        setState(() {
          isActiveColor = true;
        });
      }
    } else if (isActiveColor) {
      setState(() {
        isActiveColor = false;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(isActiveColor),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Carousel(),
            Container(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/event.jpg"),
              ),
            ),
            StickyHeader(
              header: const MyStickyHeader(),
              content: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.all(10),
                itemCount: productController.productList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.9,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  final item = productController.productList[index];
                  return ProductTile(item: item);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
