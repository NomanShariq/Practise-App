import 'package:firstapplications/core/store.dart';
import 'package:velocity_x/velocity_x.dart';

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
}

class AddMutations extends VxMutation<MyStore> {
  final Item items;

  AddMutations(this.items);
  @override
  perform() {
    store?.cart._itemsIds.add(items.id);
  }
}

class RemoveMutations extends VxMutation<MyStore> {
  final Item items;

  RemoveMutations(this.items);
  @override
  perform() {
    store?.cart._itemsIds.remove(items.id);
  }
}
