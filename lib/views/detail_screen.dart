import 'package:daraz_ui/model/product_model.dart';
import 'package:daraz_ui/views/cart_screen.dart';
import 'package:daraz_ui/widgets/app_bar.dart';
import 'package:daraz_ui/widgets/descrip_box.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Product item;
  const DetailScreen({super.key, required this.item});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(238, 245, 241, 241),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.item.imageUrl),
                  fit: BoxFit.fill,
                  filterQuality: FilterQuality.high,
                ),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15)),
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                    '1/7',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            DescriptionBox(item: widget.item),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                color: Colors.yellow[300],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 70,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 2,
                              color: Colors.deepOrange,
                            ),
                          ),
                          child:
                              const Image(image: AssetImage("assets/box.png")),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 70,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 2,
                              color: Colors.deepOrange,
                            ),
                          ),
                          child:
                              const Image(image: AssetImage("assets/box.png")),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 70,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 2,
                              color: Colors.deepOrange,
                            ),
                          ),
                          child:
                              const Image(image: AssetImage("assets/box.png")),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: const Center(
                          child: Text(
                            "Add This Item",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
