import 'package:dio/dio.dart';
import 'package:ration_zone/services/loginapi.dart';

  Dio _dio=Dio();

  // Constructor to initialize Dio

  // Method to fetch stock data from API
  Future<List<Map<String, dynamic>>> fetchStockData() async {
    

    try {
      // Send GET request to fetch stock data
      Response response = await _dio.get('$baseUrl/gfdjh');

      // Check if the request was successful (HTTP status code 200)
      if (response.statusCode == 200) {
        // Assuming the response contains a list of stock data
        return List<Map<String, dynamic>>.from(response.data);
      } else {
        // If response code is not 200, throw an error
        throw Exception('Failed to load stock data');
      }
    } catch (e) {
      print('Error occurred: $e');
      return []; // Return an empty list in case of an error
    }
  }
