class CatalogModel {

  static List<Item> items=[];

  // Get element by id
   Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  static internal() {}
} 

class Item {
  final int id;
  final String name;
  final String desc;
  final String colour;
  final int price;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.colour,
    required this.price,
    required this.image,
  });

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      colour: map["colour"],
      price: map["price"],
      image: map["image"],
    );
  }
  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "colour": colour,
        "price": price,
        "image": image,
      };
}
