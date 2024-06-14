import 'package:daraz_ui/model/product_model.dart';
import 'package:daraz_ui/widgets/any3banner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DescriptionBox extends StatelessWidget {
  final Product item;
  const DescriptionBox({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.97,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.description,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: [
                            const TextSpan(
                              text: 'Rs. ',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                            TextSpan(
                              text: '${item.originalPrice}',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Rs. ${item.discountedPrice.toString()}',
                        style: const TextStyle(
                          fontSize: 17,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '${item.soldQuantities} Sold',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.favorite_border),
                          Text(
                            item.reviews.toString(),
                            style: const TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Any3Banner(),
                  const Divider(),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.settings_backup_restore_rounded),
                          Text(
                            "Free Returns.",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Icon(
                            Icons.error_outline,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  ),
                  const Divider(),
                  SizedBox(
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Text(
                            "${item.rating}/5",
                            style: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  ),
                  const Divider(),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xffEFF7F9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.delivery_dining,
                            color: Color(0xff037284),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Standard Delivery 17 May - 24 May",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff037284)),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Color(0xff037284),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Divider(),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xffEFF7F9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.currency_exchange_rounded,
                            color: Colors.amber,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Earn upto 719 coins on this item",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 140,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Specifications",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: const Text(
                            "Brand, Required Serial,Electronic item",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Spacer(),
                    Text(
                      "See All",
                      style: TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      size: 15,
                      Icons.arrow_forward_ios,
                      color: Colors.deepOrange,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Delivery",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 170,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.deepOrange),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.deepOrange,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Select your Location",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.grey,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("Standard Delivery, 17 May - 24 Rs. 125")
              ],
            ),
          ),
        )
      ],
    );
  }
}
