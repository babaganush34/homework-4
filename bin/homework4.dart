int totalCalls = 0;

void greet() {
  totalCalls++;
  print('Hello! Welcome to Dart programming.');
}

void introduce(String name, int age) {
  totalCalls++;
  print('My name is $name and I am $age years old.');
}

int addNumbers(int a, int b) {
  totalCalls++;
  return a + b;
}

double calculateDiscount({
  required double price,
  double discount = 0,
  double tax = 0,
}) {
  totalCalls++;
  double discountAmount = price * discount / 100;
  double taxAmount = price * tax / 100;

  double finalPrice = price - discountAmount + taxAmount;

  return finalPrice;
}

void main() {
  greet();
  greet();
  greet();

  introduce('Vasiliy', 21);
  introduce('Anabel', 19);
  introduce('Maksat', 35);

  int num1 = 5;
  int num2 = 8;
  int sumResult = addNumbers(num1, num2);

  print('Sum of $num1 and $num2 is $sumResult.');

  double price1 = 100.0;
  double finalPrice1 = calculateDiscount(price: price1);
  print('Final price: \$${finalPrice1.toStringAsFixed(2)}');

  double price2 = 100.0;
  double discount2 = 2.5;
  double finalPrice2 = calculateDiscount(price: price2, discount: discount2);
  print('Final price: \$${finalPrice2.toStringAsFixed(2)}');

  double price3 = 100.0;
  double discount3 = 5.0;
  double tax3 = 10.0;
  double finalPrice3 = calculateDiscount(
    price: price3,
    discount: discount3,
    tax: tax3,
  );
  print('Final price: \$${finalPrice3.toStringAsFixed(2)}');

  print('Total function calls: $totalCalls');
}
