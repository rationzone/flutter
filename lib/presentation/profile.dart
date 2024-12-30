import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key,required this.profiledata});
final profiledata;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              // Add functionality for edit action
            },
            icon: Icon(Icons.edit),
          ),
        ],
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text('Name'),
              subtitle: Text(profiledata['name']??"no data"),
              leading: Icon(Icons.person, color: Colors.blue),
            ),
            Divider(),
            ListTile(
              title: Text('Email'),
              subtitle: Text(profiledata['email']??"no data"),
              leading: Icon(Icons.email, color: Colors.green),
            ),
            Divider(),
            ListTile(
              title: Text('Phone'),
              subtitle: Text(profiledata['phone']),
              leading: Icon(Icons.phone, color: Colors.orange),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
