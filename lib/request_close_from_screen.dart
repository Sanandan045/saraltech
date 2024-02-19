import 'package:flutter/material.dart';

class RequestCloseFromScreen extends StatefulWidget {
  @override
  _UserInfoScreenState createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<RequestCloseFromScreen> {
  final TextEditingController resolutinmsgController = TextEditingController();
  final TextEditingController customerratingController =
      TextEditingController();
  final TextEditingController customerfeedbackController =
      TextEditingController();
  final TextEditingController laststatusController = TextEditingController();
  final TextEditingController servicecostController = TextEditingController();

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
            Text("Request"),
            SizedBox(
              height: 10,
            ),
            Text(
              "Request From ID: network",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            TextField(
              controller: resolutinmsgController,
              decoration: InputDecoration(
                labelText: 'Resolution Message',
              ),
            ),
            TextField(
              controller: customerratingController,
              decoration: InputDecoration(
                labelText: 'Customer Rating',
              ),
            ),
            TextField(
              controller: customerfeedbackController,
              decoration: InputDecoration(
                labelText: 'Customer Feedback',
              ),
            ),
            TextField(
              controller: laststatusController,
              decoration: InputDecoration(
                labelText: 'Last Status',
              ),
            ),
            TextField(
              controller: servicecostController,
              decoration: InputDecoration(
                labelText: 'Servive Cost',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // submitUserInfo();
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
