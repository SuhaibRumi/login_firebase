import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../widgets/reuseable_widget.dart';
import 'screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _nameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            )),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            hexStringToColor('3548D8'),
            hexStringToColor('5E61D7'),
            hexStringToColor('5E61D7'),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  20, MediaQuery.of(context).size.height * 0.2, 20, 0),
              child: Column(children: [
                const SizedBox(
                  height: 20,
                ),
                reuseableTextField("Enter UserName", Icons.person_outlined,
                    false, _nameTextController),
                const SizedBox(
                  height: 20,
                ),
                reuseableTextField("Enter Email", Icons.person_outlined, false,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reuseableTextField("Enter Password", Icons.lock_outlined, false,
                    _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                reuseableButton(context, "Sign Up", () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                }),
              ]),
            ),
          ),
        ));
  }
}
