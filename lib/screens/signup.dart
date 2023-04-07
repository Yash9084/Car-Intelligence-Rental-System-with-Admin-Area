import 'package:car_rental_app/screens/cars_overview.dart';
import 'package:flutter/material.dart';

import '../reusable_wiidgets.dart/reusable_widget.dart';
import '../utils/color.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Sign Up", style: TextStyle(
          fontSize: 24,fontWeight: FontWeight.bold
        ),
        ),
      ),
    body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              hexStringToColor("CB2B93"),
              hexStringToColor("9546C4"),
              hexStringToColor("5E61F4"),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),),
             child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.fromLTRB(20,220,20,250),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  width: double.infinity,
                  height: 50,
                ),
                reusableTextField("Enter Username", Icons.person_outline, false,
                    _userNameTextController),
                SizedBox(
                  width: double.infinity,
                  height: 20,
                ),
                reusableTextField("Enter Username", Icons.person_outline, true,
                    _emailTextController),
                SizedBox(
                  width: double.infinity,
                  height: 20,
                ),reusableTextField("Enter Password", Icons.lock_outline, true,
                    _passwordTextController),
                     SizedBox(
                  width: double.infinity,
                  height: 20,
                ),
                signInSignUpButton(context, false, () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CarsOverviewScreen(),));
                }),
              ],
          ), 
              ))),
    );
  }
}