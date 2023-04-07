import 'package:car_rental_app/screens/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:car_rental_app/utils/utils.dart';
import '../widgets/cars_grid.dart';
import 'package:car_rental_app/screens/main_drawer.dart';

class CarsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text(
            'Dashboard',
            style: SubHeading
          ),
        ),
        drawer: MainDrawer(),
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
