

import 'package:flutter/material.dart';
import 'package:car_rental_app/screens/bookings.dart';

class Bookings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(20),
          ),
          onPressed: () {},
          child: Text(
            'Last Screen',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
