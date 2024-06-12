import 'package:daraz_ui/Controller/slider_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Carousel extends StatelessWidget {
  final SliderModel slider = SliderModel();

  Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      isLoop: true,
      autoPlayInterval: 5000,
      indicatorBottomPadding: 20,
      children: slider.sliderList.map((element) {
        return SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            element.image,
            fit: BoxFit.cover,
          ),
        );
      }).toList(),
    );
  }
}
