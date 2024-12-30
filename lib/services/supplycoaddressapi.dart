import 'package:dio/dio.dart';

  Dio _dio=Dio();

  // Constructor to initialize Dio

  // Method to fetch SupplyCo address data from the API
  Future<Map<String, dynamic>> fetchSupplyCoAddress() async {
    const String url = 'https://your-api.com/supplyco/address'; // Replace with your actual API URL

    try {
      // Send GET request to fetch SupplyCo address
      Response response = await _dio.get(url);

      // Check if the request was successful (status code 200)
      if (response.statusCode == 200) {
        // Return the address data (assuming it's a JSON object)
        return response.data;
      } else {
        throw Exception('Failed to load address data');
      }
    } catch (e) {
      print('Error: $e');
      return {'error': 'Failed to load address data'}; // Return an error message if something goes wrong
    }
  }

