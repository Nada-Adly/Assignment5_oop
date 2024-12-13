import 'Product.dart';
import 'store.dart';

void main() {
  //  Create a Store Inventory System Referencing Product Objects

  Store s = new Store('MY store');
  Product p1 = new Product('book', 100, 20);
  Product p2 = new Product('watch', 1000, 10);
  Product p3 = new Product('Table', 500, 5);
  s.addproduct(p1);
  s.addproduct(p2);
  s.addproduct(p3);

  p1.sell(2); // sell 2 products ,will reduce the amount
  p1.restock(5); // restock 5 products ,will increase the amount
  s.removeproduct('book'); // remove elemnt found in the store
  s.removeproduct('pencil'); // remove elemnt not found in the store
  s.printInventory();
}



