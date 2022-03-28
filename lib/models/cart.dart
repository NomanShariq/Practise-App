import 'catalog.dart';

class CartModel {
  // catalog field
  late CatalogModel _catalog;

//Collection of Ids - stored ids

  final List<int> _itemsIds = [];

  //get

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //get items in the cart
  List<Item> get items => _itemsIds.map((id) => _catalog.getById(id)).toList();

  // Total prize
  num get totalPrize =>
      items.fold(0, (total, current) => total + current.price);

  //Add item
  void add(Item item) {
    _itemsIds.add(item.id);
  }

  //remove item
  void remove(Item item) {
    _itemsIds.remove(item.id);
  }
}
