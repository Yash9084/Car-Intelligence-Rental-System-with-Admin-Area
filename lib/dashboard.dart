import 'package:flutter/material.dart';
import 'package:car_rental_app/utils/utils.dart';
import '../widgets/cars_grid.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text(
            'RentCar',
            style: SubHeading
          ),
        ),
        body: ListView(
          children: [
           Padding(
            padding: const EdgeInsets.all(8.0),
           child: Text(
              'Available Cars',
              style: MainHeading,
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarsGrid(),
            ),
          ],
        ),
      );
  }
}
