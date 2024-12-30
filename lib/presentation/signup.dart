import 'package:flutter/material.dart';
import 'package:ration_zone/services/signupapi.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 231, 235),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Signup',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  SizedBox(height: 40),
                  TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: 'user name',
                      labelStyle:
                          TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                      hintText: 'enter name',
                      prefixIcon: Icon(Icons.person,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 225, 231, 235),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Enter your password',
                      labelStyle:
                          TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                      hintText: '',
                      prefixIcon: Icon(Icons.lock,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 225, 231, 235),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    ),
                  ),
                  SizedBox(height: 40),
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      labelText: 'name',
                      labelStyle:
                          TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                      hintText: 'enter name',
                      prefixIcon: Icon(Icons.person,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 225, 231, 235),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'email',
                      labelStyle:
                          TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                      hintText: 'enter email',
                      prefixIcon: Icon(Icons.person,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 225, 231, 235),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _phoneController,
                    decoration: InputDecoration(
                      labelText: 'phone number',
                      labelStyle:
                          TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                      hintText: 'enter number',
                      prefixIcon: Icon(Icons.person,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 225, 231, 235),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      signUpapi(
                          _usernameController.text,
                          _nameController.text,
                          _emailController.text,
                          _passwordController.text,
                          _phoneController.text,
                          context);
                      // Handle login logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                    child: Text(
                      'Signup',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      // Navigate to sign-up page
                    },
                    child: Text(
                      'already have a account? Login ',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
