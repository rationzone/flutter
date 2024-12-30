import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ration_zone/presentation/login.dart';
import 'package:ration_zone/presentation/signup.dart';
import 'package:ration_zone/services/loginapi.dart';


  Dio _dio=Dio();
  

  // Constructor to initialize Dio instance


  // Sign up function
  Future<Map<String, dynamic>> signUpapi(String username, String name,String email, String password,String phone,context) async {
     // Replace with your sign-up API URL

    try {
      // Data to send in the POST request body
      final data = {
        'username': username,
        'email': email,
        'name':name,
        'password': password,
        'phone' : phone,
      };

      // Send POST request to sign up endpoint
      Response response = await _dio.post('$baseUrl/SignupApi', data: data);

      // Check if the sign-up was successful
      if (response.statusCode == 201) {
        // Return the response data (e.g., user info, token, etc.)
         Navigator.push(context, MaterialPageRoute(builder: (ctxt)=>Login()));
        return response.data;
      } else {
        // Handle unsuccessful sign-up (e.g., user already exists)
        return {'error': 'Failed to sign up'};
      }
    } catch (e) {
      // Handle any errors or exceptions
      print('Error occurred: $e');
      return {'error': 'An error occurred during the sign-up process'};
    }
  }

