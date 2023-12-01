import 'package:flutter/material.dart';
import 'package:projects/phone.dart';
import 'package:projects/verify.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'phone',
    debugShowCheckedModeBanner: false,
    routes: {
      'phone': (context) => MyPhone(),
      'verify': (context) => MyVerify(),
      'otp':(context) => MyOtp()
    },
  ));
}
