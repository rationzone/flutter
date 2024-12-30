import 'package:flutter/material.dart';

class texts extends StatelessWidget {
  const texts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('sdfghjk'),
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.ads_click_outlined)
       

      ),

    ),
    body: Center(child: Text('sdfghjk',style: TextStyle(color: Colors.amberAccent,fontSize: 30),)),);
  }
}