import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserInfoScreen extends StatefulWidget {
  @override
  _UserInfoScreenState createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController contactNumberController = TextEditingController();
  final TextEditingController altContactNumberController =
      TextEditingController();
  final TextEditingController messageController = TextEditingController();

  Future<void> submitUserInfo() async {
    try {
      final String apiUrl = 'http://ipaddress:3000/api/users';

      final response = await http.post(
        Uri.parse(apiUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'name': nameController.text,
          'location': locationController.text,
          'contactNumber': contactNumberController.text,
          'altContactNumber': altContactNumberController.text,
          'message': messageController.text,
        }),
      );

      if (response.statusCode == 201) {
        // Success
        print('User information submitted successfully!');
      } else {
        // Failure
        throw Exception('Failed to submit user information');
      }
    } catch (e) {
      // Handle connection error
      print('Connection Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Request From'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Text("Service"),
            SizedBox(
              height: 10,
            ),
            Text(
              "Service ID: id",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            TextField(
              controller: locationController,
              decoration: InputDecoration(
                labelText: 'Location(optional)',
              ),
            ),
            TextField(
              controller: contactNumberController,
              decoration: InputDecoration(
                labelText: 'Contact Number',
              ),
            ),
            TextField(
              controller: altContactNumberController,
              decoration: InputDecoration(
                labelText: 'Alternative Contact Number(optional)',
              ),
            ),
            TextField(
              controller: messageController,
              decoration: InputDecoration(
                labelText: 'Query/Request Message',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                submitUserInfo();
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
