import 'package:bijack/screens/complete_profile/complete_profile_screen.dart';
import 'package:bijack/screens/forgot_password/forgot_password_screen.dart';
import 'package:bijack/screens/login_success/login_success_screen.dart';
import 'package:bijack/screens/otp_screen/otp/otp_screen.dart';
import 'package:bijack/screens/sign_in/sign_in.dart';
import 'package:bijack/screens/sign_up/sign_up_screen.dart';
import 'package:bijack/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
};
