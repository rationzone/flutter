import 'package:dio/dio.dart';

  Dio _dio=Dio();

  // Constructor to initialize Dio

  // Method to fetch shop opening and closing hours
  Future<Map<String, dynamic>> fetchShopHours() async {
    const String url = 'https://your-api.com/shop/hours'; // Replace with your API URL

    try {
      // Send GET request to fetch shop hours
      Response response = await _dio.get(url);

      // Check if the request was successful (status code 200)
      if (response.statusCode == 200) {
        // Return the shop hours data (assuming it's a JSON object)
        return response.data;
      } else {
        throw Exception('Failed to load shop hours');
      }
    } catch (e) {
      print('Error: $e');
      return {'error': 'Failed to load shop hours'}; // Return error message if something goes wrong
    }
  }
