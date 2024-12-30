import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ration_zone/presentation/home.dart';


  Dio _dio=Dio() ;
   const String baseUrl = 'http://192.168.37.53:5000'; // Replace with your login API URL

  // Constructor
  
String? loginId;

  // Login function
  Future<Map<String, dynamic>> loginapi(String username, String password,context) async {
    try {
      // Endpoint URL
     

      // Body for POST request
      final data = {
        'username': username,
        'password': password,
      };

      // Send POST request to login API
      Response response = await _dio.post('$baseUrl/LoginApi', data: data);

      // Handle the response
      if (response.statusCode == 200) {
        // Return the response data (can be token or user data)
        print('login success');
        print(response.data);
        if (response.data['message']=='success') {
          loginId=response.data['login_id'].toString();

          Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=>Home()));
        }
        snackbarwidget(context, 'login faild');
        return response.data;
      } else {
        // Handle any error from the server
        snackbarwidget(context, 'login faild');
        return {'error': 'Failed to log in'};
        
      }
    } catch (e) {
      // Handle exceptions
      snackbarwidget(context, 'login faild');
      print('Error occurred: $e');
      return {'error': 'An error occurred, please try again.'};
    }
  }




void snackbarwidget(context,text){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
}