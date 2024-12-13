import 'Product.dart';
class Store {
  String? name;
  List<Product> inventory = [];
  Store(String name) {
    this.name = name;
  }
  void addproduct(Product product) {
    inventory.add(product);
    print("product added successfully");
  }

  void removeproduct(String name) {
    for (int i = 0; i < inventory.length; i++) {
      if (inventory[i].name == name) {
        inventory.removeAt(i);
        print("product removed successfully");
        break;
      } else {
        print("product not found in the inventory");
        break;
      }
    }
  }

  void printInventory() {
    if (inventory.isEmpty) {
      print("No products found in the inventory.");
      return;
    }
    for (var product in inventory) {
      print(product.getDetails());
    }
  }
}
