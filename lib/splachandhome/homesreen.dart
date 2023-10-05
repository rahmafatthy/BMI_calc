import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(3, 4, 94, 1.0),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              child: Text("BMI",
                  style: TextStyle(
                    fontSize: 90,
                    color: Color.fromRGBO(202, 240, 248, 1.0),
                    fontWeight: FontWeight.bold,
                  ))),
          Container(
              child: Text("find your BMI",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromRGBO(202, 240, 248, 1.0),

                    fontStyle: FontStyle.italic,
                  )))
        ],
      )),
    );
  }
}
