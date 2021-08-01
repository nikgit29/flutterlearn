import 'package:flutter_catalog/models/catalog.dart';

class CartModel {
  // single class

  static final cartModel = CartModel._interval();
  CartModel._interval();
  factory CartModel() => cartModel;

  // catalog field
  late CatalogModel _catalog;

  // Collection of IDs - store Ids of each item
  final List<int> _itemIds = [];

  // Get Catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  // Get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  // Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //Add Item to Cart
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //Remove Item from Cart
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
