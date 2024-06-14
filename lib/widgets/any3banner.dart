import 'package:daraz_ui/widgets/seemore.dart';
import 'package:flutter/material.dart';

class Any3Banner extends StatefulWidget {
  const Any3Banner({super.key});

  @override
  State<Any3Banner> createState() => _Any3BannerState();
}

class _Any3BannerState extends State<Any3Banner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/any3.png"), fit: BoxFit.fill)),
      child: const Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image(
                  image: AssetImage("assets/cartany.png"),
                  width: 30,
                  height: 30,
                  fit: BoxFit.cover,
                ),
                Text(
                  "Any 3 from Rs. 735",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Spacer(),
                SeeMore()
              ],
            ),
            Text("Free Delivery",
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                    fontSize: 14))
          ],
        ),
      ),
    );
  }
}
