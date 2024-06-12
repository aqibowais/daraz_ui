class SliderModel {
  List<SliderItem> sliderList = [
    SliderItem(image: "assets/banner3.jfif"),
    SliderItem(image: "assets/banner1.webp"),
    SliderItem(image: "assets/banner2.webp"),
    SliderItem(image: "assets/banner4.webp"),
    SliderItem(image: "assets/banner5.webp"),
  ];
}

class SliderItem {
  final String image;
  SliderItem({required this.image});
}
