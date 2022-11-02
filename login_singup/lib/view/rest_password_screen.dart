import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../widgets/reuseable_widget.dart';

class RestPassword extends StatefulWidget {
  const RestPassword({Key? key}) : super(key: key);

  @override
  State<RestPassword> createState() => _RestPasswordState();
}

class _RestPasswordState extends State<RestPassword> {
  final TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text(
              "Rest Password ",
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
                reuseableTextField("Enter Email", Icons.person_outlined, false,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reuseableButton(context, "Rest Password", () {})
              ]),
            ),
          ),
        ));
  }
}
