import 'package:flutter/material.dart';

class ServicesCard extends StatelessWidget {
  const ServicesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: 80,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  width: MediaQuery.of(context).size.width * 0.2,
                  image: AssetImage(
                    "assets/delivery.png",
                  ),
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Factory Deals")
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: 80,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: 40,
                  image: AssetImage(
                    "assets/free.png",
                  ),
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Free Delivery")
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: 80,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Image(
                    // width: MediaQuery.of(context).size.width * 0.2,
                    height: 30,
                    image: AssetImage(
                      "assets/thumb.png",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Daraz Verified")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
