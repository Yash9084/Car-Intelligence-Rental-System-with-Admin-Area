import 'package:car_rental_app/screens/signin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import './screens/cars_overview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey='pk_test_51N1je9SCiSSomQNR5W3Yv7vwBQFAdvqgiuLZaasbrnvjPrGDXMsyHLjeAcL3a77iIn1cbl2Uglmbs4BlC7Ac4Sym00QPOVBwll';
  await Firebase.initializeApp();
  
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'okCar',
      theme: ThemeData(primaryColor: Colors.white, accentColor: Colors.purple),
      home: const SignInScreen(),
      
    );
  }
}
