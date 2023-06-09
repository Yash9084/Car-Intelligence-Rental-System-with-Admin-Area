import 'package:flutter/foundation.dart';

class CarItem {
  final String title;
  final double price;
  final String path;
  final String color;
  final String gearbox;
  final String fuel;
  final String brand;

  CarItem(
      {required this.title,
      required this.price,
      required this.path,
      required this.color,
      required this.gearbox,
      required this.fuel,
      required this.brand});
}

CarsList allCars = CarsList(cars: [
  CarItem(
      title: 'Honda Civic',
      price: 123,
      color: 'Grey',
      gearbox: '4',
      fuel: '4L',
      brand: 'Honda',
      path: 'assets/car1.jpg'),
  CarItem(
      title: 'Land Rover Evoque',
      price: 223,
      color: 'Grey',
      gearbox: '6',
      fuel: '19L',
      brand: 'Land Rover',
      path: 'assets/car2.jpg'),
  CarItem(
      title: 'Mercedes Benz SLS',
      price: 203,
      color: 'Red',
      gearbox: '5',
      fuel: '6L',
      brand: 'Mercedes',
      path: 'assets/car3.jpg'),
  CarItem(
      title: 'Audi A6',
      price: 190,
      color: 'Grey',
      gearbox: '5',
      fuel: '6L',
      brand: 'Audi',
      path: 'assets/car4.jpg'),
  CarItem(
      title: 'Jaguar XF',
      price: 200,
      color: 'White',
      gearbox: '6',
      fuel: '10L',
      brand: 'Jaguar',
      path: 'assets/car5.jpg'),
  CarItem(
      title: 'BMW E-1',
      price: 123,
      color: 'Grey',
      gearbox: '6',
      fuel: '6L',
      brand: 'BMW',
      path: 'assets/car6.jpg'),
]);

class CarsList {
  List<CarItem> cars;

  CarsList({required this.cars});
}