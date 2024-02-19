import 'package:flutter/material.dart';
import 'package:saral_app/home_screen.dart';

class NetworkSetupScreen extends StatelessWidget {
  const NetworkSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Network Setup"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: [
              Card(
                margin: EdgeInsets.all(8),
                color: Colors.white,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Intercom",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      )
                    ]),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserInfoScreen()),
                  );
                },
                child: Card(
                  margin: EdgeInsets.all(8),
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      "Internet/Router",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(8),
                color: Colors.white,
                child: Center(
                  child: Text(
                    "Firewall and Security",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
