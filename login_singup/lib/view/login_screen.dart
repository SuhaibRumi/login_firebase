import 'package:flutter/material.dart';
import 'package:login_singup/view/rest_password_screen.dart';
import '../utils/colors.dart';
import '../widgets/reuseable_widget.dart';
import 'screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                hexStringToColor('3548D8'),
                hexStringToColor('5E61D7'),
                hexStringToColor('5E61D7'),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    20, MediaQuery.of(context).size.height * 0.2, 20, 0),
                child: Column(
                  children: [
                    logoImg("assets/login.png"),
                    const SizedBox(
                      height: 30,
                    ),
                    reuseableTextField("Enter UserName", Icons.person_outlined, false,
                        _emailTextController),
                    const SizedBox(
                      height: 20,
                    ),
                    reuseableTextField("Enter Password", Icons.lock_outlined, false,
                        _passwordTextController),
                    const SizedBox(
                      height: 8,
                    ),
                    forgetPassword(context),
                    reuseableButton(context, 'Login', () {}),
                    signUpOption(),
                  ],
                ),
              ),
            )),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have account?",
          style: TextStyle(color: Colors.white70),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (
                  ontext,
                ) =>
                        const SignUpScreen()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget forgetPassword(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      alignment: Alignment.bottomRight,
      child: TextButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (_) => const RestPassword())),
          child: const Text(
            "Forgot Password?",
            style: TextStyle(color: Colors.white70, fontSize: 15),
            textAlign: TextAlign.right,
          )),
    );
  }
}
