class Product {
  String? name;
  double? price;
  int quantity = 0;
  Product(String name, double price, int quantity) {
    this.name = name;
    this.price = price;
    this.quantity = quantity;
  }
  void restock(int amount) {
    if (amount > 0) {
      quantity += amount;
    } else {
      print("Inavalid Amount ,Try again.");
    }
  }

  void sell(int amount) {
    if (amount > 0 && amount <= quantity) {
      quantity -= amount;
    } else {
      print("Inavalid Amount ,Try again.");
    }
  }
  String getDetails() {
    return 'Product Name: $name, Price: $price, Quantity: $quantity';
  }
}


