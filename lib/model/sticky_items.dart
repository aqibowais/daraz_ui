class StickyItem {
  final String title;
  final String image;
  final String pathname;
  final bool isSelected;
  StickyItem(
      {required this.isSelected,
      required this.image,
      required this.title,
      required this.pathname});
}

List<StickyItem> stickyList = [
  StickyItem(
      image: "assets/thumb.png",
      title: "All",
      pathname: "/all",
      isSelected: true),
  StickyItem(
      image: "assets/delivery.png",
      title: "Wholesale",
      pathname: "/wholesale",
      isSelected: false),
  StickyItem(
      image: "assets/offer.jpeg",
      title: "Any 3 from tk 633",
      pathname: "/from-to",
      isSelected: false),
  StickyItem(
      image: "assets/cart.png",
      title: "Everyday Low Price",
      pathname: "/everyday",
      isSelected: false),
  StickyItem(
      image: "assets/free.png",
      title: "Free Delivery",
      pathname: "/free-delivery",
      isSelected: false),
];
