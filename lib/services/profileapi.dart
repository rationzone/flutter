import 'package:dio/dio.dart';
import 'package:ration_zone/services/loginapi.dart';

   Dio _dio= Dio();

  // Constructor to initialize Dio with custom options if needed


  // Method to fetch user profile
  Future<Map<String, dynamic>> getUserProfile() async {
    try {
      final response = await _dio.get('$baseUrl/ProfileApi/$loginId');

      // Check if the response is successful
      if (response.statusCode == 200) {
        // Parse the JSON response and return as Map<String, dynamic>
        print(response.data);
        return response.data[0] as Map<String, dynamic>;
      } else {
        // Handle non-200 responses
        throw Exception('Failed to load user profile');
      }
    } catch (e) {
      // Handle errors such as network issues or invalid data
      throw Exception('Error fetching user profile: $e');
    }
  }



