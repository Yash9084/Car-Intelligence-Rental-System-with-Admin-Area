import 'package:car_rental_app/screens/cars_overview.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(20),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) => CarsOverviewScreen())));
          },
          child: Text(
            'Last Screen',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}