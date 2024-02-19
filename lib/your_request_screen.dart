import 'package:flutter/material.dart';
import 'package:saral_app/drawer.dart';
import 'package:saral_app/network_setup_screen.dart';
import 'package:saral_app/request_close_from_screen.dart';

class YourRequestScreen extends StatelessWidget {
  const YourRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Request"),
      ),
      drawer: DrawerWidget(),
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
                      Icon(
                        Icons.computer_sharp,
                        color: Colors.brown,
                        size: 35,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "IT Services",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ]),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RequestCloseFromScreen()),
                  );
                },
                child: Card(
                  margin: EdgeInsets.all(8),
                  color: Colors.white,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.network_check,
                          size: 35,
                          color: Colors.brown,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Network Setup",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ]),
                ),
              ),
              Card(
                margin: EdgeInsets.all(8),
                color: Colors.white,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.security,
                        color: Colors.brown,
                        size: 35,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "IT Security",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ]),
              ),
              Card(
                margin: EdgeInsets.all(8),
                color: Colors.white,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.sell_outlined,
                        color: Colors.brown,
                        size: 35,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Buy and Sell",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ]),
              ),
              Card(
                margin: EdgeInsets.all(8),
                color: Colors.white,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.handyman_rounded,
                        color: Colors.brown,
                        size: 35,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Hardware",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ]),
              ),
              Card(
                margin: EdgeInsets.all(8),
                color: Colors.white,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_2_rounded,
                        color: Colors.brown,
                        size: 35,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Hiring",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ]),
              ),
            ]),
      ),
    );
  }
}
