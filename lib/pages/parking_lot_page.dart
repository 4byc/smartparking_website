import 'package:flutter/material.dart';

class ParkingLotPage extends StatelessWidget {
  const ParkingLotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parking Lot Page'),
      ),
      body: Center(
        child: Text('This is the Parking Lot Page'),
      ),
    );
  }
}
