import 'package:dio/dio.dart';

  Dio _dio=Dio();

  // Constructor to initialize Dio


  // Method to fetch data from API
  Future<List<dynamic>> fetchHomeData() async {
    const String url = 'https://your-api.com/home'; // Replace with your actual API URL

    try {
      // Send a GET request to the home API endpoint
      Response response = await _dio.get(url);

      // Check if the request was successful
      if (response.statusCode == 200) {
        // Return the data (assuming it’s a list)
        return response.data; 
      } else {
        // Handle any server errors
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print('Error: $e');
      return []; // Return an empty list in case of error
    }
  }

