import 'package:dio/dio.dart';

  Dio _dio=Dio();

  // Constructor to initialize Dio


  // Method to submit payment data to the API
  Future<Map<String, dynamic>> submitPayment(Map<String, dynamic> paymentData) async {
    const String url = 'https://your-api.com/supplyco/payment'; // Replace with your actual API URL

    try {
      // Send POST request to submit payment data
      Response response = await _dio.post(url, data: paymentData);

      // Check if the request was successful (status code 200)
      if (response.statusCode == 200) {
        // Return the response data (e.g., payment status or confirmation)
        return response.data;
      } else {
        throw Exception('Failed to submit payment');
      }
    } catch (e) {
      print('Error: $e');
      return {'error': 'Payment submission failed'}; // Return error message if something goes wrong
    }
  }

