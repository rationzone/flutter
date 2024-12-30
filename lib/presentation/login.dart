import 'package:flutter/material.dart';
import 'package:ration_zone/presentation/signup.dart';
import 'package:ration_zone/services/loginapi.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _nameController = TextEditingController(text: "");
  final TextEditingController _passwordController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 231, 235),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 10, 8, 5),
                    ),
                  ),
                  SizedBox(height: 40),
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      labelText: 'Enter your name',
                      labelStyle:
                          TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                      hintText: 'enter name',
                      prefixIcon: Icon(Icons.person,
                          color: const Color.fromARGB(255, 8, 8, 8)),
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
                      hintText: '********',
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
                  ElevatedButton(
                    onPressed: () {
                      // Handle login logic here
                      loginapi(_nameController.text, _passwordController.text,context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 2, 2, 2),
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (ctxt)=>Signup()));
                      // Navigate to sign-up page
                    },
                    child: Text(
                      'Don\'t have an account? Sign up',
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
