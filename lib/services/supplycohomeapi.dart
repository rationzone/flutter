import 'package:dio/dio.dart';

  Dio _dio=Dio();

  // Constructor to initialize Dio

  // Method to fetch home data
  Future<Map<String, dynamic>> fetchHomeData() async {
    const String url = 'https://your-api.com/supplyco/home'; // Replace with your API URL

    try {
      // Send GET request to fetch home data
      Response response = await _dio.get(url);

      // Check if the request was successful (status code 200)
      if (response.statusCode == 200) {
        // Return the home data (assuming it's a JSON object)
        return response.data;
      } else {
        throw Exception('Failed to load home data');
      }
    } catch (e) {
      print('Error: $e');
      return {'error': 'Failed to load home data'}; // Return error message if something goes wrong
    }
  }

