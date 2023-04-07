import 'package:car_rental_app/screens/cars_overview.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
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