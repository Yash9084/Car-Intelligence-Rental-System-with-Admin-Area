import 'package:car_rental_app/screens/cars_overview.dart';
import 'package:flutter/material.dart';

class SendFeedbackPage extends StatefulWidget {
  @override
  _SendFeedbackPageState createState() => _SendFeedbackPageState();
}

class _SendFeedbackPageState extends State<SendFeedbackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Feedback'),
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