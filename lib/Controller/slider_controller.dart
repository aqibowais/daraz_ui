class SliderModel {
  List<SliderItem> sliderList = [
    SliderItem(image: "assets/banner1.webp"),
    SliderItem(image: "assets/banner2.webp"),
    SliderItem(image: "assets/banner3.webp"),
    SliderItem(image: "assets/banner4.webp"),
    SliderItem(image: "assets/banner3.webp"),
  ];
}

class SliderItem {
  final String image;
  SliderItem({required this.image});
}
