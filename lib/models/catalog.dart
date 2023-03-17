class CatalogModel{
 static List<Item> items = [
    Item(
      id: 1,
      name: "iPhone 12",
      desc:
          "Apple iPhone 12 smartphone. Announced Oct 2020. Features 6.1″ Super Retina XDR OLED display, Apple A14 Bionic chipset, 2815 mAh battery, 256 GB storage, 6 GB RAM, Ceramic Shield. ",
      price: 999,
      color: "#33505a",
      image: "https://m.media-amazon.com/images/I/71MHTD3uL4L._AC_UY218_.jpg",
    ),
    Item(
      id: 2,
      name: "Samsung Galaxy S21",
      desc:
          "Samsung Galaxy S21 smartphone. Announced Jan 2021. Features 6.2″ Super AMOLED display, Exynos 2100 chipset, 4000 mAh battery, 128 GB storage, 8 GB RAM, Corning Gorilla Glass 3. ",
      price: 799,
      color: "#33505a",
      image: "https://m.media-amazon.com/images/I/71MHTD3uL4L._AC_UY218_.jpg",
    ),
  ];

}
class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}

