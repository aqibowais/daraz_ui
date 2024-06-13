import 'package:daraz_ui/Controller/category_controller.dart';
import 'package:daraz_ui/controller/product_controller.dart';
import 'package:daraz_ui/views/cart_screen.dart';
import 'package:daraz_ui/widgets/app_bar.dart';
import 'package:daraz_ui/widgets/caraousel.dart';
import 'package:daraz_ui/widgets/category_grid.dart';
import 'package:daraz_ui/widgets/product_tile.dart';
import 'package:daraz_ui/widgets/seemore.dart';
import 'package:daraz_ui/widgets/textbox.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isActiveColor = true;
  final ScrollController _scrollController = ScrollController();
  final ProductController productController = ProductController();
  final CategoriesController categoriesController = CategoriesController();

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
      appBar: homeAppBar(
          isActiveColor: isActiveColor,
          leadingIcon: Icons.qr_code_scanner,
          actionIcon1: Icons.currency_exchange,
          actionIcon2: Icons.shopping_cart,
          onAction2Pressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(),
                ),
              )),
      backgroundColor: const Color.fromARGB(238, 245, 241, 241),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Carousel(),
            const SizedBox(height: 10),
            LocationTextBox(isActiveColor),
            const SizedBox(height: 15),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 320,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Container(
                    height: 60,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/any3.png"),
                            fit: BoxFit.fill)),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Image(
                                image: AssetImage("assets/cartany.png"),
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                              const Text(
                                "Any 3 from Rs. 735",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              const Spacer(),
                              SeeMore(onTap: () {})
                            ],
                          ),
                          const Text("Free Delivery",
                              style: TextStyle(
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14))
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: productController.productList.length,
                      itemBuilder: (context, index) {
                        final item = productController.productList[index];
                        return ProductTile(item: item);
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //categories
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 390,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Categories",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SeeMore(onTap: () {})
                            ],
                          ),
                          const Text("Inspired by your interests",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14))
                        ],
                      ),
                    ),
                  ),
                  CategoryGrid()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
