import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // Get user data and extract user ID
    String userData = await fetchUserData();
    Map<String, dynamic> user = json.decode(userData);
    String userId = user['id'];
    
    // Get user orders
    String ordersData = await fetchUserOrders(userId);
    List<dynamic> orders = json.decode(ordersData);
    
    // Calculate total price
    double total = 0.0;
    
    // Process each product sequentially
    for (String product in orders) {
      String priceData = await fetchProductPrice(product);
      double price = json.decode(priceData).toDouble();
      total += price;
    }
    
    return total;
  } catch (error) {
    return -1;
  }
} 