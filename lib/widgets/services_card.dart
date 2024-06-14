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
                  image: const AssetImage(
                    "assets/delivery.png",
                  ),
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text("Factory Deals")
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
                  image: const AssetImage(
                    "assets/free.png",
                  ),
                  fit: BoxFit.contain,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text("Free Delivery")
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
            child: const Column(
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
