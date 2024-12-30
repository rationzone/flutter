import 'package:flutter/material.dart';



class ShopListScreen extends StatelessWidget {
  final List<Map<String, String>> shopData = [
    {"name": "Shop 1", "time": "08:00 AM to 07:00 PM"},
    {"name": "Shop 2", "time": "08:00 AM to 07:00 PM"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop Timings'),
      ),
      body: ListView.builder(
        itemCount: shopData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListTile(
                title: Text(
                  shopData[index]['name']!,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(shopData[index]['time']!),
              ),
            ),
          );
        },
      ),
    );
  }
}
