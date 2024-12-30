import 'package:dio/dio.dart';

  Dio _dio=Dio();

  // Constructor to initialize Dio

  // Method to make the payment
  Future<Map<String, dynamic>> makePayment({
    required double amount,
    required String paymentMethod,
    required String paymentDetails,
  }) async {
    const String url = 'https://your-api.com/payment'; // Replace with your API URL

    try {
      // Prepare the payment data
      Map<String, dynamic> paymentData = {
        'amount': amount,
        'paymentMethod': paymentMethod,
        'paymentDetails': paymentDetails,
      };

      // Send POST request to process the payment
      Response response = await _dio.post(url, data: paymentData);

      // Check if the request was successful (status code 200)
      if (response.statusCode == 200) {
        // Return the response (payment confirmation)
        return response.data;
      } else {
        throw Exception('Payment failed');
      }
    } catch (e) {
      print('Error: $e');
      return {'error': 'Payment failed'}; // Return error message if something goes wrong
    }
  }

