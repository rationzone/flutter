import 'package:flutter/material.dart';


class Notification extends StatelessWidget {
  final List<Map<String, String>> notification = [
    {"message": "This is the first notification.", "time": "10:00 PM"},
    {"message": "Here's another notification.", "time": "07:00 AM"},
    {"message": "This is the last notification.", "time": "08:00 AM"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView.builder(
        itemCount: notification.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        notification[index]['message']!,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      notification[index]['time']!,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
