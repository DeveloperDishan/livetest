void main() {
  // Create a list of fruits represented as maps
  List<Map<String, dynamic>> fruits = [
    {'name': 'Apple', 'color': 'Red', 'price': 2.5},
    {'name': 'Banana', 'color': 'Yellow', 'price': 1.0},
    {'name': 'Orange', 'color': 'Orange', 'price': 2.5}
  ];

  displayFruitDetails(fruits);

  // Apply a discount of 10% to all fruits
  applyPriceDiscount(fruits, 10.0);

  // Display updated details after applying discount
  print('After applying discount:');
  displayFruitDetails(fruits);
}

void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  print('Fruit Details:');
  for (var fruit in fruits) {
    print(
        'Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}');
  }
}

void applyPriceDiscount(
    List<Map<String, dynamic>> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    double price = fruit['price'];
    double discountedPrice = price - (price * discountPercentage / 100);
    fruit['price'] = discountedPrice;
  }
}
