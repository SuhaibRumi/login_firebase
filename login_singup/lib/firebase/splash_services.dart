import 'dart:async';
import 'package:flutter/material.dart';
import 'package:login_singup/view/screen.dart';

class SplashServices {
  isLogin(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (_) => const SignInScreen())));
  }
}
