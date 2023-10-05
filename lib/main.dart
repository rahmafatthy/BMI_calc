import 'package:flutter/material.dart';
import 'package:untitled5/result/result.dart';
import 'package:untitled5/splachandhome/homesreen.dart';
import 'package:untitled5/splachandhome/login.dart';
import 'package:untitled5/splachandhome/splashscreen.dart';

import 'choices/choose.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}
