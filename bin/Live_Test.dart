void main() {
  print('Original Fruit Details before Discount:');
  List<Map<String, dynamic>> fruits = [
    {'name': 'Apple', 'color': 'Red', 'price': 2.5},
    {'name': 'Banana', 'color': 'Yellow', 'price': 1.0},
    {'name': 'Grapes', 'color': ' Purple', 'price': 3.0}
  ];
  displayFruitDetails(fruits);
  applyPriceDiscount(fruits, 10);
  displayFruitDetails(fruits);
}
void displayFruitDetails(List<Map<String, dynamic>> fruits) {

  for (var fruit in fruits) {
    print('Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}');
  }
}
void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    double currentPrice = fruit['price'];
    double discountAmount = currentPrice * (discountPercentage / 100);
    fruit['price'] = (currentPrice - discountAmount).toStringAsFixed(2);
  }
  print('Fruit Details After Applying 10% Discount:');
}