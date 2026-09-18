void main() {
  // Step 1: Student Profile 
  String studentName = "Aatir";
  int rollNumber = 62;
  double walletBalance = 1200.0;
  bool isVIP = true;

  // Step 2: Discount Logic
  double discount = 0;

  if (isVIP) {
    discount = 20.0;
  // ignore: dead_code
  } else if (walletBalance > 1200.0) {
    discount = 10.0;
  } else {
    discount = 0.0;
  }

  print('Student: $studentName');
  print('Roll Number: $rollNumber');
  print('Discount applied: ${discount.toInt()}%');

  // Step 3: Canteen Menu (Map)
  Map<String, double> priceList = {
    "Burger": 250.0,
    "Pizza": 450.0,
    "Juice": 100.0,
  };

  print("\n--- Canteen Menu ---");
  priceList.forEach((item, price) {
    print("$item : Rs. $price");
  });

  // Step 4: Take Order (Simulated for DartPad)
  List<String> order = ["Burger", "Juice"];
  double total = 0;

  for (String itemInput in order) {
    if (priceList.containsKey(itemInput)) {
      total += priceList[itemInput]!;
    }
  }

  // Step 5: Calculate & Print Bill
  double finalBill = total - (total * discount / 100);

  print("\n--- Order Summary ---");
  print("Items Ordered: $order");
  print("Total (before discount): Rs. $total");
  print("Total Bill: Rs. $finalBill");
}