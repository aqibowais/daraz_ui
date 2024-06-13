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
      body: Stack(
        children: [
          SingleChildScrollView(
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
                      color: Colors.black.withOpacity(0.5),
                      padding: EdgeInsets.all(8),
                      child: Text(
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
                // Add other widgets here if needed
              ],
            ),
          ),
          // Positioned(
          //   bottom: 0,
          //   left: 0,
          //   right: 0,
          //   child: Container(
          //     height: 200,
          //     decoration: BoxDecoration(
          //         color: Color(0xffFFE473),
          //         borderRadius: BorderRadius.circular(20)),
          //     child: Center(),
          //   ),
          // ),
        ],
      ),
    );
  }
}
