class Catalogitems {
  static final products = [
  Item(
      id: 1,
      name: "Samsung A31",
      desc:
          "Samsung Galaxy A31 ; Size, 6.4 inches, 98.9 cm2",
      colour: "blue",
      price: 2000,
      image: "https://static-01.daraz.pk/p/0f2536a14aa0540cc2e01f02e752bd6b.jpg"),
      
];

  static items(int i) {}
}



class Item {
  final int id;
  final String name;
  final String desc;
  final String colour;
  final int price;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.colour, required this.price, required this.image});
}


