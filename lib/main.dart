import 'package:flutter/material.dart';
//import 'package:nuhack/signup_page.dart';
import 'package:get/get.dart';
import 'package:qrplease/login_page.dart';
import 'package:qrplease/qrscan.dart';
import 'package:qrplease/welcomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Expo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: LoginPage()
       );
  }
}