import 'package:bijack/screens/otp_screen/otp/otpmain/login.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
      ),
      body: LoginScreen(),
    );
  }
}
