import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        child: const Text("Logout"),
        onPressed: () {
          FirebaseAuth.instance.signOut().then((value) {
            print("signout");
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (
                  context,
                ) =>
                        const SignInScreen()));
          });
        },
      ),
    ));
  }
}
