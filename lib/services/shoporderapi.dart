import 'package:dio/dio.dart';

  Dio _dio=Dio();

  // Constructor to initialize Dio

  // Method to place the order
  Future<Map<String, dynamic>> placeOrder({
    required String userId,
    required List<Map<String, dynamic>> items,
    required String paymentMethod,
    required double totalAmount,
  }) async {
    const String url = 'https://your-api.com/order'; // Replace with your actual API URL

    try {
      // Prepare the order data
      Map<String, dynamic> orderData = {
        'userId': userId,
        'items': items,  // List of items (name, quantity, price)
        'paymentMethod': paymentMethod,
        'totalAmount': totalAmount,
      };

      // Send POST request to place the order
      Response response = await _dio.post(url, data: orderData);

      // Check if the request was successful (status code 200)
      if (response.statusCode == 200) {
        // Return the response (order confirmation)
        return response.data;
      } else {
        throw Exception('Order failed');
      }
    } catch (e) {
      print('Error: $e');
      return {'error': 'Order failed'}; // Return error message if something goes wrong
    }
  }

