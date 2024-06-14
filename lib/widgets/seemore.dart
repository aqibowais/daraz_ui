import 'package:flutter/material.dart';

class SeeMore extends StatefulWidget {
  const SeeMore({
    super.key,
  });

  @override
  State<SeeMore> createState() => _SeeMoreState();
}

class _SeeMoreState extends State<SeeMore> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
         '/ProductScreen'
        );
      },
      child: Container(
        width: 100,
        height: 25,
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.deepOrange),
            borderRadius: BorderRadius.circular(5)),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "See More",
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                  fontSize: 13),
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              size: 15,
              color: Colors.deepOrange,
            )
          ],
        ),
      ),
    );
  }
}
