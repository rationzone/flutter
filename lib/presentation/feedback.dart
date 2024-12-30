import 'package:flutter/material.dart';

class Feedback extends StatelessWidget {
  const Feedback({super.key});

  @override
  Widget build(BuildContext context) {
    // Controller for the TextField
    final feedbackController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Feedback input field
            TextField(
              controller: feedbackController,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Write your feedback here...',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            // Send button
            Align(
              alignment: Alignment.centerLeft,
              child: ElevatedButton(
                onPressed: () {
                  // Handle feedback submission
                  print("Feedback: ${feedbackController.text}");
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Feedback Sent!")),
                  );
                  feedbackController.clear(); // Clear the input field
                },
                child: Text('Send'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  textStyle: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Feedback(),
  ));
}
