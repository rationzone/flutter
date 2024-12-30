import 'package:dio/dio.dart';


  Dio _dio=Dio() ;

  // Constructor to initialize Dio

  // Method to fetch shop home data (e.g., featured products, categories, promotions)
  Future<Map<String, dynamic>> fetchShopHomeData() async {
    const String url = 'https://your-api.com/shop-home'; // Replace with your actual API URL

    try {
      // Send GET request to fetch data
      Response response = await _dio.get(url);

      // Check if the request was successful (status code 200)
      if (response.statusCode == 200) {
        // Return the response data (shop home details)
        return response.data;
      } else {
        throw Exception('Failed to load shop home data');
      }
    } catch (e) {
      print('Error: $e');
      return {'error': 'Failed to load data'}; // Return error message if something goes wrong
    }
  }

