import 'package:dio/dio.dart';

  Dio _dio=Dio();

  // Constructor to initialize Dio

  // Method to fetch SupplyCo orders data
  Future<List<Map<String, dynamic>>> fetchOrders() async {
    const String url = 'https://your-api.com/supplyco/orders'; // Replace with your API URL

    try {
      // Send GET request to fetch orders
      Response response = await _dio.get(url);

      // Check if the request was successful (status code 200)
      if (response.statusCode == 200) {
        // Assuming the response contains a list of orders
        return List<Map<String, dynamic>>.from(response.data);
      } else {
        throw Exception('Failed to load orders');
      }
    } catch (e) {
      print('Error: $e');
      return []; // Return an empty list in case of an error
    }
  }

