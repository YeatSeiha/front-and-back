import 'dart:io';

void main() {
  // List to store products
  List<Product> products = [];

  // Get product details from user
  while (true) {
    stdout.write('Enter Product Name: ');
    String? name = stdin.readLineSync();
    if (name == null || name.isEmpty) break;

    stdout.write('Enter Product Qty: ');
    int qty = int.parse(stdin.readLineSync() ?? '0');

    stdout.write('Enter Product Price: ');
    double price = double.parse(stdin.readLineSync() ?? '0');

    stdout.write('Enter Product Discount(%): ');
    double discount = double.parse(stdin.readLineSync() ?? '0');

    // Add product to list
    products.add(Product(name, qty, price, discount));

    // Ask if the user wants to continue
    stdout.write('Do you want to add another product? (Y/N): ');
    String? continueInput = stdin.readLineSync();
    if (continueInput == null || continueInput.toUpperCase() != 'Y') {
      break;
    }
  }

  // Display receipt
  double total = 0;
  print('ID    Name       QTY      Price    Discount(%)    Sub Total');
  for (int i = 0; i < products.length; i++) {
    double subTotal = products[i].price * products[i].qty * (1 - products[i].discount / 100);
    total += subTotal;
    print('${i + 1}     ${products[i].name.padRight(10)}  ${products[i].qty.toString().padRight(5)}   ${products[i].price.toString().padRight(7)}   ${products[i].discount.toString().padRight(12)}   ${subTotal.toStringAsFixed(1)} \$');
  }

  print('Total Grand (\$)   = ${total.toStringAsFixed(1)} \$');

  // Conversion rate: 1 USD = 4100 KHR
  double totalRiel = total * 4100;
  print('Total Grand (Riel) = ${totalRiel.toStringAsFixed(0)} Riel');
}

class Product {
  String name;
  int qty;
  double price;
  double discount;

  Product(this.name, this.qty, this.price, this.discount);
}
