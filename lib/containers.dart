import 'package:flutter/material.dart';

class containers extends StatelessWidget {
  const containers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 360,
          color: Colors.blueAccent,
          child: Column(
            children: [
              Text('sdfghjkl'),
              SizedBox(height: 30,),
              Text('sdfghjkl;'),
              Text('sdfgjk'),
              ElevatedButton(onPressed: (){}, child: Text('Login')),
              TextButton(onPressed: (){
            //     Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => Registraion()),
            // );

              }, child: Text('new user?signup'),),
              TextFormField(
                decoration: InputDecoration(
                labelText: 'Enter your name',
                border: OutlineInputBorder(),
              ),
              )
            ],
          )
        ),
      ),
    );
  }
}